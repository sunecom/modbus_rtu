#include <stdio.h>
#include "../inc/register.h"
#include "../inc/coil_write_s.h"
#include "../inc/coil_write_w.h"
#include "../inc/print_format.h"
#include "../inc/zb_sender.h"
#include "../inc/key_id.h"

int main()

{

   register_function();
   coil_write_s_function();
   coil_write_m_function();
   print_format_function();
   zb_sender_function();
   key_id_function();


   while (0)
   {


   }
   
   return 0;
}
