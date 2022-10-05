DHRY-LFLAGS =

#DHRY-CFLAGS := -O3 -DTIME -DNOENUM -Wno-implicit -save-temps
#DHRY-CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4

SRC = dhry_1.c dhry_2.c #strcmp.S
HDR = dhry.h

#override CFLAGS += $(DHRY-CFLAGS) $(XCFLAGS) -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000
dhrystone: $(SRC) $(HDR)
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f *.i *.s *.o dhrystone dhrystone.hex

