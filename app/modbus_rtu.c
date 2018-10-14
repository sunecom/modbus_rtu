#include <stdio.h>

#include "../register/register.h"
#include "../coil/rm_coil.h"
#include "../coil/ws_coil.h"
#include "../coil/wm_coil.h"
#include "../print/print.h"
#include "../sender/sender.h"
#include "../key/key.h"

int main()

{
   printf("main is starting....\n");
   register_function();
   rm_coil();
   ws_coil();
   wm_coil();
   print_function();
   sender_function();
   key_function();


   while (0)
   {


   }
   
   return 0;
}
