; Turn off LCD display

;lcd_on::
    di                  ; Deactivate interrupts
    ldh a,[$FF44]       ; $ff44=LCDC Y-Pos
    cp $90              ; $90 and bigger = in VBL
    jr nz,LCDOff        ; Loop until = $90
    xor a
    ldh [LCDC],a        ; Turn off LCD display
reti                    ; Return and activate interrupts
