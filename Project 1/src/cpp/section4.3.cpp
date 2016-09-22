// $DISCLAIMER$

// $Id$

/*****************************************************************//**
 * @file main_vanilla_test.cpp
 *
 * @brief Basic test of io_in, io_out, timer, uart cores
 * and debug() function.
 *
 * $Author$ C. A. Snyder
 *          R. Libertini
 *          T. Sullivan
 * $Date$   09/12/2016
 * $Revision$ 2
 *********************************************************************/

//#define _DEBUG
#include "chu_init.h"
#include "gpio_cores.h"

/**
 * flash all leds every 30 ms or 200 ms depending on switch value
 */
void flash(GpoCore *led_p, GpiCore *sw_p){
   int i, time;

   //check switch 0
   i = sw_p->read();
   i = (0x00000001) & i;

   //set time (in ms) based on switch 0
   time = (i == 1)? 30:200;

   //flash leds then sleep
   led_p->write(0x0000ffff);
   sleep_ms(time);
   led_p->write(0x00000000);
   sleep_ms(time);

}

/**
 * uart transmits test line.
 * @note uart instance is declared as global variable in chu_io_basic.h
 */
void uart_check(GpiCore *sw_p) {
   //static int loop = 0;

   int s;


   //read the switch and pick which msg to display
   s = sw_p->read();

   //string msg; --didn't work
   //msg = (s == 1)? "LED Currently Blinks Fast":"LED Currently Blinks Slow";
   //uart.disp(msg);

   if(s == 1){
	   uart.disp("LED Currently Blinks Fast");
   } else {
	   uart.disp("LED Currently Blinks Slow");
   }

   uart.disp("\n\r");

   //loop++;
}

// instantiate switch, led
// XXX use lots of memory in "text" if placed inside main, why?
GpoCore led(get_slot_addr(BRIDGE_BASE, S2_LED));
GpiCore sw(get_slot_addr(BRIDGE_BASE, S3_SW));

int main() {

   while (1) {
      flash(&led, &sw);
      uart_check(&sw);
   } //while
} //main



