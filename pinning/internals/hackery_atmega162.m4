#define _ATMEGA162

/* ATmega644 specific adjustments */
#define _TIMSK_TIMER1 TIMSK1
#define _IVREG MCUCR
#define _EIMSK EIMSK

#define _TCCR2_PRESCALE TCCR2B
#define _OUTPUT_COMPARE_IE2 OCIE2B
#define _OUTPUT_COMPARE_REG2 OCR2B
#define _SIG_OUTPUT_COMPARE2 SIG_OUTPUT_COMPARE2B
#define _SIG_OVERFLOW2 SIG_OVERFLOW2
#define _TIMSK_TIMER2 TIMSK2

/* workaround for avr-libc devs not being able to decide how these registers
 * should be named... */
#ifdef SPCR0
    #define _SPCR0 SPCR0
#else
    #define _SPCR0 SPCR
#endif

#ifdef SPE0
    #define _SPE0 SPE0
#else
    #define _SPE0 SPE
#endif

#ifdef MSTR0
    #define _MSTR0 MSTR0
#else
    #define _MSTR0 MSTR
#endif

#ifdef SPSR0
    #define _SPSR0 SPSR0
#else
    #define _SPSR0 SPSR
#endif

#ifdef SPIF0
    #define _SPIF0 SPIF0
#else
    #define _SPIF0 SPIF
#endif

#ifdef SPDR0
    #define _SPDR0 SPDR0
#else
    #define _SPDR0 SPDR
#endif

#ifdef SPI2X0
    #define _SPI2X0 SPI2X0
#else
    #define _SPI2X0 SPI2X
#endif

#define _TIFR_TIMER1 TIFR


#define BOOTLOADER_SECTION 0x1c00 /* atmega162 with 1024 words bootloader */


#ifdef HD44780_USE_PORTC
    #define HD44780_CTRL_PORT C
    #define HD44780_DATA_PORT C
    #define HD44780_RS PC0
    #define HD44780_RW PC1
    #define HD44780_EN PC2
    #define HD44780_D4 PC3
    #define HD44780_D5 PC4
    #define HD44780_D6 PC5
    #define HD44780_D7 PC6
    #define HD44780_DATA_SHIFT 3
#else
    #define HD44780_CTRL_PORT A
    #define HD44780_DATA_PORT A
    #define HD44780_RS PA0
    #define HD44780_RW PA1
    #define HD44780_EN PA2
    #define HD44780_D4 PA3
    #define HD44780_D5 PA4
    #define HD44780_D6 PA5
    #define HD44780_D7 PA6
    #define HD44780_DATA_SHIFT 3
#endif
