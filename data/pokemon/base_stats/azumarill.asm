	db AZUMARILL ; 184

	db 100, 100,  80,  50,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, FAIRY_T
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db GENDER_F50 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pics/azumarill/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn AMPHIBIAN, FAIRY ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, MOONBLAST, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
