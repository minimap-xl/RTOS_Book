obj-m = rp_adc_dac.o
KVERSION = $(shell uname -r)
all:
	make  CC=arm-linux-gnueabihf-gcc ARCH=arm KCFLAGS="-march=armv7-a -mcpu=generic-armv7-a" -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
