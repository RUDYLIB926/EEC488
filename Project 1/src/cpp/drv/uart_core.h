#ifndef _UART_CORE_H_INCLUDED
#define _UART_CORE_H_INCLUDED

#include "chu_io_rw.h"
#include "chu_io_map.h"  // to use SYS_CLK_FREQ
class UartCore {
   /* register map */
   enum {
      RD_DATA_REG = 0,
      DVSR_REG = 1,
      WR_DATA_REG = 2,
      RM_RD_DATA_REG = 3  // remove read data
   };
   /* masks */
   enum {
      TX_FULL_FIELD = 0x00000200, /**< bit 9 of rd_data_reg; full bit  */
      RX_EMPT_FIELD = 0x00000100, /**< bit 10 of rd_data_reg; empty bit */
      RX_DATA_FIELD = 0x000000ff  /**< bits 7..0 rd_data_reg; read data */
   };
public:
   /* methods */
   UartCore(uint32_t core_base_addr);
   ~UartCore();

   /* baud rate = sys_freq/16/(dvsr+1) */
   void set_baud_rate(int baud);

   int rx_fifo_empty();

   int tx_fifo_full();

   void tx_byte(uint8_t byte);

   int rx_byte();

   void disp(int n, int base, int len);
   void disp(const char *str);
   void disp(char ch);
   void disp(int n);
   void disp(int n, int base);
   void disp(double f, int digit);
   void disp(double f);
private:
   uint32_t base_addr;
   int baud_rate;
   void disp_str(const char *str);
};

#endif  // _UART_CORE_H_INCLUDED
