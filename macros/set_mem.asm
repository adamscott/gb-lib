; Fills a range in memory with a specified byte value.
; a  = \1 = byte value
; hl = \2 = destination address
; bc = \3 = byte count
set_mem:    MACRO
            push af
            push hl
            push bc
            ld a, \1        ; \1 = byte value
            ld hl, \2       ; \2 = destination address
            ld bc, \3       ; \3 = byte count
            call memset
            pop bc
            pop hl
            pop af
            ENDM
