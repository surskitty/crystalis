	db DELIBIRD ; 225

	db  45,  65,  45,  85,  75,  45
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING
	db 45 ; catch rate
	db 183 ; base exp
	db BRICK_PIECE ; item 1
	db CHARCOAL ; item 2
	db GENDER_F50 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/delibird/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn AMPHIBIAN, FIELD ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, FLY, ICE_BEAM
	; end
