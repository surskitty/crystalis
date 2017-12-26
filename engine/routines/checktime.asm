CheckTime:: ; c000
	ld a, [TimeOfDay]
	ld hl, .TimeOfDayTable
	ld de, 2
	call IsInArray
	inc hl
	ld c, [hl]
	ret c

	xor a
	ld c, a
	ret

.TimeOfDayTable: ; c012
	db MORN_F, MORN
	db DAY_F,  DAY
	db NITE_F, NITE
	db NITE_F, NITE
	db -1
