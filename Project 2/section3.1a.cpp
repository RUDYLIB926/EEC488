// $DISCLAIMER$

// $Id$

/*****************************************************************//**
 * @file section3.2c.cpp
 *
 * @brief collision led.
 *
 * $Author$ C. A. Snyder
 *          R. Libertini
 *          T. Sullivan
 * $Date$   09/21/2016
 * $Revision$ 2
 *
 * $note
 *	this is not what i submitted for grade
 *	i actually didn't submit anything for 3.1c because it was bonus
 *  HOWEVER!
 * 	i'm doing it and putting it up on github because why not
 *********************************************************************/

//#define _DEBUG
#include "chu_init.h"
#include "gpio_cores.h"


//globals for keeping track of when the speed changes
//mimicking current state / next state logic
int currL, currR; 	//current (left) and current (right)
int prvL, prvR; 	//previous (left) and previous (right)


/**
* check switches for a given led
* @param sw_p pointer to switch instance
* @param a, b, c, d group of switches being checked
* 	sw2 - sw5 for right LED
* 	sw6 - sw9 for left LED
* @return speed in ms (int)
*/

int switch_check(GpiCore *sw_p, int a, int b, int c, int d){

	//switches
	int sw1, sw2, sw3, sw4, curr;

 	// ABCD are there to tell which group of 
 	// switches to check 

 	//read the switches
	sw1 = sw_p->read(a); 		//fast 			(50ms)
	sw2 = sw_p->read(b); 		//slower 		(100ms)
	sw3 = sw_p->read(c); 		//sloweer er 	(200ms)
	sw4 = sw_p->read(c); 		//slowest 	 	(400ms)

	//if structure:
	//1) if switch is on set the currL or currR global 
	//2) fastest switch takes priority 
	//		(incidental, i'm too lazy to not make it work this way)
	//3) if no switches are on default to 1 second (1000 ms)
	if(sw1 == 1){
		curr = 50;
	} else if (sw2 == 1){
		curr = 100;
	} else if (sw3 == 1){
		curr = 200;
	} else if (sw4 ==1){
		curr = 400;
	} else {
		curr = 1000;
	}

	//simple check for left or right LED
	//there's probably better ways to do this
	//but uhh...i wrote the code i know 2 means it's right
	//and a != 2 means it's left
	if(a == 2){
		currR = curr;
	} else {
		currL = curr;
	}

	return curr;
}


//right direction
//left direction
//for collision handling
bool r_Dir;
bool l_Dir;

/**
* check individual led
* @param led_p pointer to led instance
* @param spd speed of the chase
* @param n number of led
* @param sw_p pointer to switch instance
*/
void led_check(GpoCore *led_p, GpiCore *sw_p) {

 	//initial LED speed check
 	int right_speed = switch_check(sw_p, 2, 3, 4, 5);
 	int left_speed = switch_check(sw_p, 6, 7, 8, 9);

 	//checking the initialize switches (Switches 0 and 1)
 	int right_init = sw_p->read(0);
 	int left_init = sw_p->read(1);

 	//location of the LEDs
 	//for the loop
 	int right_loc;
 	int left_loc;

 	//if the initialize switch is on for the right
 	//turn on LED 0
 	if(right_init == 1){
 		led_p->write(1,0);
 		right_loc = 0;
 		right_init = sw_p->read(0);
 	}

 	//if the initialize switch is on for the left
 	//turn on LED 15
 	if(left_init == 1){
 		led_p->write(15,0);
 		left_loc = 15;
 		left_init = sw_p->read(1);
 	}

 	//generic int i
 	int i;

 	for(i = 0; i < 16; i ++){

 		//right side
 		led_p -> write(1, right_loc);
 		sleep_ms(right_speed);
 		led_p -> write(0, right_loc);
 		sleep_ms(right_speed);
 		right_speed = switch_check(sw_p, 2, 3, 4, 5);
 		if(sw_p->read(0) != 0){

 			//reset right loc
 			//for collision
 			//handling
 			right_loc = 0; 

 			break;
 		}

 		//left side
 		led_p -> write(1, left_loc);
 		sleep_ms(left_speed);
 		led_p -> write(0, left_loc);
 		sleep_ms(left_speed);
 		left_speed = switch_check(sw_p, 6, 7, 8, 9);
 		if(sw_p->read(1) != 0){
 			left_loc = 15;
 			break;
 		}

 		//if the next value for right and left
 		//is equal to each other
 		//that's a collision
 		bool collision = ((right_loc + 1) == (left_loc -1)) || ((right_loc - 1) == (left_loc + 1));
 		bool r_eol = (right_loc == 0);
 		bool l_eol = (left_loc == 15);

 		if(collision && !r_eol && !l_eol){
 			right_loc--;
 			left_loc++;
 		}

 		if(r_eol){
 			right_loc++;
 		}

 		if(l_eol){
 			left_loc--;
 		}

 		i++;
 	}
}

// instantiate switch, led
// XXX use lots of memory in "text" if placed inside main, why?
 GpoCore led(get_slot_addr(BRIDGE_BASE, S2_LED));
 GpiCore sw(get_slot_addr(BRIDGE_BASE, S3_SW));

 int main() {

 	while (1) {
 		led_check(&led,&sw);
   	} 
} 
