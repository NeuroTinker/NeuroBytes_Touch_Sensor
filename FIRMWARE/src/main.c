#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>


#include "comm.h"
#include "HAL.h"
#include "neuron.h"

#define BLINK_TIME			100
#define DATA_TIME			10
#define DEND_PING_TIME		200 // 1000 ms
#define	NID_PING_TIME		200 // 1000 ms
#define SEND_PING_TIME		80
#define BUTTON_PRESS_TIME	3
#define FIRE_LED_TIME		10
#define	DEBOUNCE_TIME		3

static uint32_t fingerprint[3] __attribute__((section (".fingerprint"))) __attribute__ ((__used__)) = {
	5, // device id
	1, // firmware version
	0  // unique id
};

int main(void)
{
	uint32_t	blink_time = 0;
	uint32_t	wait_time = 0;
	uint16_t	data_time = 0;
	uint16_t	message_data = 0;
	uint16_t	send_ping_time = 0;
	uint16_t	button_press_time = 0;
	uint8_t		button_armed = 0;
	uint16_t	button_status = 0;
	uint32_t	nid_channel = 0b000;
	uint32_t	message = 0;
	uint32_t	button_potential =0;
	uint32_t	debounce_time = 0;
	uint32_t	decay_time = 0;

	uint16_t	fire_delay_time = 0;
	uint8_t		fire_flag = 0;

	neuron_t 	neuron;
	uint8_t		i;
	neuronInit(&neuron);
	commInit();

	clock_setup();
	gpio_setup();
	tim_setup();
	gpio_setup();
	setLED(200,0,0);
	systick_setup(100000);
	
	for(;;)
	{

		if (main_tick == 1){
			// 5 ms
			main_tick = 0;		
			
			if (nid_ping_time == 0){
				nid_keep_alive = NID_PING_KEEP_ALIVE;
				nid_pin = 0;
				nid_pin_out = 0;
			}else {
				nid_ping_time -= 1;
			}
			
			if (send_ping_time++ > SEND_PING_TIME){
				addWrite(DOWNSTREAM_BUFF, DEND_PING);
				send_ping_time = 0;
			}
			
			button_status = gpio_get(PORT_BUTTON, PIN_BUTTON);
			
			if (button_status == 0){
				if (button_press_time++ >= BUTTON_PRESS_TIME){
					button_armed = 1;
				} else {
					button_armed = 0;
				}
			} else{
				button_armed = 0;
			}

			if (button_armed == 1){
				neuron.dendrites[0].state = ON;
			} else{
				if (button_press_time != 0){
					if (debounce_time++ >= DEBOUNCE_TIME){
						dendriteSwitchOff(&(neuron.dendrites[0]));
						debounce_time = 0;
						button_press_time = 0;
					}
					
				}
			}
			
			if (nid_channel != 0){
				if (data_time++ > DATA_TIME){
					data_time = 0;
					message = DATA_MESSAGE | (uint16_t) neuron.potential | (nid_channel << 19) | (nid_keep_alive << 22);
					addWrite(NID_BUFF,message);
				}
			}
			
			if (neuron.potential >= MEMBRANE_THRESHOLD && neuron.state == INTEGRATE){
				neuron.state = FIRE;
				neuron.fire_potential = HYPERPOLARIZATION;
				neuron.fire_time = PULSE_LENGTH;
				for (i=0; i<DENDRITE_COUNT; i++){
					neuron.dendrites[i].current_value = 0;
					neuron.dendrites[i].state = OFF;
				}
				// send downstream pulse
				fire_delay_time = FIRE_DELAY_TIME;
				fire_flag = 1;
			}

			if (fire_delay_time > 0){
				fire_delay_time -= 1;
			} else if (fire_flag == 1){
				fire_flag = 0;
				addWrite(DOWNSTREAM_BUFF, PULSE_MESSAGE);
			}

			if (++decay_time >= DECAY_TIME){
				decay_time = 0;
				dendriteDecayStep(&neuron);
				membraneDecayStep(&neuron);
			}

			neuron.potential = calcNeuronPotential(&neuron);
			neuron.potential += neuron.fire_potential;

			if (blink_flag != 0){
				setLED(200,0,300);
				blink_time = 1;
				blink_flag = 0;
			} else if (blink_time > 0){
				if (++blink_time == BLINK_TIME){
					setLED(200,0,0);
					blink_time = 0;
				}
			} else if (neuron.state == FIRE){
				neuron.fire_time -= 1;
				if (neuron.fire_time == 0){
					neuron.state = INTEGRATE;
				}
				if (neuron.fire_time >= (PULSE_LENGTH - FIRE_RED_TIME)){

					setLED(300,0,0);
				} else if (neuron.fire_time >= (PULSE_LENGTH - FIRE_WHITE_TIME)){
					LEDFullWhite();
				} else {
					if (neuron.potential > 140){
						setLED(200,0,0);
					} else if (neuron.potential > 0){
						setLED(neuron.potential * 10 / 7, 200 - (neuron.potential * 10 / 7), 0);
					} else if (neuron.potential < -140){
						setLED(0,0, -1 * neuron.potential * 10 / 7);
					} else if (neuron.potential < 0 && neuron.potential > -140){
						setLED(0, 200 + (neuron.potential * 10 / 7), -1 * neuron.potential * 10 / 7);
					} else{
						setLED(100,200,0);
					}
				}
			} else if (neuron.state == INTEGRATE){
				if (neuron.potential > 140){
						setLED(200,0,0);
					} else if (neuron.potential > 0){
						setLED(neuron.potential * 10 / 7, 200 - (neuron.potential * 10 / 7), 0);
					} else if (neuron.potential < -140){
						setLED(0,0, -1 * neuron.potential * 10 / 7);
					} else if (neuron.potential < 0 && neuron.potential > -140){
						setLED(0, 200 + (neuron.potential * 10 / 7), -1 * neuron.potential * 10 / 7);
					} else{
						setLED(0,200,0);
					}
			}
		}
	}
}
