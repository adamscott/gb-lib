; Turn off LCD display

;lcd_off::
    di                  ; Deactivate interrupts
.loop\@
    ldh a,[LCDC]       ; $ff44=LCDC Y-Pos
    cp $90              ; $90 and bigger = in VBL
    jr nz, .loop\@      ; Loop until = $90
    xor a
    ldh [LCDC],a        ; Turn off LCD display
reti                    ; Return and activate interrupts
