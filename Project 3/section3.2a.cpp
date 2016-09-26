// $DISCLAIMER$

// $Id$

/*****************************************************************//**
 * @file section3.1a.cpp
 *
 * @brief display system up time on the console in mm:ss format
 *
 * $Author$ C. A. Snyder
 *          R. Libertini
 *          T. Sullivan
 *
 * $Date$   09/25/2016
 *
 * $Revision$ 5
 *********************************************************************/

//#define _DEBUG
#include "chu_init.h"
#include "gpio_cores.h"

/*
 * uart transmits system time
 */
void uart_chk(int startMin, int startSec) {
	int clk, min, sec, chk;
	clk = now_ms();		//Current time
	sec = clk / 1000; 	//Seconds
	min = clk / 60000; 	//Minutes
	chk = sec % 60; 	//Check to see if 60 seconds

	sec = sec + startSec;
	min = min + startMin;

	//Reset seconds once they get to 60
	if (chk % 60 == 0) {
		chk = 0;
	}

	uart.disp("Up time - ");

	//Check if minutes is less than 10. If so, add a zero before the number
	if (min < 10) {
		uart.disp("0");
	}

	uart.disp(min); //Display minutes
	uart.disp(":");

	//Check if seconds is less than 10. If so, add a zero before the number
	if (chk < 10) {
		uart.disp("0");
	}

	uart.disp(chk); //Display seconds
	uart.disp("\r");
}

int main() {

	int minutes, seconds;
	uart.disp("enter the starting minutes: ");
	while (rx_fifo_empty()){
	minutes = uart.rx_byte();
	}
	while (rx_fifo_empt())){
	uart.disp("enter the starting seconds: ");
	seconds = uart.rx_byte();
	}

   while (1) {
	   uart_chk(minutes,seconds);
   }

}
