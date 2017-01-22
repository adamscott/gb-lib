; Copies count bytes from source to destination.
; de = destination address
; hl = source address
; bc = byte count
copy_mem:   MACRO
            push de
            push hl
            push bc
            ld de, \1
            ld hl, \2
            ld bc, \3
            call memcpy
            pop bc
            pop hl
            pop de
            ENDM
