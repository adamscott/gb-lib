; Turn off LCD display

;lcd_off::
    di                  ; Deactivate interrupts
.loop\@
    ld a, [LY]          ; $ff44=LCDC Y-Pos
    cp $90              ; $90 and bigger = in VBL
    jr nz, .loop\@      ; Loop until = $90
    ld a, [LCDC]
    xor LCDC_LCD_ON
    ld [LCDC], a        ; Turn off LCD display
ret                     ; Return and activate interrupts (activating interrupts here cause a VBLANK interrupt)
