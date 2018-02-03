	db CORSOLA ; 222

	db  70,  85,  85,  35, 95,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK
	db 60 ; catch rate
	db 113 ; base exp
	db NO_ITEM ; item 1
	db HARD_STONE ; item 2
	db GENDER_F75 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/corsola/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn AMPHIBIAN, INVERTEBRATE ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, ICE_BEAM

