; Fills a range in memory with a specified byte value.
; a  = \1 = byte value
; hl = \2 = destination address
; bc = \3 = byte count
set_mem:            MACRO
                    set_mem_logic \1, \2, \3, "both"
                    ENDM

set_mem_begin:      MACRO
                    set_mem_logic \1, \2, \3, "begin"
                    ENDM

set_mem_end:        MACRO
                    set_mem_logic \1, \2, \3, "end"
                    ENDM

set_mem_middle:     MACRO
                    set_mem_logic \1, \2, \3, "middle"
                    ENDM

; block = \4 = block type ("begin", "end", "both", "middle")
set_mem_logic:      MACRO
                    IF (STRIN(\4, "begin") || STRIN(\4, "both"))
                        push af
                        push bc
                        push hl
                    ENDC
                    ld a, \1        ; \1 = byte value
                    ld hl, \2       ; \2 = destination address
                    ld bc, \3       ; \3 = byte count
                    call memset
                    IF (STRIN(\4, "end") || STRIN(\4, "both"))
                        pop hl
                        pop bc
                        pop af
                    ENDC
                    ENDM
