; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems: ; 28785
	db $19, LEFTOVERS
	db $2D, BITTER_BERRY
	db $32, GOLD_BERRY
	db $5A, BERRY
	db $64, BERRY
	db $78, BERRY
	db $87, BERRY
	db $BE, BERRY
	db $C3, BERRY
	db $C8, TWISTEDSPOON
	db $DC, BERRY
	db $E1, SILVER_LEAF
	db $EB, BERRY
	db $FA, BERRY
	db -1,  BERRY
	db  0 ; end
; 2879e
