; LCD Display Registers

; === LCDC :: LCD Control Register ===
LCDC 							EQU $FF40
LCDC_BackgroundDisplay_ON		EQU %00000001
LCDC_BackgroundDisplay_OFF		EQU 0
LCDC_OBJ_ON 					EQU %00000010
LCDC_OBJ_OFF 					EQU 0
LCDC_OBJBlockComposition_8x16 	EQU %00000100
LCDC_OBJBlockComposition_8x8 	EQU 0
LCDC_BGCodeArea_0x9C00 			EQU %00001000
LCDC_BGCodeArea_0x9800 			EQU 0
LCDC_BGCharacterData_0x8000 	EQU %00010000
LCDC_BGCharacterData_0x8800 	EQU 0
LCDC_Windowing_ON				EQU %00100000
LCDC_Windowing_OFF				EQU 0
LCDC_Window_0x9C00 				EQU %01000000
LCDC_Window_0x9800 				EQU 0
LCDC_LCD_ON 					EQU %10000000
LCDC_LCD_OFF 					EQU 0

; === STAT :: LCDC Status Flag ===
STAT 							EQU $FF41
STAT_Mode_EnableCPU2RAM			EQU %00000000
STAT_Mode_InVBlank				EQU %00000001
STAT_Mode_SearchingOAMRAM		EQU %00000010
STAT_Mode_TransferringData2LCD	EQU %00000011
STAT_Match_LYC_Equal_LCDCLY		EQU %00000100
STAT_Match_LYC_NotEqual_LCDCLY	EQU 0
STAT_Interrupt_Mode00_ON		EQU %00001000
STAT_Interrupt_Mode00_OFF		EQU 0
STAT_Interrupt_Mode01_ON		EQU %00010000
STAT_Interrupt_Mode01_OFF		EQU 0
STAT_Interrupt_Mode10_ON		EQU %00100000
STAT_Interrupt_Mode10_OFF		EQU 0
STAT_Interrupt_LCD_Equal_LY_ON	EQU %01000000
STAT_Interrupt_LCD_Equal_LY_OFF	EQU 0

; === SCY :: Scroll Y ===
SCY								EQU $FF42

; === SCX :: Scroll X ===
SCX								EQU $FF43

; === LY :: LCDC y-coordinate ===
LY 								EQU $FF44

; === LYC :: LY Compare ===
LYC 							EQU $FF45

; === BCPS :: Specifies a BG write ===
BCPS 							EQU $FF68
BCPS_HL_H 						EQU %00000001
BCPS_HL_L 						EQU 0
BCPS_PaletteData_0				EQU %00000000
BCPS_PaletteData_1				EQU %00000010
BCPS_PaletteData_2				EQU %00000100
BCPS_PaletteData_3				EQU %00000110
BCPS_PaletteNo_0				EQU %00000000
BCPS_PaletteNo_1				EQU %00001000
BCPS_PaletteNo_2				EQU %00010000
BCPS_PaletteNo_3				EQU %00011000
BCPS_PaletteNo_4				EQU %00100000
BCPS_PaletteNo_5				EQU %00101000
BCPS_PaletteNo_6				EQU %00110000
BCPS_PaletteNo_7				EQU %00111000
BCPS_Next_Specify				EQU %10000000
BCPS_Next_Fixed					EQU 0

; === BCPD :: Specifies the BG write data ===
BCPD 							EQU $FF69

; === OCPS :: Specifies the OBJ write data ===
OCPS 							EQU $FF6A
OCPS_HL_H 						EQU %00000001
OCPS_HL_L 						EQU 0
OCPS_PaletteData_0				EQU %00000000
OCPS_PaletteData_1				EQU %00000010
OCPS_PaletteData_2				EQU %00000100
OCPS_PaletteData_3				EQU %00000110
OCPS_PaletteNo_0				EQU %00000000
OCPS_PaletteNo_1				EQU %00001000
OCPS_PaletteNo_2				EQU %00010000
OCPS_PaletteNo_3				EQU %00011000
OCPS_PaletteNo_4				EQU %00100000
OCPS_PaletteNo_5				EQU %00101000
OCPS_PaletteNo_6				EQU %00110000
OCPS_PaletteNo_7				EQU %00111000
OCPS_Next_Specify				EQU %10000000
OCPS_Next_Fixed					EQU 0

; === OCPD :: Specifies the OBJ write data ===
OCPD 							EQU $FF6B
;export OCPD

; === WY :: Window y-coordinate ===
WY								EQU $FF4A
;export WY

; === WX :: Window x-coordinate ===
WX 								EQU $FF4B
;export WX


; OAM Registers

; === OBJ ===
OBJ_ColorPalette_0				EQU %00000000
OBJ_ColorPalette_1				EQU %00000001
OBJ_ColorPalette_2				EQU %00000010
OBJ_ColorPalette_3				EQU %00000011
OBJ_ColorPalette_4				EQU %00000100
OBJ_ColorPalette_5				EQU %00000101
OBJ_ColorPalette_6				EQU %00000110
OBJ_ColorPalette_7				EQU %00000111
OBJ_CHR_Bank					EQU %00001000
OBJ_DMGPalette					EQU %00010000
OBJ_Horizontal_Flip				EQU %00100000
OBJ_Horizontal_Normal			EQU 0
OBJ_Vertical_Flip				EQU %01000000
OBJ_Vertical_Normal				EQU 0
OBJ_DisplayPriority_BG			EQU %10000000
OBJ_DisplayPriority_OBJ			EQU 0

; === OBJX ===
OBJX_Y							EQU $0
OBJX_X							EQU $1
OBJX_CHR						EQU $2
OBJX_ATTRS						EQU $3


; DMA Registers

; DMA Control Register: For both DMG and CGB
; === DMA :: DMA transfer and starting address ===
DMA								EQU $FF46

; New DMA Control Registers: CGB only
; === HDMA5 :: Transfer start and number of bytes to transfer ===
HDMA5							EQU $FF55
