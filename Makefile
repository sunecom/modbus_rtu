.PHONY:all clean


all:
	make -C register
	make -C coil
	make -C print
	make -C sender
	make -C key
	make -C app
clean:
	rm -fr app/link_obj/*.o modbus_rtu 
	rm -fr app/modbus_rtu.d register/register.d coil/rm_coil.d coil/ws_coil.d coil/wm_coil.d
	rm -fr print/print.d
	rm -fr sender/sender.d
	rm -fr key/key.d
	rm -rf app/link_obj


