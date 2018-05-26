	const_def
; see data/moves/tmhm_moves.asm for moves
	add_tm DYNAMICPUNCH ; 00
	add_tm HEADBUTT     ; 01
	add_tm CURSE        ; 02
	add_tm ROLLOUT      ; 03
	add_tm ROAR         ; 04
	add_tm TOXIC        ; 05
	add_tm ZAP_CANNON   ; 06
	add_tm ROCK_SMASH   ; 07
	add_tm PSYCH_UP     ; 08
	add_tm HIDDEN_POWER ; 09
	add_tm SUNNY_DAY    ; 10
	add_tm SWEET_SCENT  ; 11
	add_tm SNORE        ; 12
	add_tm BLIZZARD     ; 13
	add_tm HYPER_BEAM   ; 14
	add_tm ICY_WIND     ; 15
	add_tm PROTECT      ; 16
	add_tm RAIN_DANCE   ; 17
	add_tm GIGA_DRAIN   ; 18
	add_tm ENDURE       ; 19
	add_tm FRUSTRATION  ; 20
	add_tm SOLARBEAM    ; 21
	add_tm IRON_TAIL    ; 22
	add_tm DRAGONBREATH ; 23
	add_tm THUNDER      ; 24
	add_tm EARTHQUAKE   ; 25
	add_tm RETURN       ; 26
	add_tm DIG          ; 27
	add_tm PSYCHIC_M    ; 28
	add_tm SHADOW_BALL  ; 29
	add_tm MUD_SLAP     ; 30
	add_tm DOUBLE_TEAM  ; 31
	add_tm ICE_PUNCH    ; 32
	add_tm SWAGGER      ; 33
	add_tm SLEEP_TALK   ; 34
	add_tm SLUDGE_BOMB  ; 35
	add_tm SANDSTORM    ; 36
	add_tm FIRE_BLAST   ; 37
	add_tm SWIFT        ; 38
	add_tm DEFENSE_CURL ; 39
	add_tm THUNDERPUNCH ; 40
	add_tm DREAM_EATER  ; 41
	add_tm FLASH        ; 42
	add_tm REST         ; 43
	add_tm ATTRACT      ; 44
	add_tm THIEF        ; 45
	add_tm STEEL_WING   ; 46
	add_tm FIRE_PUNCH   ; 47
	add_tm FURY_CUTTER  ; 48
	add_tm NIGHTMARE    ; 49
NUM_TMS = const_value - TM01

	add_hm CUT          ; 50
	add_hm FLY          ; 51
	add_hm SURF         ; 52
	add_hm STRENGTH     ; 53
	add_hm WHIRLPOOL    ; 54
	add_hm WATERFALL    ; 55
NUM_HMS = const_value - HM01

	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
NUM_TM_HM_TUTOR = __enum__ + -1
