;https://github.com/assemblydigest/gameboy/blob/master/part-3-libraries/memory.z80
; Fills a range in memory with a specified byte value.
; hl = destination address
; bc = byte count
; a = byte value
memset::
	inc c
	inc b
	jr .start\@
.repeat\@:
	ld [hl+], a
.start\@:
	dec c
	jr nz, .repeat\@
	dec b
	jr nz, .repeat\@
ret