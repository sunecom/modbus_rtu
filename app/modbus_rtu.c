#include <stdio.h>

#include "register.h"
#include "rm_coil.h"
#include "ws_coil.h"
#include "wm_coil.h"
#include "print.h"
#include "sender.h"
#include "key.h"

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
