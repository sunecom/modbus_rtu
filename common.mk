###############################
# a modbus rtu program
# Author : Suneit Mr.gao
# date:2018-10-13 
# last:2018-10-13 19:50
###############################
.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
BIN := $(addprefix /home/sune/modbus_rtu/,$(BIN))

LINK_OBJ_DIR = /home/sune/modbus_rtu/app/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))

OBJS := $(addprefix $(LINK_OBJ_DIR)/,$(OBJS))
LINK_OBJ =$(wildcard $(LINK_OBJ_DIR)/*.o)
LINK_OBJ += $(OBJS)
all: $(DEPS) $(OBJS) $(BIN)

ifneq ("$(wirldcard $(DEPS))","")
include $(DEPS)
endif

$(BIN):$(LINK_OBJ)
	@echo $(LINK_OBJ)
	gcc -o $@ $^
$(LINK_OBJ_DIR)/%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
%.d:%.c
	gcc -MM $^ > $@
clean:
	rm -f $(BIN) $(OBJS) $(DEPS)




