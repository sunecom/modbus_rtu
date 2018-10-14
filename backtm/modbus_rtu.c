#include <stdio.h>

#include "register.h"
#include "coil_ws.h"
#include "coil_wm.h"
#include "print.h"
#include "sender.h"
#include "key.h"

int main()

{
   printf("main is starting....\n");
   register_function();
   coil_ws_function();
   coil_wm_function();
   print_function();
   sender_function();
   key_function();


   while (0)
   {


   }
   
   return 0;
}
