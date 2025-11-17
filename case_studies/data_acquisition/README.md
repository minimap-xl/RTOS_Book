In this directoriy you can find all the resources that are needed to replicate the RedPitaya application presented in chapter 17, namely:
    * The FPGA bitstream to be loaded in the RedPitaya FPGA (bitstream.bin)
    * The devicetree configuration to be loaded in the RedPitaya board (devicetree.dtb)
    * The source files of the driver for the adc_dac device presented in chapter 17 (directory/rp_adc_dac.h and driver/rp_adc_dac.c)
    * The Makefile for building the driver on the RedPitaya board (driver/Makefile)
    * A sample C program reading from the ADC and outputting read samples ot the DAC


At first, you need to retrieve from the RedPitaya site the UbuntoOS release to be used and flash it into a SD card. Detailed instructions are given in the [installation page](https://redpitaya.readthedocs.io/en/latest/quickStart/SDcard/SDcard.html).

