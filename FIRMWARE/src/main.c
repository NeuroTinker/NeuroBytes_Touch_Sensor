#define BUFSIZ 32

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/usart.h>

#include "HAL.h"
#include "comm.h"
#include "neuron.h"

#define BLINK_TIME			40
#define DATA_TIME			10
#define DEND_PING_TIME		200 // 1000 ms
#define	NID_PING_TIME		200 // 1000 ms
#define SEND_PING_TIME		80
#define BUTTON_PRESS_TIME	2
#define BUTTON_HOLD_TIME    100
#define LPUART_SETUP_TIME	100
#define CHANGE_NID_TIME 	200
#define MECHANORECEPTOR_PRESS_TIME	2
#define MECHANORECEPTOR_ADAPT_START	35
#define MECHANORECEPTOR_ADAPT_END	150

#define DBG

int main(void)
{
	uint8_t		i;

	// counters
	uint32_t	blink_time = 0; // counter for LED blink due to NID command
	uint16_t	data_time = 0; // counter for sending data to NID
	uint16_t	send_ping_time = 0; // counter for sending a downstream ping
	uint16_t	fire_delay_time = 0;
	int16_t 	depression_time = 0;
	uint8_t		fire_flag = 0;
	uint8_t		change_nid_time = 0;
	int16_t		fire_data = 0; // hack to make sure a pulse sends peak neuron potential and hyperpolarization  data
	uint16_t	fire_delay_time_reset = FIRE_DELAY_TIME;
	fire_delay_time_reset = 40; // temporary
	uint16_t	fire_delay_overflow = 0; // used if firing period is less than delay time.
	uint16_t	lpuart_setup_time = 0;

	// button debounce variables
	uint16_t	button_press_time = 0; 
	uint8_t		button_armed = 0;
	uint16_t	button_status = 0;

	uint16_t	mechanoreceptor_press_time = 0;
	uint16_t	mechanoreceptor_status = 0;
	uint32_t	mechanoreceptor_adapt_count = 0;
	uint32_t 	mechanoreceptor_adapt_reset = 0;

	message_t	message; // staging variable for constructing messages to send to the communications routine

	int32_t joegenta = 0;

	//char output[10] = "test";

	// initialize neuron
	neuron_t 	neuron;
	neuronInit(&neuron);

	neuron.dendrites[0].magnitude = 15000;
	neuron.dendrites[0].base_magnitude = 15000;

	// initialize communication buffers
	commInit();

	// setup hardware
	clock_setup();
	systick_setup(); // systick in microseconds
	gpio_setup();
	tim_setup();

	// main processing routine	
	for(;;)
	{
		if (main_tick == 1 && pause_flag == 0){
			// main tick every 5 ms
			main_tick = 0;
			//gpio_set(PORT_AXON1_EX, PIN_AXON1_EX);

			// check to see if nid ping hasn't been received in last NID_PING_TIME ticks
			if (nid_ping_time > 0){
				nid_ping_time -= 1;
				if (nid_ping_time == 0){
					// nid no longer connected
					nid_distance = 100; // reset nid_keep_alive
					nid_pin = 0; // clear the nid pin
					nid_pin_out = 0;
					nid_i = NO_NID_I;
				}
			}
			
			if (change_nid_time++ > CHANGE_NID_TIME){
				change_nid_time = 0;
				closer_distance = nid_distance;
				closer_ping_count = 0;
			}

			// send a downstream ping every SEND_PING_TIME ticks
			if (send_ping_time++ > SEND_PING_TIME){
				// send downstream ping through axon
				addWrite(DOWNSTREAM_BUFF, downstream_ping_message);
				send_ping_time = 0;
			}

			if (lpuart_setup_time < LPUART_SETUP_TIME){
				lpuart_setup_time += 1;
			} else if (lpuart_setup_time == LPUART_SETUP_TIME){
				lpuart_setup_time += 1;
				#ifndef DBG
				lpuart_setup();
				#endif
			}

			/*
				nid_channel is the current channel, if any, that the NeuroByte is using to communicate
				with the NID. nid_channel should be cleared when NID tries to set a new NeuroByte to 
				identify_channel.

				The communication routine sets identify_time to zero when a new identify command is received.
			*/

			// check for clear channel command
			if (identify_time < IDENTIFY_TIME){
				if (identify_time == 0){
					if ((identify_channel == 0) || (identify_channel == nid_channel)){
						nid_channel = 0;
					}
				}
				identify_time += 1;
			}

			// check buttons
			button_status = gpio_get(PORT_IDENTIFY, PIN_IDENTIFY); 
			mechanoreceptor_status = gpio_get(PORT_MECHANORECEPTOR, PIN_MECHANORECEPTOR);

			// if identify button is pressed and identify_time < IDENTIFY_TIME (i.e. NID sent 'identify'' message), set new nid_channel
			if (button_status == 0){
				// debounce
				button_press_time += 1;
				if (button_press_time >= BUTTON_HOLD_TIME){
					button_armed = 2;
					// blink_flag = 1;
				} else if (button_press_time >= BUTTON_PRESS_TIME){
					button_armed = 1;
				}
			} else{
				// button not pressed
				if (button_armed == 0){
					button_press_time = 0;
				} else if (button_armed == 1 && nid_i != NO_NID_I){
					nid_channel = identify_channel;
					message.length = 32;
					message.message = (((uint32_t) DATA_TYPE_MESSAGE) | (((uint32_t) nid_channel) << 22));
					message.message |=  ((const uint16_t) (getFingerprint()));
					addWrite(NID_BUFF, (const message_t) message);
					identify_time = 1;
					button_armed = 0;
				} else if (button_armed == 2){
					// put button held logic here
					button_armed = 0;
				}
				button_press_time = 0;
			}
		
			if (mechanoreceptor_status == 0){
				//debounce
				mechanoreceptor_press_time += 1;
				if (mechanoreceptor_press_time >= MECHANORECEPTOR_PRESS_TIME){
					if (mechanoreceptor_adapt_count == 0) {
						neuron.dendrites[0].type = EXCITATORY;
						neuron.dendrites[0].state = ON;
						neuron.dendrites[0].pulse_time = 0;	
					}
					mechanoreceptor_adapt_count++;
					if (mechanoreceptor_adapt_count > mechanoreceptor_adapt_reset) {
						mechanoreceptor_adapt_count = 0;
						if (mechanoreceptor_adapt_reset < MECHANORECEPTOR_ADAPT_END) {
							mechanoreceptor_adapt_reset <<= 4;
							mechanoreceptor_adapt_reset /= 15;
						}
					}			
				}	
			} else{
				mechanoreceptor_adapt_reset = MECHANORECEPTOR_ADAPT_START;
				mechanoreceptor_adapt_count = 0;
				mechanoreceptor_press_time = 0;
			}	

			// send current membrane potential to NID if currently identified by NID
			if (nid_channel != 0){
				// send data every DATA_TIME ticks
				if (data_time++ > DATA_TIME){
					if (fire_data > 0){
						if (fire_data == 1){
							message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) HYPERPOLARIZATION);
							fire_data = 0;						
						} else {
							message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) fire_data);	
							fire_data = 1;						
						}
					} else {
						message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) neuron.potential);						
					}
					data_time = 0;
					message.length = 32;
					message.message |= (nid_channel << 22);
					addWrite(NID_BUFF,(const message_t) message);
				}
			}

			// decay old dendrite contributions to the membrane potential
			dendriteDecayStep(&neuron);
			// decay the firing potential
			membraneDecayStep(&neuron);

			// current membrane potential comes from dendrites and any left over firing potential
			neuron.potential = calcNeuronPotential(&neuron);
			neuron.potential += neuron.fire_potential;
			neuron.fire_potential += neuron.leaky_current;

			// if membrane potential is greater than threshold, fire
			if (neuron.potential > MEMBRANE_THRESHOLD){
				// fire for determined pulse width
				neuron.state = FIRE;
				neuron.fire_potential = HYPERPOLARIZATION;
				neuron.fire_time = PULSE_LENGTH;
				for (i=0; i<NUM_DENDS; i++){
					neuron.dendrites[i].current_value = 0;
					neuron.dendrites[i].state = OFF;
				}

				fire_data = neuron.potential; // hack to send fire data to NID

				// send downstream pulse
				if (fire_delay_time == 0){
					fire_delay_time = fire_delay_time_reset;
					fire_delay_overflow = 0;
				} else {
					fire_delay_overflow = fire_delay_time_reset - fire_delay_time;
				}
				fire_flag = 1;
			} else if (neuron.potential < HYPERPOLARIZATION) {
				neuron.potential = HYPERPOLARIZATION;
			}

			if (fire_delay_time > 0){
				fire_delay_time -= 1;
			} else if (fire_flag == 1){
				if (fire_delay_overflow > 0)
					fire_delay_time = fire_delay_overflow; // TODO: make this an actual FIFO buffer of fire timings
				fire_flag = 0;
				addWrite(DOWNSTREAM_BUFF, pulse_message);
			}

			/*
				LED is either:
				-blinking due to NID message (blink_flag is set)
				-full white if neuron is firing
				-in an RGB state mapped to membrane potential
			*/
			
			if (blink_flag != 0){
				setLED(200,0,300);
				blink_time = 1;
				blink_flag = 0;
			} else if (blink_time > 0){
				if (++blink_time == BLINK_TIME){
					setLED(200,0,200);
					blink_time = 0;
				}
			} else if (neuron.state == FIRE){
				neuron.fire_time -= 1;
				if (neuron.fire_time == 0){
					neuron.state = INTEGRATE;
				}
				if (neuron.learning_state == HEBB){
					// needs to vary between 50 and 320
					joegenta /= 256;
					joegenta *= 3;
					joegenta += 100;
					if (joegenta > 350) joegenta = 350;
					setLED(joegenta, joegenta, joegenta);
				} else{
					LEDFullWhite();
				}
			} else if (neuron.state == INTEGRATE){
				if (neuron.potential > 10000){
					setLED(200,0,0);
				} else if (neuron.potential > 0){
					setLED(neuron.potential / 50, 200 - (neuron.potential / 50), 0);
				} else if (neuron.potential < -10000){
					setLED(0,0, 200);
				} else if (neuron.potential < 0){
					setLED(0, 200 + (neuron.potential / 50), -1 * neuron.potential / 50);
				} else{
					setLED(0,200,0);
				}
			}
		}
	}
}
