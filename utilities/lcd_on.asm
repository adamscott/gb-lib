; Turn on LCD display

;lcd_on::
    di                  ; Deactivate interrupts
    ldh a, [LCDC]       ; Load LCD Display Registers
    ld b, LCDC_LCD_ON   ; Set the LCD ControllerOperation Stop Flag to On
    or b                ; Turn on the flag in loaded registers
    ldh [LCDC], a       ; Save back the LCD registers
reti                    ; Return and activate interrupts
