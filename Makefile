###############################
# a modbus rtu program
# Author : Suneit Mr.gao
# date:2018-10-13 
# last:2018-10-13 19:50
###############################
.PHONY:clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
BIN  = modbus_rtu

all:  $(BIN) $(DEPS)

ifneq ("$(wirldcard $(DEPS))","")
include $(DEPS)
endif

$(BIN):$(OBJS)
	@echo "OBJS=" $(OBJS)
	@echo "SRCS=" $(SRCS)
	gcc -o $@ $^

%.o:%.c %.h
	gcc -o $@ -c $(filter %.c, $^)
%.d:%.c
	gcc -MM $^ > $@
clean:
	rm -f $(BIN) $(OBJS) $(DEPS)




