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



