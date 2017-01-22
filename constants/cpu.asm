; CPU


; CPU Functions (Common to DMG/CGB)

; Controller Data
; P1 :: Ports P10 ~ P15
P1                              EQU $FF00
P1_Input                        EQU %00001111
P1_Input_P10                    EQU %00000001
P1_Input_P11                    EQU %00000010
P1_Input_P12                    EQU %00000100
P1_Input_P13                    EQU %00001000
P1_Output                       EQU %00110000
P1_Output_P14                   EQU %00010000
P1_Output_P15                   EQU %00100000

; Divider Registers
; DIV :: Divider Read/Reset
DIVIDER                         EQU $FF04
DIVIDER_8192Hz                  EQU %00000001
DIVIDER_4096Hz                  EQU %00000010
DIVIDER_2048Hz                  EQU %00000100
DIVIDER_1024Hz                  EQU %00001000
DIVIDER_512Hz                   EQU %00010000
DIVIDER_256Hz                   EQU %00100000
DIVIDER_128Hz                   EQU %01000000
DIVIDER_64Hz                    EQU %10000000

; Timer Registers
; TIMA :: Timer Counter
TIMA                            EQU $FF05
; TMA :: Timer Modulo
TMA                             EQU $FF06
; TAC :: Timer Controller
TAC                             EQU $FF07
TAC_InputClock_4Hz              EQU %00000000
TAC_InputClock_262Hz            EQU %00000001
TAC_InputClock_65Hz             EQU %00000010
TAC_InputClock_16Hz             EQU %00000011

; Interrupt Flags
; IF :: Interrupt Request
IFL                             EQU $FF0F
IFL_VBlank                      EQU %00000001
IFL_LCDC                        EQU %00000010
IFL_TimerOverflow               EQU %00000100
IFL_SerialIOTransferCompletion	EQU %00001000
IFL_P10P13TerminalNegativeEdge	EQU %00010000
; IE :: Interrupt Enable
IE                              EQU $FFFF
IE_VBlank                       EQU IFL_VBlank
IE_LCDC                         EQU IFL_LCDC
IE_TimerOverflow                EQU IFL_TimerOverflow
IE_SerialIOTransferCompletion   EQU IFL_SerialIOTransferCompletion
IE_P10P13TerminalNegativeEdge   EQU IFL_P10P13TerminalNegativeEdge

; Serial Cable Communication
; SB :: Serial Transfer Data (8-bit Shift Register)
SB                              EQU $FF01
SC                              EQU $FF02
SC_SCKTerminalIOSelect_INTCLK   EQU %00000001
SC_SCKTerminalIOSelect_EXTCLK   EQU 0
SC_INTShiftCLKSwitch_256KHz     EQU %00000010
SC_INTShiftCLKSwitch_8KHz       EQU 0
SC_SerialTransferStart_ON       EQU %10000000
SC_SerialTransferStart_OFF      EQU 0


; CPU Functions (CGB Only)

; Bank Register for Game Boy Working RAM
; SVBK
SVBK                            EQU $FF70

; CPU Operating Speed
; KEY1
KEY1                            EQU $FF4D
KEY1_SpeedSwitch_ON             EQU %00000001
KEY1_SpeedSwitch_OFF            EQU 0
KEY1_SpeedFlag_DoubleSpeed      EQU %10000000
KEY1_SpeedFlag_NormalSpeed      EQU 0

; Infrared Communication
; RP :: Port Register
RP                              EQU $FF56
RP_Write_LED_ON                 EQU %00000001
RP_Write_LED_OFF                EQU 0
RP_Read_LED_OFF	                EQU %00000010
RP_Read_LED_ON                  EQU 0
RP_DataRead_Enable              EQU %11000000
RP_DataRead_Disable             EQU 0
