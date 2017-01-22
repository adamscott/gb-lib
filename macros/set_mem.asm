; Fills a range in memory with a specified byte value.
; hl = destination address
; bc = byte count
; a = byte value

set_mem:    MACRO
            push hl,
            push bc,
            push af
            ld hl, \1
            ld bc, \2
            ld a, \3
            call memset
            pop af
            pop bc
            pop hl
            ENDM
