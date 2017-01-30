; Copies count bytes from source to destination.
; hl = \1 = source address
; de = \2 = destination address
; bc = \3 = byte count
copy_mem:           MACRO
                    copy_mem_logic \1, \2, \3, "both"
                    ENDM

copy_mem_begin:     MACRO
                    copy_mem_logic \1, \2, \3, "begin"
                    ENDM

copy_mem_end:       MACRO
                    copy_mem_logic \1, \2, \3, "end"
                    ENDM

copy_mem_middle:    MACRO
                    copy_mem_logic \1, \2, \3, "middle"
                    ENDM

copy_mem_logic:     MACRO
                    IF (STRIN(\4, "begin") || STRIN(\4, "both"))
                        push af
                        push bc
                        push hl
                    ENDC
                    ld hl, \1       ; \1 = source address
                    ld de, \2       ; \2 = destination address
                    ld bc, \3       ; \3 = byte count
                    call memcpy
                    IF (STRIN(\4, "end") || STRIN(\4, "both"))
                        pop hl
                        pop bc
                        pop af
                    ENDC
                    ENDM
