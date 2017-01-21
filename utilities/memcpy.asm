; https://github.com/assemblydigest/gameboy/blob/master/part-3-libraries/memory.z80
; Copies count bytes from source to destination.
; de = destination address
; hl = source address
; bc = byte count

;memcpy::
    inc c
    inc b
    jr .start
.repeat\@:
    ld a, [hl+]
    ld [de], a
    inc de
.start\@:
    dec c
    jr nz, .repeat\@
    dec b
    jr nz, .repeat\@
ret
