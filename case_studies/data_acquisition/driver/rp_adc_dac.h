#ifndef RP_ADC_DAC_H
#define RP_ADC_DAC_H

#include <linux/types.h>
#include <asm/ioctl.h>

#ifdef __cplusplus
extern "C" {
#endif

//Temporaneo
#define DMA_SOURCE 1
////////////////


#define DEVICE_NAME "rp_adc_dac"  /* Dev name as it appears in /proc/devices */
#define MODULE_NAME "rp_adc_dac"

//Generic IOCTL commands  
#define RP_ADC_DAC_IOCTL_BASE	'W'
#define RP_ADC_DAC_FIFO_INT_HALF_SIZE		_IO(RP_ADC_DAC_IOCTL_BASE, 12)
#define RP_ADC_DAC_FIFO_INT_FIRST_SAMPLE		_IO(RP_ADC_DAC_IOCTL_BASE, 13)
#define RP_ADC_DAC_FIFO_FLUSH			_IO(RP_ADC_DAC_IOCTL_BASE, 14)
#define RP_ADC_DAC_FIFO_INT_NONE		_IO(RP_ADC_DAC_IOCTL_BASE, 32)
#define RP_ADC_DAC_GET_DECIMATION_REGISTER		_IO(RP_ADC_DAC_IOCTL_BASE, 20)
#define RP_ADC_DAC_SET_DECIMATION_REGISTER		_IO(RP_ADC_DAC_IOCTL_BASE, 21)
#define RP_ADC_DAC_GET_ENABLE_REGISTER		_IO(RP_ADC_DAC_IOCTL_BASE, 22)
#define RP_ADC_DAC_SET_ENABLE_REGISTER		_IO(RP_ADC_DAC_IOCTL_BASE, 23)
  
//Internal register offests for AxiStreamFifo components used in FPGA configuration 
#ifndef AXI_ENUMS_DEFINED
#define AXI_ENUMS_DEFINED
enum AxiStreamFifo_Register {
    ISR   = 0x00,   ///< Interrupt Status Register (ISR)
    IER   = 0x04,   ///< Interrupt Enable Register (IER)
    TDFR  = 0x08,   ///< Transmit Data FIFO Reset (TDFR)
    TDFV  = 0x0c,   ///< Transmit Data FIFO Vacancy (TDFV)
    TDFD  = 0x10,   ///< Transmit Data FIFO 32-bit Wide Data Write Port
    TDFD4 = 0x1000, ///< Transmit Data FIFO for AXI4 Data Write Port
    TLR   = 0x14,   ///< Transmit Length Register (TLR)
    RDFR  = 0x18,   ///< Receive Data FIFO reset (RDFR)
    RDFO  = 0x1c,   ///< Receive Data FIFO Occupancy (RDFO)
    RDFD  = 0x20,   ///< Receive Data FIFO 32-bit Wide Data Read Port (RDFD)
    RDFD4 = 0x1000, ///< Receive Data FIFO for AXI4 Data Read Port (RDFD)
    RLR   = 0x24,   ///< Receive Length Register (RLR)
    SRR   = 0x28,   ///< AXI4-Stream Reset (SRR)
    TDR   = 0x2c,   ///< Transmit Destination Register (TDR)
    RDR   = 0x30,   ///< Receive Destination Register (RDR)
    /// not supported yet .. ///
    TID   = 0x34,   ///< Transmit ID Register
    TUSER = 0x38,   ///< Transmit USER Register
    RID   = 0x3c,   ///< Receive ID Register
    RUSER = 0x40    ///< Receive USER Register
};

enum AxiStreamFifo_ISREnum {
    ISR_RFPE = 1 << 19,  ///< Receive FIFO Programmable Empty
    ISR_RFPF = 1 << 20,  ///< Receive FIFO Programmable Full
    ISR_TFPE = 1 << 21,  ///< Transmit FIFO Programmable Empty
    ISR_TFPF = 1 << 22,  ///< Transmit FIFO Programmable Full
    ISR_RRC = 1 << 23,   ///< Receive Reset Complete
    ISR_TRC = 1 << 24,   ///< Transmit Reset Complete
    ISR_TSE = 1 << 25,   ///< Transmit Size Error
    ISR_RC = 1 << 26,    ///< Receive Complete
    ISR_TC = 1 << 27,    ///< Transmit Complete
    ISR_TPOE = 1 << 28,  ///< Transmit Packet Overrun Error
    ISR_RPUE = 1 << 29,  ///< Receive Packet Underrun Error
    ISR_RPORE = 1 << 30, ///< Receive Packet Overrun Read Error
    ISR_RPURE = 1 << 31, ///< Receive Packet Underrun Read Error
};

enum RegisterIdx {
    FIFO_00_IDX = 0,
    FIFO_01_IDX = 1,
    FIFO_10_IDX = 2,
    FIFO11_IDX = 3,
    COMMAND_REG_IDX = 4,
    PRE_POST_REG_IDX = 5,
    DEC_REG_IDX = 6,
    MODE_REG_IDX = 8
};
#endif

#pragma pack(1)


#ifdef __cplusplus
}
#endif

#endif // RP_ADC_DAC_H
