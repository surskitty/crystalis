	db JIGGLYPUFF ; 039

	db 115,  45,  20,  20,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY_T
	db 170 ; catch rate
	db 76 ; base exp
	db POLKADOT_BOW ; item 1
	db MOON_STONE ; item 2
	db 100 ; unknown
	db 10 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn FAIRY, FAIRY ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, MOONBLAST, REST, ATTRACT, FIRE_PUNCH, NIGHTMARE, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
