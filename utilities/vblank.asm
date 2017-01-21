; VBlank routine (DMA transfer)

;vblank::
	push af
	ld a, SPR_TBL
	ld [DMA], a
	ld a, $28			; .wait loop cycles count
.wait\@:
	dec a
	jr nz, .wait\@
	pop af
reti
