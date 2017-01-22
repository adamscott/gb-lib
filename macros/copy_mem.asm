; Copies count bytes from source to destination.
; hl = \1 = source address
; de = \2 = destination address
; bc = \3 = byte count
copy_mem:   MACRO
            push hl
            push de
            push bc
            ld hl, \1       ; \1 = source address
            ld de, \2       ; \2 = destination address
            ld bc, \3       ; \3 = byte count
            call memcpy
            pop bc
            pop de
            pop hl
            ENDM
