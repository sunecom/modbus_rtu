.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH =$(BUILD_ROOT)/inc

all:
	make -C register
	make -C coil
	make -C print
	make -C sender
	make -C key
	make -C app
clean:
	rm -rf app/link_obj app/dep modbus_rtu 


