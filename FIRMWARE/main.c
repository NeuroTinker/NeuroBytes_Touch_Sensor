#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>

#include "HAL.h"

int main(void)
{
	clock_setup();
	systick_setup(10);
	gpio_setup();
	tim_setup();
	nvic_setup();
	setLED(1023,1023,1023);
	for(;;)
	{
	}
}
