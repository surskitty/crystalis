	db MOLTRES ; 146

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING
	db 3 ; catch rate
	db 217 ; base exp
	db BRIGHTPOWDER ; item 1
	db BRIGHTPOWDER ; item 2
	db GENDERLESS ; gender
	db 100 ; unknown
	db 80 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pokemon/moltres/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, REST, STEEL_WING, FLY, FLAMETHROWER
	; end
