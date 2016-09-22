// $DISCLAIMER$

// $Id$

/*****************************************************************//**
 * @file gpio_cores.h
 *
 * @brief contain classes of simple i/o related cores
 *
 * Detailed description:
 * -
 *
 * $Author$
 * $Date$
 * $Revision$
 ********************************************************************/
#ifndef _GPIO_H_INCLUDED
#define _GPIO_H_INCLUDED

#include "chu_init.h"

/**********************************************************************
 * gpi (general-purpose input) core
 **********************************************************************/
/**
 *  gpi (general-purpose input) core
 */
class GpiCore {
   /* register map */
   enum {
      DATA_REG = 0 /**< input data register */
   };
public:
   /**
    * Constructor.
    *
    */
   GpiCore(uint32_t core_base_addr);
   ~GpiCore();                  // not used

   /* methods */
   /**
    * read a 32-bit word
    *
    * @param
    *
    */
   uint32_t read();

   /**
    * read a bit at a specific position
    *
    * @param bit_pos bit position
    *
    */
   int read(int bit_pos);

private:
   uint32_t base_addr;
};

/**********************************************************************
 * gpo (general-purpose output) core
 **********************************************************************/
/**
 *  gpo (general-purpose output) core
 */
class GpoCore {
   /* register map */
   enum {
      DATA_REG = 0 /**< output data register */
   };
public:
   GpoCore(uint32_t core_base_addr);
   ~GpoCore();                  // not used

   /**
    * write a 32-bit word
    *
    * @param
    *
    */
   void write(uint32_t data);

   /**
    * write a bit at a specific position
    *
    * @param bit_value value
    * @param bit_pos bit position
    *
    */
   void write(int bit_value, int bit_pos);

private:
   uint32_t base_addr;
   uint32_t wr_data;      //  //same as GPO core data reg
};

/**********************************************************************
 * pwm core
 * float type not working but double is fine WHY?
 **********************************************************************/
/**
 *  pwm (pulse width modulation) core
 */
class PwmCore {
   enum {
      DVSR_REG = 0,
      DUTY_REG_BASE = 0x10
   };
   enum {
      RESOLUTION_BITS = 10, // # resolution bits defined in HDL
      MAX = 1 << RESOLUTION_BITS // # max levels in duty cycle = 2^ESOLUTION_BITS; 100% duty cycle
   };public:
   /**
    * Constructor.
    *
    */
   PwmCore(uint32_t core_base_addr);
   ~PwmCore();

   /* methods */
   /**
    * set pwm switching frequency
    *
    * @param freq pwm switching frequency
    *
    */
   void set_freq(int freq);

   /**
    * set duty cycle in unsigned format (between 0 amd MAX)
    *
    * @param duty duty cycle (between 0 amd MAX)
    * @param channel pwm channel number
    *
    */
   void set_duty(int duty, int channel);

   /**
    * set duty cycle in real format (between 0.0 amd 1.0)
    *
    * @param duty duty cycle (between 0.0 amd 1.0)
    * @param channel pwm channel number
    *
    */
   void set_duty(double f, int channel);

private:
   uint32_t base_addr;
   uint32_t freq;

};


/**********************************************************************
 * Debouce core
 **********************************************************************/
/**
 *  debounce core
 *  - read() methods givesame result as GPI
 */
class DebounceCore {
   /* register map */
   enum {
      NORMAL_DATA_REG = 0, /**< un-treated input data register */
      DB_DATA_REG = 1      /**< debounced input data register */
   };
public:
   /**
    * Constructor.
    *
    */
   DebounceCore(uint32_t core_base_addr);
   ~DebounceCore();                  // not used

   /* methods */
   /**
    * read a 32-bit normal word
    *
    * @param
    *
    */
   uint32_t read();

   /**
    * read a normal bit at a specific position
    *
    * @param bit_pos bit position
    *
    */
   int read(int bit_pos);

   /**
    * read a 32-bit debounced word
    *
    * @param
    *
    */
   uint32_t read_db();

   /**
    * read a debounced bit at a specific position
    *
    * @param bit_pos bit position
    *
    */
   int read_db(int bit_pos);
private:
   uint32_t base_addr;
};


#endif  // _GPIO_H_INCLUDED
