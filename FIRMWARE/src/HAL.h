#ifndef HAL_H_
#define HAL_H_

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>

#include "comm.h"

#define PORT_LED		GPIOA
#define PIN_R_LED		GPIO0
#define PIN_G_LED		GPIO1
#define PIN_B_LED		GPIO2

#define PORT_IDENTIFY	GPIOB
#define PIN_IDENTIFY	GPIO0

#define PORT_BUTTON     GPIOB
#define PIN_BUTTON      GPIO1

#define PORT_AXON1_IN    GPIOA
#define PORT_AXON1_EX   GPIOA
#define PORT_AXON2_IN   GPIOA
#define PORT_AXON2_EX   GPIOA


#define PIN_AXON1_IN     GPIO3
#define PIN_AXON1_EX    GPIO4
#define PIN_AXON2_IN    GPIO5
#define PIN_AXON2_EX    GPIO6


extern volatile uint8_t main_tick;
extern volatile uint8_t tick;
static const uint16_t gamma_lookup[1024];


// uint8_t     read_time = 0;


void systick_setup(int xms);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void LEDFullWhite(void);
void setLED(uint16_t r, uint16_t g, uint16_t b);
void setAsInput(uint32_t port, uint32_t pin);
void setAsOutput(uint32_t port, uint32_t pin);


//void tim2_isr(void);

//extern volatile unsigned char ms_tick;

#endif