Trainers:

; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; 0: Level, species
		; 1: Level, species, moves
		; 2: Level, species, item
		; 3: Level, species, item, moves
	; Party
		; Up to six monsters following the data type
	; $ff


FalknerGroup:
; ================================
; ================

	; FALKNER (1)
	db "FALKNER@"
	db 3 ; item + moves

	; party

	db 7, PIDGEY, NO_ITEM
		db TACKLE
		db GUST
		db 0
		db 0

	db 8, ZUBAT, NO_ITEM
		db TACKLE
		db ABSORB
		db 0
		db 0

	db 9, DODUO, BERRY
		db TACKLE
		db MUD_SLAP
		db PECK
		db 0

	db $ff ; end

; ================

	; FALKNER (2)
	db "FALKNER@"
	db 3 ; item + moves

	; party

	db 54, PIDGEOT, PRZCUREBERRY
		db DOUBLE_EDGE
		db SKY_ATTACK
		db STEEL_WING
		db MUD_SLAP

	db 54, CROBAT, NO_ITEM
		db CONFUSE_RAY
		db SUPER_FANG
		db TOXIC
		db MUD_SLAP

	db 55, GLIGAR, NO_ITEM
		db METAL_CLAW
		db WING_ATTACK
		db QUICK_ATTACK
		db SLUDGE_BOMB

	db 57, DODRIO, MIRACLEBERRY
		db DRILL_PECK
		db MUD_SLAP
		db TRI_ATTACK
		db STEEL_WING

	db 55, NOCTOWL, MINT_BERRY
		db PSYCHIC
		db MOONBLAST
		db FLY
		db MUD_SLAP

	db 56, SKARMORY, QUICK_CLAW
		db STEEL_WING
		db DRILL_PECK
		db SKY_ATTACK
		db MUD_SLAP

	db $ff ; end

; ================
; ================================


WhitneyGroup:
; ================================
; ================

	; WHITNEY (1)
	db "WHITNEY@"
	db 3 ; item + moves

	; party

	db 18, CHANSEY, LUCKY_PUNCH
		db EGG_BOMB
		db PRESENT
		db MIMIC
		db METRONOME

	db 19, LICKITUNG, NO_ITEM
		db ATTRACT
		db LICK
		db WRAP
		db DISABLE

	db 20, MILTANK, BERRY
		db ROLLOUT
		db ATTRACT
		db STOMP
		db PRESENT

	db $ff ; end

; ================

	; WHITNEY (2)
	db "WHITNEY@"
	db 3 ; item + moves

	; party

	db 54, AIPOM, BERRY
		db BATON_PASS
		db ICE_PUNCH
		db SUBSTITUTE
		db AGILITY

	db 53, BLISSEY, LEFTOVERS
		db SOFTBOILED
		db TOXIC
		db FLAMETHROWER
		db COUNTER

	db 55, LICKITUNG, BERRY_JUICE
		db ATTRACT
		db FLAMETHROWER
		db THUNDERBOLT
		db ICE_BEAM

	db 55, STANTLER, ICE_BERRY
		db TAKE_DOWN
		db PSYCHIC
		db HEADBUTT
		db SWIFT

	db 57, URSARING, BITTER_BERRY
		db CRUNCH
		db SWORDS_DANCE
		db ROCK_SLIDE
		db THRASH

	db 58, MILTANK, BERSERK_GENE
		db REVERSAL
		db EARTHQUAKE
		db STOMP
		db MILK_DRINK

	db $ff ; end

; ================
; ================================


BugsyGroup:
; ================================
; ================

	; BUGSY (1)
	db "BUGSY@"
	db 3 ; items + moves

	; party

	db 14, PINECO, NO_ITEM
		db TACKLE
		db PIN_MISSILE
		db HARDEN
		db SPIKES

	db 14, VENONAT, BERRY
		db TACKLE
		db DISABLE
		db SUPERSONIC
		db POISON_STING

	db 16, SCYTHER, NO_ITEM
		db QUICK_ATTACK
		db LEER
		db FURY_CUTTER
		db 0

	db $ff ; end

; ================

	; BUGSY (2)
	db "BUGSY@"
	db 3 ; items + moves

	; party

	db 54, FORRETRESS, MAGNET
		db TOXIC
		db EXPLOSION
		db ZAP_CANNON
		db SPIKES

	db 54, YANMA, LEFTOVERS
		db BATON_PASS
		db PROTECT
		db SILVER_WIND
		db ANCIENTPOWER

	db 55, HERACROSS, FOCUS_BAND
		db MEGAHORN
		db REVERSAL
		db EARTHQUAKE
		db TAKE_DOWN

	db 55, SHUCKLE, GOLD_BERRY
		db EARTHQUAKE
		db TOXIC
		db ENCORE
		db WRAP

	db 56, VENOMOTH, GOLD_LEAF
		db PSYCHIC
		db SLEEP_POWDER
		db LEECH_LIFE
		db SUBSTITUTE

	db 57, SCIZOR, SILVER_LEAF
		db SILVER_WIND
		db SWORDS_DANCE
		db STEEL_WING
		db WING_ATTACK

	db $ff ; end

; ================
; ================================


MortyGroup:
; ================================
; ================

	; MORTY (1)
	db "MORTY@"
	db 3 ; items + moves

	; party

	db 21, GASTLY, NO_ITEM
		db HYPNOSIS
		db NIGHTMARE
		db CURSE
		db LICK

	db 23, HAUNTER, NO_ITEM
		db SHADOW_BALL
		db SPITE
		db MEAN_LOOK
		db CURSE

	db 25, GENGAR, BERRY
		db HYPNOSIS
		db SLUDGE_BOMB
		db MEAN_LOOK
		db DREAM_EATER

	db 23, MISDREAVUS, SPELL_TAG
		db SPITE
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL

	db $ff ; end

; ================

	; MORTY (2)
	db "MORTY@"
	db 3 ; items + moves

	; party

	db 54, EXEGGUTOR, BERRY
		db PSYCHIC
		db GIGA_DRAIN
		db STUN_SPORE
		db DOUBLE_EDGE

	db 53, ARIADOS, BURNT_BERRY
		db SHADOW_BALL
		db PSYCHIC
		db DIG
		db SLUDGE_BOMB

	db 54, GENGAR, GOLD_BERRY
		db HYPNOSIS
		db CURSE
		db MEAN_LOOK
		db SHADOW_BALL

	db 55, MAROWAK, THICK_CLUB
		db BONEMERANG
		db IRON_TAIL
		db BELLY_DRUM
		db HEADBUTT

	db 56, GENGAR, KINGS_ROCK
		db CONFUSE_RAY
		db MOONBLAST
		db FIRE_PUNCH
		db SHADOW_BALL

	db 56, MISDREAVUS, SPELL_TAG
		db SHADOW_BALL
		db PSYCHIC
		db THUNDERBOLT
		db CONFUSE_RAY

	db $ff ; end

; ================
; ================================


PryceGroup:
; ================================
; ================

	; PRYCE (1)
	db "PRYCE@"
	db 3 ; items + moves

	; party

	db 31, DELIBIRD, NO_ITEM
		db PRESENT
		db ICY_WIND
		db SPIKES
		db WHIRLWIND

	db 33, SNEASEL, NO_ITEM
		db BEAT_UP
		db ICY_WIND
		db FAINT_ATTACK
		db LEER

	db 35, DEWGONG, MINT_BERRY
		db HEADBUTT
		db ICY_WIND
		db AURORA_BEAM
		db REST

	db 37, PILOSWINE, NO_ITEM
		db ICY_WIND
		db MUD_SLAP
		db MIST
		db BLIZZARD

	db $ff ; end

; ================

	; PRYCE (2)
	db "PRYCE@"
	db 3 ; items + moves

	; party

	db 54, DELIBIRD, BRICK_PIECE
		db PRESENT
		db ICE_BEAM
		db SPIKES
		db WHIRLWIND

	db 53, SNEASEL, BERRY
		db BEAT_UP
		db ICY_WIND
		db FAINT_ATTACK
		db LOW_KICK

	db 55, LAPRAS, GOLD_BERRY
		db SURF
		db ICE_BEAM
		db THUNDER
		db RAIN_DANCE

	db 53, JYNX, MIRACLEBERRY
		db ICE_PUNCH
		db PSYCHIC
		db SHADOW_BALL
		db LOVELY_KISS

	db 55, DEWGONG, MINT_BERRY
		db SURF
		db ICY_WIND
		db TAKE_DOWN
		db REST

	db 57, PILOSWINE, QUICK_CLAW
		db ICE_BEAM
		db EARTHQUAKE
		db BODY_SLAM
		db ANCIENTPOWER

	db $ff ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE (1)
	db "JASMINE@"
	db 3 ; items + moves

	; party

	db 30, SKARMORY, NO_ITEM
		db PECK
		db STEEL_WING
		db SCREECH
		db SPIKES

	db 33, MAGNEMITE, NO_ITEM
		db THUNDERBOLT
		db SUPERSONIC
		db SONICBOOM
		db THUNDER_WAVE

	db 35, STEELIX, DRAGON_FANG
		db DRAGONBREATH
		db SUNNY_DAY
		db MAGNITUDE
		db IRON_TAIL

	db $ff ; end

; ================

	; JASMINE (2)
	db "JASMINE@"
	db 3 ; items + moves

	; party

	db 55, SKARMORY, PRZCUREBERRY
		db FLY
		db STEEL_WING
		db SCREECH
		db SPIKES

	db 56, MAGNETON, MAGNET
		db THUNDERBOLT
		db SCREECH
		db REFLECT
		db LIGHT_SCREEN

	db 54, MAGNETON, MAGNET
		db THUNDER
		db SWIFT
		db RAIN_DANCE
		db THUNDER_WAVE

	db 55, FORRETRESS, BRIGHTPOWDER
		db EXPLOSION
		db ROLLOUT
		db RAPID_SPIN
		db GIGA_DRAIN

	db 55, SCIZOR, FOCUS_BAND
		db WING_ATTACK
		db METAL_CLAW
		db REVERSAL
		db SILVER_WIND

	db 57, STEELIX, QUICK_CLAW
		db CURSE
		db EARTHQUAKE
		db ROCK_SLIDE
		db IRON_TAIL

	db $ff ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK (1)
	db "CHUCK@"
	db 3 ; items + moves

	; party

	db 27, PRIMEAPE, BLACKBELT
		db LEER
		db RAGE
		db KARATE_CHOP
		db FURY_SWIPES

	db 30, POLIWRATH, NO_ITEM
		db HYPNOSIS
		db MIND_READER
		db SURF
		db DYNAMICPUNCH

	db $ff ; end

; ================

	; CHUCK (2)
	db "CHUCK@"
	db 3 ; items + moves

	; party

	db 53, MACHAMP, BERSERK_GENE
		db DYNAMICPUNCH
		db ROCK_SLIDE
		db CROSS_CHOP
		db STRENGTH

	db 55, HITMONTOP, BLACKGLASSES
		db ROLLING_KICK
		db QUICK_ATTACK
		db PURSUIT
		db COUNTER

	db 55, HITMONCHAN, BLACKBELT
		db MACH_PUNCH
		db DYNAMICPUNCH
		db ICE_PUNCH
		db THUNDERPUNCH

	db 55, HITMONLEE, FOCUS_BAND
		db HI_JUMP_KICK
		db ENDURE
		db REVERSAL
		db EARTHQUAKE

	db 56, PRIMEAPE, BITTER_BERRY
		db OUTRAGE
		db DYNAMICPUNCH
		db SWAGGER
		db THRASH

	db 57, POLIWRATH, GOLD_BERRY
		db SUBSTITUTE
		db MIND_READER
		db SURF
		db DYNAMICPUNCH

	db $ff ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR (1)
	db "CLAIR@"
	db 3 ; item + moves

	; party

	db 37, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db SURF
		db SLAM
		db DRAGONBREATH

	db 37, AMPHAROS, NO_ITEM
		db THUNDER_WAVE
		db THUNDERBOLT
		db ROCK_SMASH
		db DRAGONBREATH

	db 37, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db ICE_BEAM
		db SLAM
		db DRAGONBREATH

	db 40, KINGDRA, GOLD_BERRY
		db SMOKESCREEN
		db SURF
		db HYPER_BEAM
		db DRAGONBREATH

	db $ff ; end

; ================

	; CLAIR (2)
	db "CLAIR@"
	db 3 ; item + moves

	; party

	db 53, DRAGONAIR, BERRY
		db THUNDER_WAVE
		db SURF
		db SLAM
		db DRAGONBREATH

	db 54, AMPHAROS, BRIGHTPOWDER
		db COTTON_SPORE
		db THUNDERBOLT
		db CONFUSE_RAY
		db DRAGONBREATH

	db 55, DRAGONITE, QUICK_CLAW
		db WATERFALL
		db ICE_BEAM
		db WING_ATTACK
		db DRAGONBREATH

	db 55, MEGANIUM, BITTER_BERRY
		db PETAL_DANCE
		db ANCIENTPOWER
		db BODY_SLAM
		db DRAGONBREATH

	db 56, DRAGONITE, MIRACLEBERRY
		db DRAGONBREATH
		db FIRE_BLAST
		db HYPER_BEAM
		db OUTRAGE

	db 57, KINGDRA, GOLD_BERRY
		db SMOKESCREEN
		db SURF
		db HYPER_BEAM
		db DRAGONBREATH

	db $ff ; end

; ================
; ================================


Rival1Group:
; ================================
; ================

	; RIVAL1 (1)
	db "?@"
	db 0 ; normal

	; party
	db 5, CHIKORITA

	db $ff ; end

; ================

	; RIVAL1 (2)
	db "?@"
	db 0 ; normal

	; party
	db 5, CYNDAQUIL

	db $ff ; end

; ================

	; RIVAL1 (3)
	db "?@"
	db 0 ; normal

	; party
	db 5, TOTODILE

	db $ff ; end

; ================

	; RIVAL1 (4)
	db "?@"
	db 1 ; moves

	; party
	db 12, GASTLY
		db HYPNOSIS
		db LICK
		db SMOG
		db SPITE

	db 14, ZUBAT
		db SMOG
		db SUPERSONIC
		db ABSORB
		db BITE

	db 16, BAYLEEF
		db GROWL
		db RAZOR_LEAF
		db REFLECT
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL1 (5)
	db "?@"
	db 0 ; normal

	; party
	db 12, GASTLY
	db 14, ZUBAT
	db 16, QUILAVA

	db $ff ; end

; ================

	; RIVAL1 (6)
	db "?@"
	db 0 ; normal

	; party
	db 12, GASTLY
	db 14, ZUBAT
	db 16, CROCONAW

	db $ff ; end

; ================

	; RIVAL1 (7)
	db "?@"
	db 1 ; moves

	; party

	db 20, HAUNTER
		db LICK
		db SPITE
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONICBOOM

	db 20, ZUBAT
		db WING_ATTACK
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, BAYLEEF
		db GROWL
		db REFLECT
		db RAZOR_LEAF
		db POISONPOWDER

	db $ff ; end

; ================

	; RIVAL1 (8)
	db "?@"
	db 1 ; moves

	; party

	db 20, HAUNTER
		db LICK
		db SPITE
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONICBOOM

	db 20, ZUBAT
		db WING_ATTACK
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, QUILAVA
		db LEER
		db SMOKESCREEN
		db EMBER
		db QUICK_ATTACK

	db $ff ; end

; ================

	; RIVAL1 (9)
	db "?@"
	db 1 ; moves

	; party

	db 20, HAUNTER
		db LICK
		db SPITE
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONICBOOM

	db 20, ZUBAT
		db LEECH_LIFE
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, CROCONAW
		db LEER
		db RAGE
		db WATER_GUN
		db BITE

	db $ff ; end

; ================

	; RIVAL1 (10)
	db "?@"
	db 1 ; moves

	; party

	db 35, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 33, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE

	db 35, HAUNTER
		db LICK
		db MEAN_LOOK
		db CURSE
		db SLUDGE_BOMB

	db 37, SNEASEL
		db LEER
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK

	db 37, MEGANIUM
		db REFLECT
		db RAZOR_LEAF
		db REVERSAL
		db BODY_SLAM

	db $ff ; end

; ================

	; RIVAL1 (11)
	db "?@"
	db 1 ; moves

	; party

	db 35, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 33, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE

	db 35, HAUNTER
		db LICK
		db MEAN_LOOK
		db CURSE
		db SLUDGE_BOMB

	db 37, SNEASEL
		db LEER
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK

	db 37, QUILAVA
		db SMOKESCREEN
		db DOUBLE_KICK
		db QUICK_ATTACK
		db FLAME_WHEEL

	db $ff ; end

; ================

	; RIVAL1 (12)
	db "?@"
	db 1 ; moves

	; party

	db 35, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 33, MAGNEMITE
		db TACKLE
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE

	db 35, HAUNTER
		db LICK
		db MEAN_LOOK
		db CURSE
		db SLUDGE_BOMB

	db 37, SNEASEL
		db LEER
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK

	db 37, FERALIGATR
		db METAL_CLAW
		db BUBBLEBEAM
		db BITE
		db SCARY_FACE

	db $ff ; end

; ================

	; RIVAL1 (13)
	db "?@"
	db 1 ; moves

	; party

	db 34, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 36, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 38, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 35, HAUNTER
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 35, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db 40, MEGANIUM
		db REFLECT
		db RAZOR_LEAF
		db REVERSAL
		db BODY_SLAM

	db $ff ; end

; ================

	; RIVAL1 (14)
	db "?@"
	db 1 ; moves

	; party

	db 34, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 36, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 38, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 35, HAUNTER
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 35, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db 40, TYPHLOSION
		db SMOKESCREEN
		db DOUBLE_KICK
		db QUICK_ATTACK
		db FLAME_WHEEL

	db $ff ; end

; ================

	; RIVAL1 (15)
	db "?@"
	db 1 ; moves

	; party

	db 34, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 36, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 38, MAGNETON
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 35, HAUNTER
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 35, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db 40, FERALIGATR
		db METAL_CLAW
		db BUBBLEBEAM
		db SCARY_FACE
		db SLASH

	db $ff ; end

; ================
; ================================


PokemonProfGroup:
; ================================
; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL (1)
	db "WILL@"
	db 3 ; item + moves

	; party

	db 40, XATU, NO_ITEM
		db QUICK_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db 41, JYNX, NO_ITEM
		db DOUBLESLAP
		db LOVELY_KISS
		db ICE_PUNCH
		db PSYCHIC_M

	db 42, EXEGGUTOR, NO_ITEM
		db REFLECT
		db LEECH_SEED
		db EGG_BOMB
		db PSYCHIC_M

	db 41, SLOWBRO, GOLD_BERRY
		db CURSE
		db AMNESIA
		db BODY_SLAM
		db PSYCHIC_M

	db 44, XATU, NO_ITEM
		db QUICK_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db $ff ; end

; ================
	; WILL (2)
	db "WILL@"
	db 3 ; item + moves

	; party

	db 50, XATU, NO_ITEM
		db SILVER_WIND
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db 51, JYNX, NO_ITEM
		db MOONBLAST
		db LOVELY_KISS
		db ICE_PUNCH
		db DREAM_EATER

	db 52, EXEGGUTOR, NO_ITEM
		db REFLECT
		db LEECH_SEED
		db SOLARBEAM
		db PSYCHIC_M

	db 52, GIRAFARIG, KINGS_ROCK
		db HEADBUTT
		db SHADOW_BALL
		db CONFUSE_RAY
		db PSYCHIC_M

	db 51, SLOWKING, NO_ITEM
		db SWAGGER
		db SURF
		db FLAMETHROWER
		db PSYCHIC_M

	db 54, ALAKAZAM, TWISTEDSPOON
		db RECOVER
		db BARRIER
		db ENCORE
		db PSYCHIC_M

	db $ff ; end

; ================

	; WILL (3)
	db "WILL@"
	db 3 ; item + moves

	; party

	db 60, DELIBIRD, FOCUS_BAND
		db SPIKES
		db FUTURE_SIGHT
		db DESTINY_BOND
		db WHIRLWIND

	db 61, JYNX, NO_ITEM
		db BLIZZARD
		db LOVELY_KISS
		db MOONBLAST
		db PSYCHIC_M

	db 62, EXEGGUTOR, NO_ITEM
		db GIGA_DRAIN
		db LEECH_SEED
		db SLEEP_POWDER
		db PSYCHIC_M

	db 61, SLOWBRO, MINT_BERRY
		db CURSE
		db REST
		db BODY_SLAM
		db PSYCHIC_M

	db 61, SLOWKING, MIRACLEBERRY
		db AMNESIA
		db REST
		db SURF
		db PSYCHIC_M

	db 64, ALAKAZAM, NO_ITEM
		db THUNDERPUNCH
		db RECOVER
		db FIRE_PUNCH
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


PKMNTrainerGroup:
; ================================
; ================

	; CAL (1)
	db "CAL@"
	db 0 ; normal

	; party
	db 10, CHIKORITA
	db 10, CYNDAQUIL
	db 10, TOTODILE

	db $ff ; end

; ================

	; CAL (2)
	db "CAL@"
	db 0 ; normal

	; party
	db 30, BAYLEEF
	db 30, QUILAVA
	db 30, CROCONAW

	db $ff ; end

; ================

	; CAL (3)
	db "CAL@"
	db 0 ; normal

	; party
	db 65, MEGANIUM
	db 65, TYPHLOSION
	db 65, FERALIGATR

	db $ff ; end

; ================

	; CAL (4)
	db "CARRIE@"
	db 0 ; normal

	; party
	db 60, MEGANIUM
	db 60, STANTLER
	db 60, XATU
	db 60, SCYTHER
	db 60, POLITOED
	db 60, MAROWAK

	db $ff ; end

; ================

	; CAL (5)
	db "CARRIE@"
	db 0 ; normal

	; party
	db 60, TYPHLOSION
	db 60, KINGLER
	db 60, ELECTRODE
	db 60, SCIZOR
	db 60, PORYGON2
	db 60, LEDIAN

	db $ff ; end

; ================

	; CAL (6)
	db "CARRIE@"
	db 0 ; normal

	; party
	db 60, FERALIGATR
	db 60, CROBAT
	db 60, HERACROSS
	db 60, TANGELA
	db 60, NIDOQUEEN
	db 60, GLIGAR

	db $ff ; end

; ================

	; CAL (7)
	db "CYNTHIA@"
	db 0 ; normal

	; party
	db 60, MISDREAVUS
	db 60, QUAGSIRE
	db 60, TOGETIC
	db 60, GYARADOS
	db 60, DUGTRIO
	db 60, HITMONTOP

	db $ff ; end

; ================

	; CAL (8)
	db "IRIS@"
	db 0 ; normal

	; party
	db 60, TYRANITAR
	db 60, DRAGONITE
	db 60, AERODACTYL
	db 60, RHYDON
	db 60, LAPRAS
	db 60, KINGDRA

	db $ff ; end

; ================

	; CAL (9)
	db "GREEN@"
	db 0 ; normal

	; party
	db 60, WIGGLYTUFF
	db 60, GRANBULL
	db 60, CLEFABLE
	db 55, ARTICUNO
	db 55, ZAPDOS
	db 55, MOLTRES

	db $ff ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO (1)
	db "BRUNO@"
	db 3 ; item + moves

	; party

	db 42, HITMONTOP, NO_ITEM
		db PURSUIT
		db QUICK_ATTACK
		db DIG
		db PROTECT

	db 42, HITMONLEE, NO_ITEM
		db SWAGGER
		db DOUBLE_KICK
		db HI_JUMP_KICK
		db FORESIGHT

	db 45, HITMONCHAN, BERSERK_GENE
		db THUNDERPUNCH
		db ICE_PUNCH
		db DIZZY_PUNCH
		db MACH_PUNCH

	db 43, ONIX, NO_ITEM
		db BIND
		db EARTHQUAKE
		db SANDSTORM
		db ROCK_SLIDE

	db 46, MACHAMP, NO_ITEM
		db ROCK_SLIDE
		db FORESIGHT
		db VITAL_THROW
		db CROSS_CHOP

	db $ff ; end

; ================


	; BRUNO (2)
	db "BRUNO@"
	db 3 ; item + moves

	; party

	db 52, HITMONTOP, NO_ITEM
		db PURSUIT
		db QUICK_ATTACK
		db TRIPLE_KICK
		db COUNTER

	db 52, HITMONLEE, NO_ITEM
		db MEGA_KICK
		db MEDITATE
		db HI_JUMP_KICK
		db FORESIGHT

	db 55, HITMONCHAN, NO_ITEM
		db THUNDERPUNCH
		db ICE_PUNCH
		db MEGA_PUNCH
		db MACH_PUNCH

	db 53, PINSIR, FOCUS_BAND
		db SUBMISSION
		db SWORDS_DANCE
		db ENDURE
		db FLAIL

	db 55, STEELIX, NO_ITEM
		db BIND
		db SANDSTORM
		db CRUNCH
		db DRAGONBREATH

	db 56, MACHAMP, NO_ITEM
		db STRENGTH
		db EARTHQUAKE
		db SEISMIC_TOSS
		db CROSS_CHOP

	db $ff ; end

; ================

	; BRUNO (3)
	db "BRUNO@"
	db 3 ; item + moves

	; party

	db 62, HITMONTOP, NO_ITEM
		db PURSUIT
		db TRIPLE_KICK
		db MACH_PUNCH
		db AGILITY

	db 62, HITMONLEE, NO_ITEM
		db MEGA_KICK
		db PURSUIT
		db HI_JUMP_KICK
		db SWORDS_DANCE

	db 65, HITMONCHAN, NO_ITEM
		db DYNAMICPUNCH
		db PURSUIT
		db DIZZY_PUNCH
		db MACH_PUNCH

	db 63, HERACROSS, FOCUS_BAND
		db MEGAHORN
		db SWORDS_DANCE
		db ENDURE
		db REVERSAL

	db 66, MACHAMP, LEFTOVERS
		db PURSUIT
		db CURSE
		db DYNAMICPUNCH
		db CROSS_CHOP

	db 66, STEELIX, MIRACLEBERRY
		db REST
		db CURSE
		db IRON_TAIL
		db ROCK_SLIDE

	db $ff ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN (1)
	db "KAREN@"
	db 3 ; item + moves

	; party

	db 47, UMBREON, NO_ITEM
		db SAND_ATTACK
		db CONFUSE_RAY
		db FAINT_ATTACK
		db MEAN_LOOK

	db 47, VILEPLUME, BITTER_BERRY
		db STUN_SPORE
		db ACID
		db MOONLIGHT
		db PETAL_DANCE

	db 49, GENGAR, NO_ITEM
		db LICK
		db SPITE
		db CURSE
		db DESTINY_BOND

	db 51, MURKROW, NO_ITEM
		db QUICK_ATTACK
		db WHIRLWIND
		db PURSUIT
		db FAINT_ATTACK

	db 52, HOUNDOOM, NO_ITEM
		db ROAR
		db PURSUIT
		db FLAMETHROWER
		db LICK

	db $ff ; end

; ================


	; KAREN (2)
	db "KAREN@"
	db 3 ; item + moves

	; party

	db 57, UMBREON, NO_ITEM
		db CURSE
		db CONFUSE_RAY
		db FAINT_ATTACK
		db MEAN_LOOK

	db 57, VILEPLUME, BITTER_BERRY
		db STUN_SPORE
		db ACID
		db MOONLIGHT
		db PETAL_DANCE

	db 59, GENGAR, GOLD_BERRY
		db SHADOW_BALL
		db ICE_PUNCH
		db CURSE
		db SPITE

	db 59, SNEASEL, NO_ITEM
		db SCREECH
		db PURSUIT
		db ICY_WIND
		db FAINT_ATTACK

	db 61, MURKROW, NO_ITEM
		db QUICK_ATTACK
		db WHIRLWIND
		db PURSUIT
		db FAINT_ATTACK

	db 62, HOUNDOOM, NO_ITEM
		db ROAR
		db PURSUIT
		db FLAMETHROWER
		db LICK

	db $ff ; end

; ================
	; KAREN (3)
	db "KAREN@"
	db 3 ; item + moves

	; party

	db 67, UMBREON, LEFTOVERS
		db TOXIC
		db MOONLIGHT
		db FAINT_ATTACK
		db CONFUSE_RAY

	db 67, SNEASEL, NO_ITEM
		db FAINT_ATTACK
		db DIG
		db SCREECH
		db METAL_CLAW

	db 69, GENGAR, NO_ITEM
		db SHADOW_BALL
		db ICE_PUNCH
		db FIRE_PUNCH
		db MOONBLAST

	db 71, MURKROW, NO_ITEM
		db WING_ATTACK
		db PERISH_SONG
		db MEAN_LOOK
		db FAINT_ATTACK

	db 72, HOUNDOOM, CHARCOAL
		db FIRE_BLAST
		db SOLARBEAM
		db SUNNY_DAY
		db FIRE_SPIN

	db 67, TYRANITAR, QUICK_CLAW
		db ROCK_SLIDE
		db EARTHQUAKE
		db IRON_TAIL
		db CRUNCH

	db $ff ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA (1)
	db "KOGA@"
	db 3 ; items + moves

	; party

	db 45, ARIADOS, NO_ITEM
		db DOUBLE_TEAM
		db SPIDER_WEB
		db BATON_PASS
		db GIGA_DRAIN

	db 46, VENOMOTH, GOLD_LEAF
		db SUPERSONIC
		db LEECH_LIFE
		db PSYCHIC_M
		db TOXIC

	db 48, FORRETRESS, NO_ITEM
		db PROTECT
		db SWIFT
		db EXPLOSION
		db SPIKES

	db 47, MUK, NUGGET
		db MINIMIZE
		db ACID_ARMOR
		db SLUDGE_BOMB
		db TOXIC

	db 49, CROBAT, NO_ITEM
		db DOUBLE_TEAM
		db QUICK_ATTACK
		db WING_ATTACK
		db TOXIC

	db $ff ; end

; ================

	; KOGA (2)
	db "KOGA@"
	db 3 ; items + moves

	; party

	db 55, QWILFISH, NO_ITEM
		db SPIKES
		db TOXIC
		db SLUDGE_BOMB
		db WHIRLPOOL

	db 55, ARIADOS, NO_ITEM
		db DOUBLE_TEAM
		db SPIDER_WEB
		db BATON_PASS
		db GIGA_DRAIN

	db 56, VENOMOTH, GOLD_LEAF
		db SUPERSONIC
		db LEECH_LIFE
		db PSYCHIC_M
		db TOXIC

	db 58, FORRETRESS, NO_ITEM
		db PROTECT
		db SWIFT
		db EXPLOSION
		db SPIKES

	db 57, MUK, NUGGET
		db MINIMIZE
		db ACID_ARMOR
		db SLUDGE_BOMB
		db TOXIC

	db 59, CROBAT, NO_ITEM
		db DOUBLE_TEAM
		db WHIRLWIND
		db WING_ATTACK
		db TOXIC

	db $ff ; end

; ================

	; KOGA (3)
	db "KOGA@"
	db 3 ; item + moves

	; party
	
	db 65, QWILFISH, FOCUS_BAND
		db SPIKES
		db TOXIC
		db SLUDGE_BOMB
		db PROTECT

	db 66, VENOMOTH, BRIGHTPOWDER
		db ATTRACT
		db LEECH_LIFE
		db PSYCHIC_M
		db SLEEP_POWDER

	db 68, VICTREEBEL, NO_ITEM
		db SWORDS_DANCE
		db PETAL_DANCE
		db SLUDGE_BOMB
		db CRUNCH

	db 67, MUK, LEFTOVERS
		db CURSE
		db SWAGGER
		db SLUDGE_BOMB
		db TOXIC

	db 67, TENTACRUEL, NO_ITEM
		db SURF
		db WRAP
		db SLUDGE_BOMB
		db TOXIC

	db 69, CROBAT, GOLD_BERRY
		db WHIRLWIND
		db SUBSTITUTE
		db SLUDGE_BOMB
		db TOXIC

	db $ff ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION (1)
	db "LANCE@"
	db 3 ; items + moves

	; party

	db 49, GYARADOS, NO_ITEM
		db FLAIL
		db RAIN_DANCE
		db SURF
		db HYPER_BEAM

	db 50, KINGDRA, NO_ITEM
		db SURF
		db TWISTER
		db ICE_BEAM
		db HYPER_BEAM

	db 52, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db TWISTER
		db BLIZZARD
		db HYPER_BEAM

	db 51, AERODACTYL, NO_ITEM
		db WING_ATTACK
		db ANCIENTPOWER
		db ROCK_SLIDE
		db HYPER_BEAM

	db 51, CHARIZARD, NO_ITEM
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db HYPER_BEAM

	db 55, DRAGONITE, NO_ITEM
		db FIRE_BLAST
		db SAFEGUARD
		db OUTRAGE
		db HYPER_BEAM

	db $ff ; end

; ================

	; CHAMPION (2)
	db "LANCE@"
	db 3 ; items + moves

	; party

	db 59, GYARADOS, NO_ITEM
		db FLAIL
		db RAIN_DANCE
		db SURF
		db HYPER_BEAM

	db 60, KINGDRA, NO_ITEM
		db SURF
		db TWISTER
		db ICE_BEAM
		db HYPER_BEAM

	db 62, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db TWISTER
		db BLIZZARD
		db HYPER_BEAM

	db 61, AERODACTYL, NO_ITEM
		db WING_ATTACK
		db ANCIENTPOWER
		db ROCK_SLIDE
		db HYPER_BEAM

	db 61, CHARIZARD, BITTER_BERRY
		db FLAMETHROWER
		db WING_ATTACK
		db OUTRAGE
		db HYPER_BEAM

	db 65, DRAGONITE, GOLD_BERRY
		db FIRE_BLAST
		db SAFEGUARD
		db OUTRAGE
		db HYPER_BEAM

	db $ff ; end

; ================

	; CHAMPION (3)
	db "LANCE@"
	db 3 ; item + moves

	; party

	db 69, GYARADOS, NO_ITEM
		db ZAP_CANNON
		db THRASH
		db SURF
		db HYPER_BEAM

	db 70, KINGDRA, MYSTIC_WATER
		db HYDRO_PUMP
		db RAIN_DANCE
		db ICE_BEAM
		db DRAGONBREATH

	db 72, DRAGONITE, SCOPE_LENS
		db THUNDER_WAVE
		db SURF
		db OUTRAGE
		db LIGHT_SCREEN

	db 71, AERODACTYL, NO_ITEM
		db FLY
		db STEEL_WING
		db ROCK_SLIDE
		db EARTHQUAKE

	db 71, CHARIZARD, GOLD_BERRY
		db BELLY_DRUM
		db EARTHQUAKE
		db ROCK_SLIDE
		db HYPER_BEAM

	db 75, DRAGONITE, LEFTOVERS
		db STEEL_WING
		db EARTHQUAKE
		db THUNDER_WAVE
		db HYPER_BEAM

	db $ff ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK (1)
	db "BROCK@"
	db 3 ; items + moves

	; party

	db 56, GRAVELER, NO_ITEM
		db DEFENSE_CURL
		db ROCK_SLIDE
		db ROLLOUT
		db EARTHQUAKE

	db 56, RHYHORN, NO_ITEM
		db FURY_ATTACK
		db SCARY_FACE
		db EARTHQUAKE
		db HORN_DRILL

	db 57, OMASTAR, NO_ITEM
		db BITE
		db SURF
		db PROTECT
		db SPIKE_CANNON

	db 59, ONIX, NO_ITEM
		db BIND
		db ROCK_SLIDE
		db BIDE
		db SANDSTORM

	db 57, KABUTOPS, NO_ITEM
		db SLASH
		db SURF
		db ENDURE
		db GIGA_DRAIN

	db $ff ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY (1)
	db "MISTY@"
	db 3 ; moves

	; party

	db 52, GOLDUCK, NO_ITEM
		db SURF
		db DISABLE
		db PSYCH_UP
		db PSYCHIC_M

	db 52, QUAGSIRE, NO_ITEM
		db SURF
		db AMNESIA
		db EARTHQUAKE
		db RAIN_DANCE

	db 54, LAPRAS, NO_ITEM
		db WHIRLPOOL
		db PERISH_SONG
		db BLIZZARD
		db RAIN_DANCE

	db 54, OMASTAR, NO_ITEM
		db SURF
		db ANCIENTPOWER
		db SPIKE_CANNON
		db RAIN_DANCE

	db 57, STARMIE, NO_ITEM
		db SURF
		db CONFUSE_RAY
		db RECOVER
		db ICE_BEAM

	db $ff ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE (1)
	db "LT.SURGE@"
	db 3 ; items + moves

	; party

	db 54, RAICHU, NO_ITEM
		db THUNDER_WAVE
		db QUICK_ATTACK
		db THUNDERBOLT
		db THUNDER

	db 50, ELECTRODE, NO_ITEM
		db SCREECH
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 50, MAGNETON, NO_ITEM
		db LOCK_ON
		db DOUBLE_TEAM
		db SWIFT
		db ZAP_CANNON

	db 50, ELECTRODE, NO_ITEM
		db SCREECH
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 56, ELECTABUZZ, NO_ITEM
		db QUICK_ATTACK
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db THUNDER

	db $ff ; end

; ================
; ================================


ScientistGroup:
; ================================
; ================

	; SCIENTIST (1)
	db "ROSS@"
	db 0 ; normal

	; party
	db 22, KOFFING
	db 24, KOFFING

	db $ff ; end

; ================

	; SCIENTIST (2)
	db "MITCH@"
	db 2 ; item

	; party
	db 24, DITTO, METAL_POWDER

	db $ff ; end

; ================

	; SCIENTIST (3)
	db "JED@"
	db 0 ; normal

	; party
	db 21, MAGNEMITE
	db 22, MAGNEMITE
	db 23, MAGNEMITE

	db $ff ; end

; ================

	; SCIENTIST (4)
	db "MARC@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 28, MAGNEMITE
	db 29, MAGNEMITE

	db $ff ; end

; ================

	; SCIENTIST (5)
	db "RICH@"
	db 1 ; moves

	; party

	db 30, PORYGON
		db SHARPEN
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA (1)
	db "ERIKA@"
	db 3 ; items + moves

	; party

	db 52, TANGELA, NO_ITEM
		db VINE_WHIP
		db BIND
		db GIGA_DRAIN
		db SLEEP_POWDER

	db 51, JUMPLUFF, NO_ITEM
		db TWISTER
		db LEECH_SEED
		db COTTON_SPORE
		db GIGA_DRAIN

	db 56, VICTREEBEL, NO_ITEM
		db SUNNY_DAY
		db SYNTHESIS
		db ACID
		db RAZOR_LEAF

	db 54, MEGANIUM, BITTER_BERRY
		db PETAL_DANCE
		db SYNTHESIS
		db REVERSAL
		db SOLARBEAM

	db 56, BELLOSSOM, NO_ITEM
		db SUNNY_DAY
		db SYNTHESIS
		db MOONBLAST
		db SOLARBEAM

	db $ff ; end

; ================
; ================================


YoungsterGroup:
; ================================
; ================

	; YOUNGSTER (1)
	db "JOEY@"
	db 0 ; normal

	; party
	db 4, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (2)
	db "MIKEY@"
	db 0 ; normal

	; party
	db 2, PIDGEY
	db 4, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (3)
	db "ALBERT@"
	db 0 ; normal

	; party
	db 6, RATTATA
	db 8, ZUBAT

	db $ff ; end

; ================

	; YOUNGSTER (4)
	db "GORDON@"
	db 0 ; normal

	; party
	db 10, WOOPER

	db $ff ; end

; ================

	; YOUNGSTER (5)
	db "SAMUEL@"
	db 0 ; normal

	; party
	db 7, RATTATA
	db 10, SANDSHREW
	db 8, SPEAROW
	db 8, SPEAROW

	db $ff ; end

; ================

	; YOUNGSTER (6)
	db "IAN@"
	db 0 ; normal

	; party
	db 10, MANKEY
	db 12, DIGLETT

	db $ff ; end

; ================

	; YOUNGSTER (7)
	db "JOEY@"
	db 0 ; normal

	; party
	db 15, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (8)
	db "JOEY@"
	db 1 ; moves

	; party

	db 21, RATICATE
		db TAIL_WHIP
		db QUICK_ATTACK
		db HYPER_FANG
		db SCARY_FACE

	db $ff ; end

; ================

	; YOUNGSTER (9)
	db "WARREN@"
	db 0 ; normal

	; party
	db 55, FEAROW

	db $ff ; end

; ================

	; YOUNGSTER (10)
	db "JIMMY@"
	db 0 ; normal

	; party
	db 53, RATICATE
	db 53, ARBOK

	db $ff ; end

; ================

	; YOUNGSTER (11)
	db "OWEN@"
	db 0 ; normal

	; party
	db 55, GROWLITHE

	db $ff ; end

; ================

	; YOUNGSTER (12)
	db "JASON@"
	db 0 ; normal

	; party
	db 53, SANDSLASH
	db 53, CROBAT

	db $ff ; end

; ================

	; YOUNGSTER (13)
	db "JOEY@"
	db 1 ; moves

	; party

	db 40, RATICATE
		db TAIL_WHIP
		db QUICK_ATTACK
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================

	; YOUNGSTER (14)
	db "JOEY@"
	db 1 ; moves

	; party

	db 57, RATICATE
		db HYPER_BEAM
		db QUICK_ATTACK
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================
; ================================


SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY (1)
	db "JACK@"
	db 0 ; normal

	; party
	db 12, ODDISH
	db 15, VOLTORB

	db $ff ; end

; ================

	; SCHOOLBOY (2)
	db "KIPP@"
	db 0 ; normal

	; party
	db 47, VOLTORB
	db 47, MAGNEMITE
	db 51, ELECTRODE
	db 51, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY (3)
	db "ALAN@"
	db 0 ; normal

	; party
	db 16, TANGELA
	db 16, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (4)
	db "JOHNNY@"
	db 0 ; normal

	; party
	db 49, BELLSPROUT
	db 51, WEEPINBELL
	db 53, VICTREEBEL

	db $ff ; end

; ================

	; SCHOOLBOY (5)
	db "DANNY@"
	db 0 ; normal

	; party
	db 51, JYNX
	db 51, ELECTABUZZ
	db 51, MAGMAR

	db $ff ; end

; ================

	; SCHOOLBOY (6)
	db "TOMMY@"
	db 0 ; normal

	; party
	db 47, XATU
	db 50, ALAKAZAM

	db $ff ; end

; ================

	; SCHOOLBOY (7)
	db "DUDLEY@"
	db 0 ; normal

	; party
	db 50, ODDISH

	db $ff ; end

; ================

	; SCHOOLBOY (8)
	db "JOE@"
	db 0 ; normal

	; party
	db 48, TANGELA
	db 48, VAPOREON

	db $ff ; end

; ================

	; SCHOOLBOY (9)
	db "BILLY@"
	db 0 ; normal

	; party
	db 47, PARAS
	db 47, PARASECT
	db 47, POLIWHIRL
	db 55, DITTO

	db $ff ; end

; ================

	; SCHOOLBOY (10)
	db "CHAD@"
	db 0 ; normal

	; party
	db 19, MR__MIME

	db $ff ; end

; ================

	; SCHOOLBOY (11)
	db "NATE@"
	db 0 ; normal

	; party
	db 48, LEDIAN
	db 48, EXEGGUTOR

	db $ff ; end

; ================

	; SCHOOLBOY (12)
	db "RICKY@"
	db 2 ; item

	; party
	db 48, AIPOM, BERSERK_GENE
	db 52, DITTO, METAL_POWDER

	db $ff ; end

; ================

	; SCHOOLBOY (13)
	db "JACK@"
	db 0 ; normal

	; party
	db 14, ODDISH
	db 17, VOLTORB

	db $ff ; end

; ================

	; SCHOOLBOY (14)
	db "JACK@"
	db 0 ; normal

	; party
	db 28, GLOOM
	db 26, GROWLITHE
	db 31, ELECTRODE

	db $ff ; end

; ================

	; SCHOOLBOY (15)
	db "ALAN@"
	db 0 ; normal

	; party
	db 17, NATU
	db 17, TANGELA
	db 17, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (16)
	db "ALAN@"
	db 0 ; normal

	; party
	db 20, NATU
	db 22, TANGELA
	db 20, QUAGSIRE
	db 25, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (17)
	db "CHAD@"
	db 0 ; normal

	; party
	db 21, MR__MIME
	db 21, MAGNEMITE

	db $ff ; end

; ================

	; SCHOOLBOY (18)
	db "CHAD@"
	db 0 ; normal

	; party
	db 27, MR__MIME
	db 31, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY (19)
	db "JACK@"
	db 0 ; normal

	; party
	db 33, GLOOM
	db 36, GROWLITHE
	db 36, ELECTRODE

	db $ff ; end

; ================

	; SCHOOLBOY (20)
	db "JACK@"
	db 1 ; moves

	; party

	db 50, ELECTRODE
		db SCREECH
		db THUNDERBOLT
		db ROLLOUT
		db LIGHT_SCREEN

	db 50, ARCANINE
		db SUNNY_DAY
		db LEER
		db EXTREMESPEED
		db FLAME_WHEEL

	db 52, VILEPLUME
		db SOLARBEAM
		db SLEEP_POWDER
		db ACID
		db MOONLIGHT

	db $ff ; end

; ================

	; SCHOOLBOY (21)
	db "ALAN@"
	db 0 ; normal

	; party
	db 37, NATU
	db 37, TANGELA
	db 40, QUAGSIRE
	db 40, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (22)
	db "ALAN@"
	db 1 ; moves

	; party

	db 47, XATU
		db PECK
		db NIGHT_SHADE
		db SWIFT
		db FUTURE_SIGHT

	db 47, TANGELA
		db POISONPOWDER
		db VINE_WHIP
		db BIND
		db MEGA_DRAIN

	db 47, YANMA
		db QUICK_ATTACK
		db DOUBLE_TEAM
		db SONICBOOM
		db SUPERSONIC

	db 50, QUAGSIRE
		db TAIL_WHIP
		db SLAM
		db AMNESIA
		db EARTHQUAKE

	db $ff ; end

; ================

	; SCHOOLBOY (23)
	db "CHAD@"
	db 0 ; normal

	; party
	db 40, MR__MIME
	db 44, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY (24)
	db "CHAD@"
	db 1 ; moves

	; party

	db 49, MR__MIME
		db PSYCHIC_M
		db LIGHT_SCREEN
		db REFLECT
		db ENCORE

	db 53, MAGNETON
		db ZAP_CANNON
		db THUNDER_WAVE
		db LOCK_ON
		db SWIFT

	db $ff ; end

; ================
; ================================


BirdKeeperGroup:
; ================================
; ================

	; BIRD_KEEPER (1)
	db "ROD@"
	db 0 ; normal

	; party
	db 7, PIDGEY
	db 7, PIDGEY

	db $ff ; end

; ================

	; BIRD_KEEPER (2)
	db "ABE@"
	db 0 ; normal

	; party
	db 9, SPEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (3)
	db "BRYAN@"
	db 0 ; normal

	; party
	db 12, PIDGEY
	db 14, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER (4)
	db "THEO@"
	db 0 ; normal

	; party
	db 21, PIDGEY
	db 19, PIDGEY
	db 23, PIDGEY
	db 19, PIDGEY
	db 19, PIDGEY

	db $ff ; end

; ================

	; BIRD_KEEPER (5)
	db "TOBY@"
	db 0 ; normal

	; party
	db 17, DODUO
	db 18, DODUO
	db 19, DODUO

	db $ff ; end

; ================

	; BIRD_KEEPER (6)
	db "DENIS@"
	db 0 ; normal

	; party
	db 22, SPEAROW
	db 24, FEAROW
	db 22, MURKROW

	db $ff ; end

; ================

	; BIRD_KEEPER (7)
	db "VANCE@"
	db 0 ; normal

	; party
	db 33, PIDGEOTTO
	db 33, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER (8)
	db "HANK@"
	db 0 ; normal

	; party
	db 47, MURKROW
	db 54, PIDGEOT

	db $ff ; end

; ================

	; BIRD_KEEPER (9)
	db "ROY@"
	db 0 ; normal

	; party
	db 49, DODRIO
	db 55, FEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (10)
	db "BORIS@"
	db 0 ; normal

	; party
	db 50, DODUO
	db 48, DODUO
	db 52, DODRIO

	db $ff ; end

; ================

	; BIRD_KEEPER (11)
	db "BOB@"
	db 0 ; normal

	; party
	db 54, NOCTOWL

	db $ff ; end

; ================

	; BIRD_KEEPER (12)
	db "JOSE@"
	db 2 ; item

	; party
	db 46, FARFETCH_D, STICK

	db $ff ; end

; ================

	; BIRD_KEEPER (13)
	db "PETER@"
	db 0 ; normal

	; party
	db 6, PIDGEY
	db 6, PIDGEY
	db 8, SPEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (14)
	db "JOSE@"
	db 2 ; item

	; party
	db 37, FARFETCH_D, STICK

	db $ff ; end

; ================

	; BIRD_KEEPER (15)
	db "PERRY@"
	db 2 ; item

	; party
	db 54, FARFETCH_D, STICK

	db $ff ; end

; ================

	; BIRD_KEEPER (16)
	db "BRET@"
	db 0 ; normal

	; party
	db 52, PIDGEOTTO
	db 52, FEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (17)
	db "JOSE@"
	db 3 ; item + moves

	; party

	db 60, FARFETCH_D, STICK
		db FURY_ATTACK
		db PROTECT
		db FLY
		db SLASH

	db $ff ; end

; ================

	; BIRD_KEEPER (18)
	db "VANCE@"
	db 0 ; normal

	; party
	db 42, PIDGEOTTO
	db 42, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER (19)
	db "VANCE@"
	db 1 ; moves

	; party

	db 58, PIDGEOT
		db TOXIC
		db QUICK_ATTACK
		db WHIRLWIND
		db FLY

	db 58, PIDGEOT
		db SWIFT
		db PROTECT
		db STEEL_WING
		db FLY

	db $ff ; end

; ================
; ================================


LassGroup:
; ================================
; ================

	; LASS (1)
	db "CARRIE@"
	db 1 ; moves

	; party

	db 18, SNUBBULL
		db SCARY_FACE
		db CHARM
		db BITE
		db LICK

	db $ff ; end

; ================

	; LASS (2)
	db "BRIDGET@"
	db 0 ; normal

	; party
	db 15, JIGGLYPUFF
	db 15, CLEFAIRY
	db 15, SNORLAX

	db $ff ; end

; ================

	; LASS (3)
	db "ALICE@"
	db 0 ; normal

	; party
	db 45, GLOOM
	db 49, ARBOK
	db 45, GLOOM

	db $ff ; end

; ================

	; LASS (4)
	db "KRISE@"
	db 0 ; normal

	; party
	db 12, ODDISH
	db 15, CUBONE

	db $ff ; end

; ================

	; LASS (5)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS (6)
	db "LINDA@"
	db 0 ; normal

	; party
	db 45, BULBASAUR
	db 47, IVYSAUR
	db 49, VENUSAUR

	db $ff ; end

; ================

	; LASS (7)
	db "LAURA@"
	db 0 ; normal

	; party
	db 44, GLOOM
	db 46, PIDGEOTTO
	db 46, BELLOSSOM

	db $ff ; end

; ================

	; LASS (8)
	db "SHANNON@"
	db 0 ; normal

	; party
	db 44, PARAS
	db 44, PARAS
	db 47, PARASECT

	db $ff ; end

; ================

	; LASS (9)
	db "MICHELLE@"
	db 0 ; normal

	; party
	db 47, SKIPLOOM
	db 48, HOPPIP
	db 49, JUMPLUFF

	db $ff ; end

; ================

	; LASS (10)
	db "DANA@"
	db 1 ; moves

	; party

	db 18, FLAAFFY
		db TACKLE
		db GROWL
		db THUNDERSHOCK
		db THUNDER_WAVE

	db 18, PSYDUCK
		db SCRATCH
		db TAIL_WHIP
		db DISABLE
		db CONFUSION

	db $ff ; end

; ================

	; LASS (11)
	db "ELLEN@"
	db 0 ; normal

	; party
	db 45, WIGGLYTUFF
	db 49, GRANBULL

	db $ff ; end

; ================

	; LASS (12)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS (13)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS (14)
	db "DANA@"
	db 1 ; moves

	; party

	db 23, FLAAFFY
		db TACKLE
		db GROWL
		db THUNDERSHOCK
		db THUNDER_WAVE

	db 23, PSYDUCK
		db SCRATCH
		db TAIL_WHIP
		db DISABLE
		db CONFUSION

	db $ff ; end

; ================

	; LASS (15)
	db "DANA@"
	db 1 ; moves

	; party

	db 29, PSYDUCK
		db SCRATCH
		db DISABLE
		db CONFUSION
		db WATER_GUN

	db 29, AMPHAROS
		db TWISTER
		db THUNDERSHOCK
		db THUNDER_WAVE
		db COTTON_SPORE

	db $ff ; end

; ================

	; LASS (16)
	db "DANA@"
	db 1 ; moves

	; party

	db 42, GOLDUCK
		db WATER_GUN
		db DISABLE
		db CONFUSION
		db SWAGGER

	db 42, AMPHAROS
		db DRAGONBREATH
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db COTTON_SPORE

	db $ff ; end

; ================

	; LASS (17)
	db "DANA@"
	db 1 ; moves

	; party

	db 56, AMPHAROS
		db SWIFT
		db THUNDERPUNCH
		db THUNDER_WAVE
		db DRAGONBREATH

	db 56, GOLDUCK
		db DISABLE
		db SURF
		db PSYCHIC_M
		db SWAGGER

	db $ff ; end

; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE (1)
	db "JANINE@"
	db 3 ; items + moves

	; party

	db 53, ARIADOS, NO_ITEM
		db SPIDER_WEB
		db BATON_PASS
		db AGILITY
		db NIGHT_SHADE

	db 56, CROBAT, NO_ITEM
		db SCREECH
		db TOXIC
		db CONFUSE_RAY
		db WING_ATTACK

	db 56, WEEZING, NO_ITEM
		db SMOG
		db SLUDGE_BOMB
		db TOXIC
		db EXPLOSION

	db 56, WEEZING, NO_ITEM
		db SMOG
		db SLUDGE_BOMB
		db TOXIC
		db EXPLOSION

	db 59, VENOMOTH, BRIGHTPOWDER
		db SUPERSONIC
		db DOUBLE_TEAM
		db LEECH_LIFE
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


CooltrainerMGroup:
; ================================
; ================

	; COOLTRAINERM (1)
	db "NICK@"
	db 0 ; normal

	; party

	db 26, CHARMANDER
	db 26, SQUIRTLE
	db 26, BULBASAUR

	db $ff ; end

; ================

	; COOLTRAINERM (2)
	db "AARON@"
	db 0 ; normal

	; party
	db 28, IVYSAUR
	db 28, CHARMELEON
	db 28, WARTORTLE

	db $ff ; end

; ================

	; COOLTRAINERM (3)
	db "PAUL@"
	db 0 ; normal

	; party
	db 34, DRATINI
	db 34, DRATINI
	db 34, DRATINI

	db $ff ; end

; ================

	; COOLTRAINERM (4)
	db "CODY@"
	db 0 ; normal

	; party
	db 34, HORSEA
	db 36, SEADRA

	db $ff ; end

; ================

	; COOLTRAINERM (5)
	db "MIKE@"
	db 0 ; normal

	; party
	db 37, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERM (6)
	db "GAVEN@"
	db 1 ; moves

	; party

	db 45, VICTREEBEL
		db WRAP
		db TOXIC
		db ACID
		db RAZOR_LEAF

	db 45, KINGLER
		db BUBBLEBEAM
		db STOMP
		db GUILLOTINE
		db PROTECT

	db 45, FLAREON
		db SAND_ATTACK
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM (7)
	db "GAVEN@"
	db 3 ; item + moves

	; party

	db 59, VICTREEBEL, NO_ITEM
		db GIGA_DRAIN
		db TOXIC
		db SLUDGE_BOMB
		db RAZOR_LEAF

	db 59, KINGLER, KINGS_ROCK
		db SURF
		db STOMP
		db GUILLOTINE
		db BLIZZARD

	db 59, FLAREON, NO_ITEM
		db FLAMETHROWER
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM (8)
	db "RYAN@"
	db 1 ; moves

	; party

	db 25, PIDGEOT
		db SAND_ATTACK
		db QUICK_ATTACK
		db WHIRLWIND
		db WING_ATTACK

	db 27, ELECTABUZZ
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db SWIFT
		db SCREECH

	db $ff ; end

; ================

	; COOLTRAINERM (9)
	db "JAKE@"
	db 1 ; moves

	; party

	db 33, PARASECT
		db LEECH_LIFE
		db SPORE
		db SLASH
		db SWORDS_DANCE

	db 35, GOLDUCK
		db CONFUSION
		db SCREECH
		db PSYCH_UP
		db FURY_SWIPES

	db $ff ; end

; ================

	; COOLTRAINERM (10)
	db "GAVEN@"
	db 1 ; moves

	; party

	db 32, VICTREEBEL
		db WRAP
		db TOXIC
		db ACID
		db RAZOR_LEAF

	db 32, KINGLER
		db BUBBLEBEAM
		db STOMP
		db GUILLOTINE
		db PROTECT

	db 32, FLAREON
		db SAND_ATTACK
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM (11)
	db "BLAKE@"
	db 1 ; moves

	; party

	db 33, MAGNETON
		db THUNDERBOLT
		db SUPERSONIC
		db SWIFT
		db SCREECH

	db 31, QUAGSIRE
		db WATER_GUN
		db SLAM
		db AMNESIA
		db EARTHQUAKE

	db 31, EXEGGCUTE
		db LEECH_SEED
		db CONFUSION
		db SLEEP_POWDER
		db SOLARBEAM

	db $ff ; end

; ================

	; COOLTRAINERM (12)
	db "BRIAN@"
	db 1 ; moves

	; party

	db 35, SANDSLASH
		db SAND_ATTACK
		db POISON_STING
		db SLASH
		db SWIFT

	db $ff ; end

; ================

	; COOLTRAINERM (13)
	db "ERICK@"
	db 0 ; normal
	; UNUSED?

	; party
	db 10, BULBASAUR
	db 10, CHARMANDER
	db 10, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (14)
	db "ANDY@"
	db 0 ; normal
	; UNUSED?

	; party
	db 10, BULBASAUR
	db 10, CHARMANDER
	db 10, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (15)
	db "TYLER@"
	db 0 ; normal
	; UNUSED?

	; party
	db 10, BULBASAUR
	db 10, CHARMANDER
	db 10, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (16)
	db "SEAN@"
	db 0 ; normal

	; party
	db 45, FLAREON
	db 45, TANGELA
	db 45, TAUROS

	db $ff ; end

; ================

	; COOLTRAINERM (17)
	db "KEVIN@"
	db 0 ; normal

	; party
	db 48, RHYHORN
	db 45, CHARMELEON
	db 45, WARTORTLE

	db $ff ; end

; ================

	; COOLTRAINERM (18)
	db "STEVE@"
	db 0 ; normal
	; UNUSED?

	; party
	db 14, BULBASAUR
	db 14, CHARMANDER
	db 14, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (19)
	db "ALLEN@"
	db 0 ; normal

	; party

	db 27, OMANYTE
	db 27, KABUTO

	db $ff ; end

; ================

	; COOLTRAINERM (20)
	db "DARIN@"
	db 1 ; moves

	; party

	db 37, DRAGONAIR
		db WRAP
		db SURF
		db DRAGON_RAGE
		db SLAM

	db $ff ; end

; ================
; ================================


CooltrainerFGroup:
; ================================
; ================

	; COOLTRAINERF (1)
	db "GWEN@"
	db 0 ; normal

	; party
	db 26, EEVEE
	db 22, FLAREON
	db 22, VAPOREON
	db 22, JOLTEON

	db $ff ; end

; ================

	; COOLTRAINERF (2)
	db "LOIS@"
	db 1 ; moves

	; party

	db 27, SKIPLOOM
		db SYNTHESIS
		db POISONPOWDER
		db MEGA_DRAIN
		db LEECH_SEED

	db 27, NINETALES
		db EMBER
		db QUICK_ATTACK
		db CONFUSE_RAY
		db SAFEGUARD

	db $ff ; end

; ================

	; COOLTRAINERF (3)
	db "FRAN@"
	db 0 ; normal

	; party
	db 37, SEADRA

	db $ff ; end

; ================

	; COOLTRAINERF (4)
	db "LOLA@"
	db 0 ; normal

	; party
	db 34, DRATINI
	db 36, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERF (5)
	db "KATE@"
	db 0 ; normal

	; party
	db 26, SHELLDER
	db 28, CLOYSTER

	db $ff ; end

; ================

	; COOLTRAINERF (6)
	db "IRENE@"
	db 0 ; normal

	; party
	db 22, GOLDEEN
	db 24, SEAKING

	db $ff ; end

; ================

	; COOLTRAINERF (7)
	db "KELLY@"
	db 0 ; normal

	; party
	db 32, MARILL
	db 29, WARTORTLE
	db 29, CROCONAW

	db $ff ; end

; ================

	; COOLTRAINERF (8)
	db "JOYCE@"
	db 3 ; items + moves

	; party

	db 36, PIKACHU, LIGHT_BALL
		db QUICK_ATTACK
		db DOUBLE_TEAM
		db THUNDERBOLT
		db THUNDER

	db 32, BLASTOISE, NO_ITEM
		db BITE
		db CURSE
		db SURF
		db RAIN_DANCE

	db $ff ; end

; ================

	; COOLTRAINERF (9)
	db "BETH@"
	db 1 ; moves

	; party

	db 36, RAPIDASH
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db AGILITY

	db $ff ; end

; ================

	; COOLTRAINERF (10)
	db "REENA@"
	db 0 ; normal

	; party
	db 31, STARMIE
	db 33, NIDOQUEEN
	db 31, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (11)
	db "MEGAN@"
	db 1 ; moves

	; party

	db 32, BULBASAUR
		db GROWL
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 32, IVYSAUR
		db GROWL
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 32, VENUSAUR
		db BODY_SLAM
		db SLEEP_POWDER
		db RAZOR_LEAF
		db SWEET_SCENT

	db $ff ; end

; ================

	; COOLTRAINERF (12)
	db "BETH@"
	db 1 ; moves

	; party

	db 49, RAPIDASH
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db AGILITY

	db $ff ; end

; ================

	; COOLTRAINERF (13)
	db "CAROL@"
	db 0 ; normal

	; party
	db 45, ELECTRODE
	db 45, STARMIE
	db 45, NINETALES

	db $ff ; end

; ================

	; COOLTRAINERF (14)
	db "QUINN@"
	db 0 ; normal

	; party
	db 58, IVYSAUR
	db 58, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (15)
	db "EMMA@"
	db 0 ; normal

	; party
	db 28, POLIWHIRL

	db $ff ; end

; ================

	; COOLTRAINERF (16)
	db "CYBIL@"
	db 0 ; moves

	; party

	db 30, BUTTERFREE
	db 30, BELLOSSOM

	db $ff ; end

; ================

	; COOLTRAINERF (17)
	db "JENN@"
	db 0 ; normal

	; party
	db 24, STARYU
	db 26, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (18)
	db "BETH@"
	db 3 ; item + moves

	; party

	db 63, RAPIDASH, FOCUS_BAND
		db STOMP
		db FIRE_SPIN
		db MEGAHORN
		db FIRE_BLAST

	db $ff ; end

; ================

	; COOLTRAINERF (19)
	db "REENA@"
	db 0 ; normal

	; party
	db 44, STARMIE
	db 46, NIDOQUEEN
	db 44, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (20)
	db "REENA@"
	db 3 ; item + moves

	; party

	db 68, STARMIE, NO_ITEM
		db DOUBLE_TEAM
		db PSYCHIC_M
		db WATERFALL
		db CONFUSE_RAY

	db 60, NIDOQUEEN, PINK_BOW
		db EARTHQUAKE
		db DOUBLE_KICK
		db TOXIC
		db BODY_SLAM

	db 68, STARMIE, NO_ITEM
		db BLIZZARD
		db PSYCHIC_M
		db WATERFALL
		db RECOVER

	db $ff ; end

; ================

	; COOLTRAINERF (21)
	db "CARA@"
	db 1 ; moves

	; party

	db 33, HORSEA
		db SMOKESCREEN
		db LEER
		db WHIRLPOOL
		db TWISTER

	db 34, SEADRA
		db SMOKESCREEN
		db LEER
		db WHIRLPOOL
		db TWISTER

	db 36, KINGDRA
		db SWIFT
		db LEER
		db WATERFALL
		db TWISTER

	db $ff ; end

; ================
; ================================


BeautyGroup:
; ================================
; ================

	; BEAUTY (1)
	db "VICTORIA@"
	db 0 ; normal

	; party
	db 13, SENTRET
	db 15, JIGGLYPUFF
	db 17, CLEFAIRY

	db $ff ; end

; ================

	; BEAUTY (2)
	db "SAMANTHA@"
	db 1 ; moves

	; party

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db PAY_DAY

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db SLASH

	db $ff ; end

; ================

	; BEAUTY (3)
	db "JULIE@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (4)
	db "JACLYN@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (5)
	db "BRENDA@"
	db 0 ; normal
	; UNUSED?

	; party
	db 16, FURRET

	db $ff ; end

; ================

	; BEAUTY (6)
	db "CASSIE@"
	db 0 ; normal

	; party
	db 48, VILEPLUME
	db 54, BUTTERFREE

	db $ff ; end

; ================

	; BEAUTY (7)
	db "CAROLINE@"
	db 0 ; normal
	; UNUSED?

	; party
	db 30, MARILL
	db 32, SEEL
	db 30, MARILL

	db $ff ; end

; ================

	; BEAUTY (8)
	db "CARLENE@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (9)
	db "JESSICA@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (10)
	db "RACHAEL@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (11)
	db "ANGELICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (12)
	db "KENDRA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (13)
	db "VERONICA@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (14)
	db "JULIA@"
	db 0 ; normal

	; party
	db 52, BAYLEEF
	db 52, EXEGGCUTE
	db 55, PARASECT

	db $ff ; end

; ================

	; BEAUTY (15)
	db "THERESA@"
	db 0 ; normal
	; UNUSED

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (16)
	db "VALERIE@"
	db 1 ; moves

	; party

	db 19, HOPPIP
		db SYNTHESIS
		db COTTON_SPORE
		db FAIRY_WIND
		db POISONPOWDER

	db 19, SKIPLOOM
		db SYNTHESIS
		db COTTON_SPORE
		db FAIRY_WIND
		db STUN_SPORE

	db $ff ; end

; ================

	; BEAUTY (17)
	db "OLIVIA@"
	db 0 ; normal

	; party
	db 22, CORSOLA

	db $ff ; end

; ================
; ================================


PokemaniacGroup:
; ================================
; ================

	; POKEMANIAC (1)
	db "LARRY@"
	db 0 ; normal

	; party
	db 10, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC (2)
	db "ANDREW@"
	db 0 ; normal

	; party
	db 24, MAROWAK
	db 24, MAROWAK

	db $ff ; end

; ================

	; POKEMANIAC (3)
	db "CALVIN@"
	db 0 ; normal

	; party
	db 26, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (4)
	db "SHANE@"
	db 0 ; normal

	; party
	db 18, NIDORINA
	db 18, NIDORINO

	db $ff ; end

; ================

	; POKEMANIAC (5)
	db "BEN@"
	db 0 ; normal

	; party
	db 23, SLOWBRO

	db $ff ; end

; ================

	; POKEMANIAC (6)
	db "BRENT@"
	db 0 ; normal

	; party
	db 22, LICKITUNG

	db $ff ; end

; ================

	; POKEMANIAC (7)
	db "RON@"
	db 0 ; normal

	; party
	db 25, NIDOKING

	db $ff ; end

; ================

	; POKEMANIAC (8)
	db "ETHAN@"
	db 0 ; normal

	; party
	db 31, RHYHORN
	db 31, RHYDON

	db $ff ; end

; ================

	; POKEMANIAC (9)
	db "BRENT@"
	db 0 ; normal

	; party
	db 30, LICKITUNG
	db 30, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (10)
	db "BRENT@"
	db 1 ; moves

	; party

	db 46, LICKITUNG
		db WRAP
		db STOMP
		db LICK
		db CUT

	db 46, KANGASKHAN
		db THUNDERPUNCH
		db ICE_PUNCH
		db DIZZY_PUNCH
		db RAGE

	db 46, PORYGON
		db RECOVER
		db PSYCHIC_M
		db CONVERSION2
		db TRI_ATTACK

	db $ff ; end

; ================

	; POKEMANIAC (11)
	db "ISAAC@"
	db 1 ; moves

	; party

	db 12, LICKITUNG
		db LICK
		db SUPERSONIC
		db CUT
		db 0

	db $ff ; end

; ================

	; POKEMANIAC (12)
	db "DONALD@"
	db 0 ; normal

	; party
	db 10, SLOWPOKE
	db 10, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC (13)
	db "ZACH@"
	db 0 ; normal

	; party
	db 32, RHYHORN

	db $ff ; end

; ================

	; POKEMANIAC (14)
	db "BRENT@"
	db 1 ; moves

	; party

	db 51, LICKITUNG
		db WRAP
		db SLAM
		db LICK
		db SCREECH

	db 51, KANGASKHAN
		db THUNDERPUNCH
		db ICE_PUNCH
		db DIZZY_PUNCH
		db REVERSAL

	db 51, PORYGON2
		db RECOVER
		db PSYCHIC_M
		db CONVERSION2
		db TRI_ATTACK

	db 51, CHANSEY
		db ROLLOUT
		db ATTRACT
		db EGG_BOMB
		db SOFTBOILED

	db $ff ; end

; ================

	; POKEMANIAC (15)
	db "MILLER@"
	db 0 ; normal

	; party
	db 20, NIDOKING
	db 20, NIDOQUEEN

	db $ff ; end

; ================
; ================================


GruntMGroup:
; ================================
; ================

	; GRUNTM (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 14, KOFFING

	db $ff ; end

; ================

	; GRUNTM (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 7, RATTATA
	db 9, ZUBAT
	db 9, ZUBAT

	db $ff ; end

; ================

	; GRUNTM (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 29, RATICATE
	db 29, RATICATE

	db $ff ; end

; ================

	; GRUNTM (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 28, GRIMER
	db 28, GRIMER
	db 30, MUK

	db $ff ; end

; ================

	; GRUNTM (5)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, RATTATA
	db 26, RATTATA
	db 28, RATTATA
	db 28, RATTATA
	db 28, RATTATA

	db $ff ; end

; ================

	; GRUNTM (6)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 31, ZUBAT
	db 31, ZUBAT

	db $ff ; end

; ================

	; GRUNTM (7)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 28, KOFFING
	db 28, GRIMER
	db 28, ZUBAT
	db 28, RATTATA

	db $ff ; end

; ================

	; GRUNTM (8)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 31, WEEZING

	db $ff ; end

; ================

	; GRUNTM (9)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 29, RATICATE
	db 31, KOFFING

	db $ff ; end

; ================

	; GRUNTM (10)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 27, ZUBAT
	db 29, GOLBAT
	db 27, GRIMER

	db $ff ; end

; ================

	; GRUNTM (11)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 28, MUK
	db 28, KOFFING
	db 30, RATTATA

	db $ff ; end

; ================

	; GRUNTM (12)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 38, HOUNDOUR

	db $ff ; end

; ================

	; GRUNTM (13)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 32, RATTATA

	db $ff ; end

; ================

	; GRUNTM (14)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 29, RATICATE
	db 29, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (15)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 31, GRIMER
	db 28, WEEZING

	db $ff ; end

; ================

	; GRUNTM (16)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 21, RATTATA
	db 21, RATTATA
	db 21, RATTATA
	db 21, RATTATA

	db $ff ; end

; ================

	; GRUNTM (17)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (18)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 22, RATTATA
	db 22, ZUBAT
	db 22, RATTATA

	db $ff ; end

; ================

	; GRUNTM (19)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 23, VENONAT
	db 23, VENONAT

	db $ff ; end

; ================

	; GRUNTM (20)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 22, DROWZEE
	db 24, ZUBAT

	db $ff ; end

; ================

	; GRUNTM (21)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 21, ZUBAT
	db 22, GRIMER
	db 23, RATTATA

	db $ff ; end

; ================

	; GRUNTM (22)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 36, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (23)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 30, KOFFING

	db $ff ; end

; ================

	; GRUNTM (24)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 25, KOFFING
	db 25, KOFFING

	db $ff ; end

; ================

	; GRUNTM (25)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, KOFFING
	db 24, MUK

	db $ff ; end

; ================

	; GRUNTM (26)
	; UNUSED?
	db "GRUNT@"
	db 0 ; normal

	; party
	db 15, RATTATA
	db 15, RATTATA

	db $ff ; end

; ================

	; GRUNTM (27)
	; UNUSED?
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 22, ZUBAT

	db $ff ; end

; ================

	; GRUNTM (28)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 33, RATICATE

	db $ff ; end

; ================

	; GRUNTM (29)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 9, RATTATA
	db 9, RATTATA

	db $ff ; end

; ================

	; GRUNTM (30)
	; UNUSED?
	db "GRUNT@"
	db 0 ; normal

	; party
	db 25, GOLBAT
	db 25, GOLBAT
	db 30, ARBOK

	db $ff ; end

; ================

	; GRUNTM (31)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 50, GOLBAT

	db $ff ; end

; ================
; ================================


GentlemanGroup:
; ================================
; ================

	; GENTLEMAN (1)
	db "PRESTON@"
	db 0 ; normal

	; party
	db 18, GROWLITHE
	db 18, GROWLITHE

	db $ff ; end

; ================

	; GENTLEMAN (2)
	db "EDWARD@"
	db 0 ; normal

	; party
	db 53, PERSIAN

	db $ff ; end

; ================

	; GENTLEMAN (3)
	db "GREGORY@"
	db 0 ; normal

	; party
	db 52, PIKACHU
	db 48, FLAAFFY

	db $ff ; end

; ================

	; GENTLEMAN (4)
	db "VIRGIL@"
	db 0 ; normal

	; party
	db 20, PONYTA

	db $ff ; end

; ================

	; GENTLEMAN (5)
	db "ALFRED@"
	db 0 ; normal

	; party
	db 20, NOCTOWL

	db $ff ; end

; ================
; ================================


SkierGroup:
; ================================
; ================

	; SKIER (1)
	db "ROXANNE@"
	db 0 ; normal

	; party
	db 28, JYNX

	db $ff ; end

; ================

	; SKIER (2)
	db "CLARISSA@"
	db 0 ; normal

	; party
	db 28, DEWGONG

	db $ff ; end

; ================

	; SKIER (3)
	db "KATHY@"
	db 0 ; normal

	; party
	db 50, JYNX
	db 50, LAPRAS

	db $ff ; end

; ================

	; SKIER (4)
	db "LEXIE@"
	db 0 ; normal

	; party
	db 35, MARILL
	db 35, CLEFAIRY

	db $ff ; end

; ================
; ================================


TeacherGroup:
; ================================
; ================

	; TEACHER (1)
	db "COLETTE@"
	db 0 ; normal

	; party
	db 56, CLEFAIRY

	db $ff ; end

; ================

	; TEACHER (2)
	db "HILLARY@"
	db 2 ; item

	; party
	db 52, AIPOM, NO_ITEM
	db 56, MAROWAK, THICK_CLUB

	db $ff ; end

; ================

	; TEACHER (3)
	db "SHIRLEY@"
	db 0 ; normal

	; party
	db 55, JIGGLYPUFF

	db $ff ; end

; ================

	; TEACHER (4)
	db "MOLLY@"
	db 0 ; normal

	; party
	db 22, GIRAFARIG
	db 21, MR__MIME
	db 20, KADABRA

	db $ff ; end

; ================

	; TEACHER (5)
	db "TINA@"
	db 0 ; normal

	; party
	db 5, EEVEE
	db 5, SENTRET
	db 5, RATTATA

	db $ff ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA (1)
	db "SABRINA@"
	db 1 ; moves

	; party

	db 56, ESPEON
		db SAND_ATTACK
		db CHARM
		db SWIFT
		db PSYCHIC_M

	db 56, MR__MIME
		db BARRIER
		db REFLECT
		db BATON_PASS
		db MOONBLAST

	db 58, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db PSYCH_UP

	db 56, XATU
		db FUTURE_SIGHT
		db NIGHT_SHADE
		db FAINT_ATTACK
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


BugCatcherGroup:
; ================================
; ================

	; BUG_CATCHER (1)
	db "DON@"
	db 0 ; normal

	; party
	db 3, CATERPIE
	db 3, CATERPIE

	db $ff ; end

; ================

	; BUG_CATCHER (2)
	db "ROB@"
	db 0 ; normal

	; party
	db 52, BEEDRILL
	db 52, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER (3)
	db "ED@"
	db 0 ; normal

	; party
	db 50, BEEDRILL
	db 50, BEEDRILL
	db 50, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER (4)
	db "WADE@"
	db 0 ; normal

	; party
	db 2, CATERPIE
	db 2, CATERPIE
	db 3, WEEDLE
	db 2, CATERPIE

	db $ff ; end

; ================

	; BUG_CATCHER (5)
	db "BENNY@"
	db 0 ; normal

	; party
	db 7, WEEDLE
	db 9, KAKUNA
	db 12, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER (6)
	db "AL@"
	db 0 ; normal

	; party
	db 12, CATERPIE
	db 12, WEEDLE

	db $ff ; end

; ================

	; BUG_CATCHER (7)
	db "JOSH@"
	db 0 ; normal

	; party
	db 13, PARAS

	db $ff ; end

; ================

	; BUG_CATCHER (8)
	db "ARNIE@"
	db 0 ; normal

	; party
	db 15, VENONAT

	db $ff ; end

; ================

	; BUG_CATCHER (9)
	db "KEN@"
	db 0 ; normal

	; party
	db 50, ARIADOS
	db 52, PINSIR

	db $ff ; end

; ================

	; BUG_CATCHER (10)
	db "WADE@"
	db 0 ; normal

	; party
	db 9, METAPOD
	db 9, METAPOD
	db 9, KAKUNA
	db 9, METAPOD

	db $ff ; end

; ================

	; BUG_CATCHER (11)
	db "WADE@"
	db 0 ; normal

	; party
	db 16, BUTTERFREE
	db 16, BUTTERFREE
	db 17, BEEDRILL
	db 16, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER (12)
	db "DOUG@"
	db 0 ; normal

	; party
	db 54, ARIADOS

	db $ff ; end

; ================

	; BUG_CATCHER (13)
	db "ARNIE@"
	db 0 ; normal

	; party
	db 21, VENONAT

	db $ff ; end

; ================

	; BUG_CATCHER (14)
	db "ARNIE@"
	db 1 ; moves

	; party

	db 28, VENOMOTH
		db DISABLE
		db SUPERSONIC
		db CONFUSION
		db LEECH_LIFE

	db $ff ; end

; ================

	; BUG_CATCHER (15)
	db "WADE@"
	db 1 ; moves

	; party

	db 34, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db WHIRLWIND

	db 34, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db WHIRLWIND

	db 35, BEEDRILL
		db FURY_ATTACK
		db FOCUS_ENERGY
		db TWINEEDLE
		db RAGE

	db 34, BUTTERFREE
		db CONFUSION
		db SLEEP_POWDER
		db SUPERSONIC
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER (16)
	db "WADE@"
	db 1 ; moves

	; party

	db 50, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db GUST

	db 50, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db GUST

	db 52, BEEDRILL
		db FURY_ATTACK
		db PURSUIT
		db TWINEEDLE
		db DOUBLE_TEAM

	db 54, BUTTERFREE
		db PSYBEAM
		db SLEEP_POWDER
		db GUST
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER (17)
	db "ARNIE@"
	db 1 ; moves

	; party

	db 46, VENOMOTH
		db GUST
		db SUPERSONIC
		db PSYBEAM
		db LEECH_LIFE

	db $ff ; end

; ================

	; BUG_CATCHER (18)
	db "ARNIE@"
	db 1 ; moves

	; party

	db 50, VENOMOTH
		db LEECH_LIFE
		db SUPERSONIC
		db PSYCHIC_M
		db TOXIC

	db $ff ; end

; ================

	; BUG_CATCHER (19)
	db "WAYNE@"
	db 0 ; normal

	; party
	db 8, LEDYBA
	db 10, PARAS

	db $ff ; end

; ================
; ================================


FisherGroup:
; ================================
; ================

	; FISHER (1)
	db "JUSTIN@"
	db 0 ; normal

	; party
	db 5, MAGIKARP
	db 5, MAGIKARP
	db 15, MAGIKARP
	db 5, MAGIKARP

	db $ff ; end

; ================

	; FISHER (2)
	db "RALPH@"
	db 0 ; normal

	; party
	db 10, GOLDEEN

	db $ff ; end

; ================

	; FISHER (3)
	db "ARNOLD@"
	db 0 ; normal

	; party
	db 49, TENTACRUEL

	db $ff ; end

; ================

	; FISHER (4)
	db "KYLE@"
	db 0 ; normal

	; party
	db 48, SEAKING
	db 51, POLIWHIRL
	db 51, SEAKING

	db $ff ; end

; ================

	; FISHER (5)
	db "HENRY@"
	db 0 ; normal

	; party
	db 8, POLIWAG
	db 8, POLIWAG

	db $ff ; end

; ================

	; FISHER (6)
	db "MARVIN@"
	db 0 ; normal

	; party
	db 15, MAGIKARP
	db 15, GYARADOS
	db 20, MAGIKARP
	db 20, GYARADOS

	db $ff ; end

; ================

	; FISHER (7)
	db "TULLY@"
	db 0 ; normal

	; party
	db 18, QWILFISH

	db $ff ; end

; ================

	; FISHER (8)
	db "ANDRE@"
	db 0 ; normal

	; party
	db 27, GYARADOS

	db $ff ; end

; ================

	; FISHER (9)
	db "RAYMOND@"
	db 0 ; normal

	; party
	db 22, MAGIKARP
	db 22, MAGIKARP
	db 22, MAGIKARP
	db 22, MAGIKARP

	db $ff ; end

; ================

	; FISHER (10)
	db "WILTON@"
	db 0 ; normal

	; party
	db 23, GOLDEEN
	db 25, GOLDEEN
	db 27, SEAKING

	db $ff ; end

; ================

	; FISHER (11)
	db "EDGAR@"
	db 1 ; moves

	; party

	db 25, REMORAID
		db LOCK_ON
		db PSYBEAM
		db AURORA_BEAM
		db BUBBLEBEAM

	db 25, OCTILLERY
		db LOCK_ON
		db PSYBEAM
		db AURORA_BEAM
		db OCTAZOOKA

	db $ff ; end

; ================

	; FISHER (12)
	db "JONAH@"
	db 0 ; normal

	; party
	db 45, SHELLDER
	db 49, OCTILLERY
	db 45, REMORAID
	db 49, CLOYSTER

	db $ff ; end

; ================

	; FISHER (13)
	db "MARTIN@"
	db 0 ; normal

	; party
	db 52, REMORAID
	db 52, OCTILLERY

	db $ff ; end

; ================

	; FISHER (14)
	db "STEPHEN@"
	db 0 ; normal

	; party
	db 75, MAGIKARP
	db 75, MAGIKARP
	db 50, QWILFISH
	db 50, TENTACRUEL

	db $ff ; end

; ================

	; FISHER (15)
	db "BARNEY@"
	db 0 ; normal

	; party
	db 50, GYARADOS
	db 50, GYARADOS
	db 50, GYARADOS

	db $ff ; end

; ================

	; FISHER (16)
	db "RALPH@"
	db 0 ; normal

	; party
	db 19, GOLDEEN

	db $ff ; end

; ================

	; FISHER (17)
	db "RALPH@"
	db 0 ; normal

	; party
	db 19, QWILFISH
	db 21, GOLDEEN

	db $ff ; end

; ================

	; FISHER (18)
	db "TULLY@"
	db 0 ; normal

	; party
	db 28, QWILFISH

	db $ff ; end

; ================

	; FISHER (19)
	db "TULLY@"
	db 0 ; normal

	; party
	db 38, GOLDEEN
	db 38, HORSEA
	db 38, QWILFISH

	db $ff ; end

; ================

	; FISHER (20)
	db "WILTON@"
	db 0 ; normal

	; party
	db 39, GOLDEEN
	db 39, GOLDEEN
	db 42, SEAKING

	db $ff ; end

; ================

	; FISHER (21)
	db "SCOTT@"
	db 0 ; normal

	; party
	db 30, QWILFISH
	db 30, QWILFISH
	db 34, SEAKING

	db $ff ; end

; ================

	; FISHER (22)
	db "WILTON@"
	db 1 ; moves

	; party

	db 49, SEAKING
		db SUPERSONIC
		db WATERFALL
		db FLAIL
		db FURY_ATTACK

	db 49, SEAKING
		db SUPERSONIC
		db WATERFALL
		db FLAIL
		db FURY_ATTACK

	db 53, REMORAID
		db PSYBEAM
		db AURORA_BEAM
		db BUBBLEBEAM
		db HYPER_BEAM

	db $ff ; end

; ================

	; FISHER (23)
	db "RALPH@"
	db 0 ; normal

	; party
	db 35, QWILFISH
	db 37, GOLDEEN

	db $ff ; end

; ================

	; FISHER (24)
	db "RALPH@"
	db 1 ; moves

	; party

	db 50, QWILFISH
		db TOXIC
		db MINIMIZE
		db SURF
		db PIN_MISSILE

	db 54, SEAKING
		db ENDURE
		db FLAIL
		db FURY_ATTACK
		db WATERFALL

	db $ff ; end

; ================

	; FISHER (25)
	db "TULLY@"
	db 1 ; moves

	; party

	db 49, SEAKING
		db SUPERSONIC
		db RAIN_DANCE
		db WATERFALL
		db FURY_ATTACK

	db 49, SEADRA
		db SMOKESCREEN
		db RAIN_DANCE
		db WATERFALL
		db DRAGONBREATH

	db 52, QWILFISH
		db ROLLOUT
		db SURF
		db PIN_MISSILE
		db TAKE_DOWN

	db $ff ; end

; ================
; ================================


SwimmerMGroup:
; ================================
; ================

	; SWIMMERM (1)
	db "HAROLD@"
	db 0 ; normal

	; party
	db 52, REMORAID
	db 50, SEADRA

	db $ff ; end

; ================

	; SWIMMERM (2)
	db "SIMON@"
	db 0 ; normal

	; party
	db 20, TENTACOOL
	db 20, TENTACOOL

	db $ff ; end

; ================

	; SWIMMERM (3)
	db "RANDALL@"
	db 0 ; normal

	; party
	db 18, SHELLDER
	db 20, WARTORTLE
	db 18, MARILL

	db $ff ; end

; ================

	; SWIMMERM (4)
	db "CHARLIE@"
	db 0 ; normal

	; party
	db 21, SHELLDER
	db 19, TENTACOOL
	db 19, TENTACRUEL

	db $ff ; end

; ================

	; SWIMMERM (5)
	db "GEORGE@"
	db 0 ; normal

	; party
	db 16, TENTACOOL
	db 17, TENTACOOL
	db 16, SEEL
	db 19, STARYU
	db 17, REMORAID
	db 19, OCTILLERY

	db $ff ; end

; ================

	; SWIMMERM (6)
	db "BERKE@"
	db 0 ; normal

	; party
	db 23, QWILFISH

	db $ff ; end

; ================

	; SWIMMERM (7)
	db "KIRK@"
	db 0 ; normal

	; party
	db 20, GYARADOS
	db 20, GYARADOS

	db $ff ; end

; ================

	; SWIMMERM (8)
	db "MATTHEW@"
	db 0 ; normal

	; party
	db 23, KRABBY
	db 23, OMANYTE
	db 23, KABUTO

	db $ff ; end

; ================

	; SWIMMERM (9)
	db "HAL@"
	db 0 ; normal

	; party
	db 24, SEEL
	db 25, DEWGONG
	db 24, SEEL

	db $ff ; end

; ================

	; SWIMMERM (10)
	db "PATON@"
	db 0 ; normal

	; party
	db 26, PILOSWINE
	db 26, PILOSWINE

	db $ff ; end

; ================

	; SWIMMERM (11)
	db "DARYL@"
	db 0 ; normal

	; party
	db 24, SHELLDER
	db 25, CLOYSTER
	db 24, SHELLDER

	db $ff ; end

; ================

	; SWIMMERM (12)
	db "WALTER@"
	db 0 ; normal

	; party
	db 15, HORSEA
	db 15, HORSEA
	db 20, SEADRA

	db $ff ; end

; ================

	; SWIMMERM (13)
	db "TONY@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (14)
	db "JEROME@"
	db 0 ; normal

	; party
	db 46, SEADRA
	db 48, TENTACOOL
	db 50, TENTACRUEL
	db 48, GOLDEEN

	db $ff ; end

; ================

	; SWIMMERM (15)
	db "TUCKER@"
	db 0 ; normal

	; party
	db 50, SHELLDER
	db 54, CLOYSTER

	db $ff ; end

; ================

	; SWIMMERM (16)
	db "RICK@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (17)
	db "CAMERON@"
	db 0 ; normal

	; party
	db 49, MARILL
	db 51, AZUMARILL

	db $ff ; end

; ================

	; SWIMMERM (18)
	db "SETH@"
	db 0 ; normal

	; party
	db 49, QUAGSIRE
	db 49, OCTILLERY
	db 52, QUAGSIRE

	db $ff ; end

; ================

	; SWIMMERM (19)
	db "JAMES@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (20)
	db "LEWIS@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (21)
	db "PARKER@"
	db 0 ; normal

	; party
	db 47, HORSEA
	db 49, SEADRA
	db 51, KINGDRA

	db $ff ; end

; ================
; ================================


SwimmerFGroup:
; ================================
; ================

	; SWIMMERF (1)
	db "ELAINE@"
	db 0 ; normal

	; party
	db 21, STARYU

	db $ff ; end

; ================

	; SWIMMERF (2)
	db "PAULA@"
	db 0 ; normal

	; party
	db 19, STARYU
	db 19, SHELLDER

	db $ff ; end

; ================

	; SWIMMERF (3)
	db "KAYLEE@"
	db 0 ; normal

	; party
	db 18, GOLDEEN
	db 20, GOLDEEN
	db 20, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (4)
	db "SUSIE@"
	db 0 ; none

	; party

	db 20, PSYDUCK
	db 22, GOLDEEN
	db 24, TOTODILE

	db $ff ; end

; ================

	; SWIMMERF (5)
	db "DENISE@"
	db 0 ; normal

	; party
	db 22, SEEL

	db $ff ; end

; ================

	; SWIMMERF (6)
	db "KARA@"
	db 0 ; normal

	; party
	db 20, STARYU
	db 20, STARMIE

	db $ff ; end

; ================

	; SWIMMERF (7)
	db "WENDY@"
	db 1 ; moves

	; party

	db 21, HORSEA
		db BUBBLE
		db SMOKESCREEN
		db LEER
		db WATER_GUN

	db 21, HORSEA
		db DRAGON_RAGE
		db SMOKESCREEN
		db LEER
		db WATER_GUN

	db $ff ; end

; ================

	; SWIMMERF (8)
	db "LISA@"
	db 0 ; normal

	; party
	db 28, JYNX

	db $ff ; end

; ================

	; SWIMMERF (9)
	db "JILL@"
	db 0 ; normal

	; party
	db 28, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF (10)
	db "MARY@"
	db 0 ; normal

	; party
	db 20, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (11)
	db "KATIE@"
	db 0 ; normal

	; party
	db 33, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF (12)
	db "DAWN@"
	db 0 ; normal

	; party
	db 50, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (13)
	db "TARA@"
	db 0 ; normal

	; party
	db 20, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (14)
	db "NICOLE@"
	db 0 ; normal

	; party
	db 49, MARILL
	db 50, AZUMARILL
	db 52, LAPRAS

	db $ff ; end

; ================

	; SWIMMERF (15)
	db "LORI@"
	db 0 ; normal

	; party
	db 52, STARMIE
	db 52, STARMIE

	db $ff ; end

; ================

	; SWIMMERF (16)
	db "JODY@"
	db 0 ; normal

	; party
	db 20, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (17)
	db "NIKKI@"
	db 0 ; normal

	; party
	db 48, SEEL
	db 48, DEWGONG
	db 48, SEEL
	db 48, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF (18)
	db "DIANA@"
	db 0 ; normal

	; party
	db 52, GOLDUCK

	db $ff ; end

; ================

	; SWIMMERF (19)
	db "BRIANA@"
	db 0 ; normal

	; party
	db 50, SEAKING
	db 50, SEAKING

	db $ff ; end

; ================
; ================================


SailorGroup:
; ================================
; ================

	; SAILOR (1)
	db "EUGENE@"
	db 0 ; normal

	; party
	db 17, POLIWHIRL
	db 17, RATICATE
	db 19, KRABBY

	db $ff ; end

; ================

	; SAILOR (2)
	db "HUEY@"
	db 0 ; normal

	; party
	db 18, POLIWAG
	db 18, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (3)
	db "TERRELL@"
	db 0 ; normal

	; party
	db 20, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (4)
	db "KENT@"
	db 1 ; moves

	; party

	db 18, KRABBY
		db BUBBLE
		db LEER
		db VICEGRIP
		db HARDEN

	db 20, KRABBY
		db BUBBLEBEAM
		db LEER
		db VICEGRIP
		db HARDEN

	db $ff ; end

; ================

	; SAILOR (5)
	db "ERNEST@"
	db 0 ; normal

	; party
	db 18, MACHOP
	db 18, MACHOP
	db 18, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (6)
	db "JEFF@"
	db 0 ; normal

	; party
	db 47, RATICATE
	db 47, RATICATE

	db $ff ; end

; ================

	; SAILOR (7)
	db "GARRETT@"
	db 0 ; normal

	; party
	db 49, KINGLER

	db $ff ; end

; ================

	; SAILOR (8)
	db "KENNETH@"
	db 0 ; normal

	; party
	db 48, MACHOP
	db 48, MACHOKE
	db 48, POLIWRATH
	db 48, MACHAMP

	db $ff ; end

; ================

	; SAILOR (9)
	db "STANLEY@"
	db 0 ; normal

	; party
	db 48, MACHOP
	db 52, MACHOKE
	db 48, GOLDUCK

	db $ff ; end

; ================

	; SAILOR (10)
	db "HARRY@"
	db 0 ; normal

	; party
	db 19, WOOPER

	db $ff ; end

; ================

	; SAILOR (11)
	db "HUEY@"
	db 0 ; normal

	; party
	db 28, POLIWHIRL
	db 28, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (12)
	db "HUEY@"
	db 0 ; normal

	; party
	db 44, POLITOED
	db 44, POLIWRATH

	db $ff ; end

; ================

	; SAILOR (13)
	db "HUEY@"
	db 1 ; moves

	; party

	db 48, POLITOED
		db WHIRLPOOL
		db RAIN_DANCE
		db BODY_SLAM
		db PERISH_SONG

	db 48, POLIWRATH
		db SURF
		db STRENGTH
		db ICE_PUNCH
		db SUBMISSION

	db $ff ; end

; ================
; ================================


SuperNerdGroup:
; ================================
; ================

	; SUPER_NERD (1)
	db "STAN@"
	db 0 ; normal

	; party
	db 20, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD (2)
	db "ERIC@"
	db 0 ; normal

	; party
	db 11, GRIMER
	db 11, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD (3)
	db "GREGG@"
	db 0 ; normal

	; party
	db 20, MAGNEMITE
	db 20, MAGNEMITE
	db 20, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (4)
	db "JAY@"
	db 0 ; normal

	; party
	db 22, KOFFING
	db 22, KOFFING

	db $ff ; end

; ================

	; SUPER_NERD (5)
	db "DAVE@"
	db 0 ; normal

	; party
	db 24, DITTO

	db $ff ; end

; ================

	; SUPER_NERD (6)
	db "SAM@"
	db 0 ; normal

	; party
	db 52, GRIMER
	db 54, MUK

	db $ff ; end

; ================

	; SUPER_NERD (7)
	db "TOM@"
	db 0 ; normal

	; party
	db 48, MAGNEMITE
	db 48, MAGNEMITE
	db 52, MAGNETON

	db $ff ; end

; ================

	; SUPER_NERD (8)
	db "PAT@"
	db 0 ; normal

	; party
	db 36, PORYGON

	db $ff ; end

; ================

	; SUPER_NERD (9)
	db "SHAWN@"
	db 0 ; normal

	; party
	db 46, MAGNEMITE
	db 48, MUK
	db 50, MAGNETON

	db $ff ; end

; ================

	; SUPER_NERD (10)
	db "TERU@"
	db 0 ; normal

	; party
	db 7, MAGNEMITE
	db 11, VOLTORB
	db 7, MAGNEMITE
	db 9, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (11)
	db "RUSS@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 27, MAGNEMITE
	db 27, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (12)
	db "NORTON@"
	db 1 ; moves

	; party

	db 30, PORYGON
		db CONVERSION
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================

	; SUPER_NERD (13)
	db "HUGH@"
	db 1 ; moves

	; party

	db 39, SEADRA
		db SMOKESCREEN
		db TWISTER
		db SURF
		db WATERFALL

	db $ff ; end

; ================

	; SUPER_NERD (14)
	db "MARKUS@"
	db 1 ; moves

	; party

	db 21, SLOWPOKE
		db CURSE
		db WATER_GUN
		db GROWL
		db STRENGTH

	db $ff ; end

; ================
; ================================


Rival2Group:
; ================================
; ================

	; RIVAL2 (1)
	db "?@"
	db 3 ; items + moves

	; party

	db 56, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 47, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 56, MAGNETON, NO_ITEM
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 58, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 58, ALAKAZAM, NO_ITEM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 60, MEGANIUM, MIRACLE_SEED
		db RAZOR_LEAF
		db POISONPOWDER
		db BODY_SLAM
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL2 (2)
	db "?@"
	db 3 ; items + moves

	; party

	db 56, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 57, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 56, MAGNETON, NO_ITEM
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 58, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 58, ALAKAZAM, NO_ITEM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 60, TYPHLOSION, CHARCOAL
		db SMOKESCREEN
		db QUICK_ATTACK
		db FLAME_WHEEL
		db SWIFT

	db $ff ; end

; ================

	; RIVAL2 (3)
	db "?@"
	db 3 ; moves

	; party

	db 56, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 57, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 56, MAGNETON, NO_ITEM
		db THUNDERSHOCK
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 58, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 58, ALAKAZAM, NO_ITEM
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 60, FERALIGATR, MYSTIC_WATER
		db RAGE
		db WATER_GUN
		db SCARY_FACE
		db SLASH

	db $ff ; end

; ================

	; RIVAL2 (4)
	db "?@"
	db 3 ; item + moves

	; party

	db 60, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 63, CROBAT, NO_ITEM
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 60, MAGNETON, NO_ITEM
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 61, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 61, ALAKAZAM, NO_ITEM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 65, MEGANIUM, MIRACLE_SEED
		db GIGA_DRAIN
		db BODY_SLAM
		db LIGHT_SCREEN
		db SAFEGUARD

	db $ff ; end

; ================

	; RIVAL2 (5)
	db "?@"
	db 3 ; item + moves

	; party

	db 60, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 63, CROBAT, NO_ITEM
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 60, MAGNETON, NO_ITEM
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 61, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 61, ALAKAZAM, NO_ITEM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 65, TYPHLOSION, CHARCOAL
		db SMOKESCREEN
		db QUICK_ATTACK
		db FIRE_BLAST
		db SWIFT

	db $ff ; end

; ================

	; RIVAL2 (6)
	db "?@"
	db 3 ; item + moves

	; party

	db 60, SNEASEL, NO_ITEM
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db FURY_CUTTER

	db 63, CROBAT, NO_ITEM
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 60, MAGNETON, NO_ITEM
		db THUNDER
		db SONICBOOM
		db THUNDER_WAVE
		db SWIFT

	db 61, GENGAR, NO_ITEM
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 61, ALAKAZAM, NO_ITEM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db 65, FERALIGATR, MYSTIC_WATER
		db SURF
		db RAIN_DANCE
		db SLASH
		db SCREECH

	db $ff ; end

; ================
; ================================


GuitaristGroup:
; ================================
; ================

	; GUITARIST (1)
	db "CLYDE@"
	db 0 ; normal

	; party
	db 52, ELEKID
	db 54, ELECTABUZZ

	db $ff ; end

; ================

	; GUITARIST (2)
	db "VINCENT@"
	db 0 ; normal

	; party
	db 57, MAGNEMITE
	db 53, VOLTORB
	db 52, MAGNETON
	db 52, ELECTRODE

	db $ff ; end

; ================

	; GUITARIST (3)
	db "BILLYJOE@"
	db 0 ; normal

	; party
	db 44, KOFFING
	db 46, KOFFING
	db 48, KOFFING
	db 50, KOFFING
	db 52, KOFFING
	db 54, BEEDRILL

	db $ff ; end

; ================
; ================================


HikerGroup:
; ================================
; ================

	; HIKER (1)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 21, GRAVELER
	db 23, MACHOKE

	db $ff ; end

; ================

	; HIKER (2)
	db "RUSSELL@"
	db 0 ; normal

	; party
	db 4, GEODUDE
	db 6, GEODUDE
	db 8, GEODUDE

	db $ff ; end

; ================

	; HIKER (3)
	db "PHILLIP@"
	db 0 ; normal

	; party
	db 23, GEODUDE
	db 23, GRAVELER
	db 23, GOLEM

	db $ff ; end

; ================

	; HIKER (4)
	db "LEONARD@"
	db 0 ; normal

	; party
	db 23, GEODUDE
	db 25, MACHOP

	db $ff ; end

; ================

	; HIKER (5)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 11, GEODUDE
	db 11, MACHOP

	db $ff ; end

; ================

	; HIKER (6)
	db "BENJAMIN@"
	db 0 ; normal

	; party
	db 16, DIGLETT
	db 16, GEODUDE
	db 18, DUGTRIO

	db $ff ; end

; ================

	; HIKER (7)
	db "ERIK@"
	db 0 ; normal

	; party
	db 29, MANKEY
	db 32, RHYHORN
	db 32, PRIMEAPE

	db $ff ; end

; ================

	; HIKER (8)
	db "MICHAEL@"
	db 0 ; normal

	; party
	db 30, GEODUDE
	db 30, GRAVELER
	db 30, GOLEM

	db $ff ; end

; ================

	; HIKER (9)
	db "PARRY@"
	db 0 ; normal

	; party
	db 45, ONIX
	db 43, SWINUB

	db $ff ; end

; ================

	; HIKER (10)
	db "TIMOTHY@"
	db 1 ; moves

	; party

	db 32, DIGLETT
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 32, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db $ff ; end

; ================

	; HIKER (11)
	db "BAILEY@"
	db 0 ; normal

	; party
	db 13, GEODUDE
	db 13, RHYHORN
	db 13, GEODUDE
	db 13, SLUGMA
	db 13, GEODUDE

	db $ff ; end

; ================

	; HIKER (12)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 25, GRAVELER
	db 27, GRAVELER
	db 29, MACHOKE

	db $ff ; end

; ================

	; HIKER (13)
	db "TIM@"
	db 0 ; normal

	; party
	db 51, GRAVELER
	db 51, MAGCARGO
	db 51, GRAVELER

	db $ff ; end

; ================

	; HIKER (14)
	db "NOLAND@"
	db 0 ; normal

	; party
	db 31, SANDSLASH
	db 33, GOLEM

	db $ff ; end

; ================

	; HIKER (15)
	db "SIDNEY@"
	db 0 ; normal

	; party
	db 54, DUGTRIO
	db 52, STEELIX

	db $ff ; end

; ================

	; HIKER (16)
	db "KENNY@"
	db 0 ; normal

	; party
	db 47, SANDSLASH
	db 49, GRAVELER
	db 51, GOLEM
	db 49, GRAVELER

	db $ff ; end

; ================

	; HIKER (17)
	db "JIM@"
	db 0 ; normal

	; party
	db 55, MACHAMP

	db $ff ; end

; ================

	; HIKER (18)
	db "DANIEL@"
	db 0 ; normal

	; party
	db 11, ONIX

	db $ff ; end

; ================

	; HIKER (19)
	db "PARRY@"
	db 1 ; moves

	; party

	db 55, PILOSWINE
		db EARTHQUAKE
		db BLIZZARD
		db REST
		db TAKE_DOWN

	db 55, DUGTRIO
		db MAGNITUDE
		db DIG
		db MUD_SLAP
		db SLASH

	db 58, STEELIX
		db DIG
		db IRON_TAIL
		db SANDSTORM
		db SLAM

	db $ff ; end

; ================

	; HIKER (20)
	db "PARRY@"
	db 0 ; normal

	; party
	db 32, ONIX

	db $ff ; end

; ================

	; HIKER (21)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 40, GRAVELER
	db 40, GOLEM
	db 42, MACHAMP

	db $ff ; end

; ================

	; HIKER (22)
	db "ANTHONY@"
	db 1 ; moves

	; party

	db 54, GRAVELER
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 56, GOLEM
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 54, MACHAMP
		db KARATE_CHOP
		db VITAL_THROW
		db HEADBUTT
		db DIG

	db $ff ; end

; ================
; ================================


BikerGroup:
; ================================
; ================

	; BIKER (1)
	db "BENNY@"
	db 0 ; normal

	; party
	db 20, KOFFING
	db 20, KOFFING
	db 20, KOFFING

	db $ff ; end

; ================

	; BIKER (2)
	db "KAZU@"
	db 0 ; normal

	; party
	db 20, KOFFING
	db 20, KOFFING
	db 20, KOFFING

	db $ff ; end

; ================

	; BIKER (3)
	db "DWAYNE@"
	db 0 ; normal

	; party
	db 47, KOFFING
	db 48, BEEDRILL
	db 49, WEEZING
	db 50, ARIADOS

	db $ff ; end

; ================

	; BIKER (4)
	db "HARRIS@"
	db 0 ; normal

	; party
	db 54, FLAREON

	db $ff ; end

; ================

	; BIKER (5)
	db "ZEKE@"
	db 0 ; normal

	; party
	db 52, KOFFING
	db 52, KOFFING

	db $ff ; end

; ================

	; BIKER (6)
	db "CHARLES@"
	db 0 ; normal

	; party
	db 50, KOFFING
	db 50, CHARMELEON
	db 50, WEEZING

	db $ff ; end

; ================

	; BIKER (7)
	db "RILEY@"
	db 0 ; normal

	; party
	db 54, WEEZING

	db $ff ; end

; ================

	; BIKER (8)
	db "JOEL@"
	db 0 ; normal

	; party
	db 52, MAGBY
	db 52, MAGMAR

	db $ff ; end

; ================

	; BIKER (9)
	db "GLENN@"
	db 0 ; normal

	; party
	db 48, KOFFING
	db 50, MAGMAR
	db 52, WEEZING

	db $ff ; end

; ================

	; BIKER (10)
	db "DILLON@"
	db 0 ; normal

	; party
	db 18, KOFFING
	db 20, FLAAFFY
	db 22, MILTANK

	db $ff ; end

; ================

	; BIKER (10)
	db "NICKY@"
	db 0 ; normal

	; party
	db 48, KOFFING
	db 50, GRIMER
	db 52, WEEZING

	db $ff ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE (1)
	db "BLAINE@"
	db 3 ; item + moves

	; party

	db 55, MAGCARGO, NO_ITEM
		db SUNNY_DAY
		db SMOG
		db FLAMETHROWER
		db ROCK_SLIDE

	db 55, MAGMAR, NO_ITEM
		db THUNDERPUNCH
		db FIRE_PUNCH
		db SUNNY_DAY
		db CONFUSE_RAY

	db 59, CHARIZARD, NO_ITEM
		db FLAMETHROWER
		db FIRE_SPIN
		db BEAT_UP
		db WING_ATTACK

	db 59, TYPHLOSION, NO_ITEM
		db FIRE_PUNCH
		db DIG
		db SOLARBEAM
		db SUNNY_DAY

	db 60, RAPIDASH, CHARCOAL
		db QUICK_ATTACK
		db FIRE_SPIN
		db MEGAHORN
		db FIRE_BLAST

	db $ff ; end

; ================
; ================================


BurglarGroup:
; ================================
; ================

	; BURGLAR (1)
	db "DUNCAN@"
	db 0 ; normal

	; party
	db 25, MAGBY
	db 27, KOFFING
	db 25, MAGMAR

	db $ff ; end

; ================

	; BURGLAR (2)
	db "EDDIE@"
	db 1 ; moves

	; party

	db 28, GROWLITHE
		db ROAR
		db EMBER
		db LEER
		db TAKE_DOWN

	db 28, KOFFING
		db TACKLE
		db SMOG
		db SLUDGE
		db SMOKESCREEN

	db $ff ; end

; ================

	; BURGLAR (3)
	db "COREY@"
	db 0 ; normal

	; party
	db 45, KOFFING
	db 48, MAGMAR
	db 45, VULPIX
	db 50, QUILAVA

	db $ff ; end

; ================
; ================================


FirebreatherGroup:
; ================================
; ================

	; FIREBREATHER (1)
	db "OTIS@"
	db 0 ; normal

	; party
	db 49, MAGMAR
	db 52, WEEZING
	db 49, CHARIZARD

	db $ff ; end

; ================

	; FIREBREATHER (2)
	db "DICK@"
	db 0 ; normal

	; party
	db 15, CHARMANDER
	db 15, CYNDAQUIL

	db $ff ; end

; ================

	; FIREBREATHER (3)
	db "NED@"
	db 0 ; normal

	; party
	db 15, GROWLITHE
	db 16, KOFFING
	db 15, VULPIX

	db $ff ; end

; ================

	; FIREBREATHER (4)
	db "BURT@"
	db 0 ; normal

	; party
	db 52, WEEZING
	db 52, MAGCARGO

	db $ff ; end

; ================

	; FIREBREATHER (5)
	db "BILL@"
	db 0 ; normal

	; party
	db 6, MAGBY
	db 6, KOFFING

	db $ff ; end

; ================

	; FIREBREATHER (6)
	db "WALT@"
	db 0 ; normal

	; party
	db 11, MAGBY
	db 13, MAGMAR

	db $ff ; end

; ================

	; FIREBREATHER (7)
	db "RAY@"
	db 0 ; normal

	; party
	db 9, VULPIX

	db $ff ; end

; ================

	; FIREBREATHER (8)
	db "LYLE@"
	db 0 ; normal

	; party
	db 48, KOFFING
	db 51, FLAREON
	db 48, KOFFING

	db $ff ; end

; ================
; ================================


JugglerGroup:
; ================================
; ================

	; JUGGLER (1)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 6, KOFFING
	db 10, VOLTORB
	db 14, KOFFING

	db $ff ; end

; ================

	; JUGGLER (2)
	db "FRITZ@"
	db 0 ; normal

	; party
	db 49, MR__MIME
	db 49, MAGMAR
	db 49, MACHOKE

	db $ff ; end

; ================

	; JUGGLER (3)
	db "HORTON@"
	db 0 ; normal

	; party
	db 53, ELECTRODE
	db 53, MAGNETON
	db 53, ELECTRODE
	db 53, MAGNETON

	db $ff ; end

; ================

	; JUGGLER (4)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 16, VOLTORB
	db 20, KOFFING
	db 24, VOLTORB
	db 28, KOFFING

	db $ff ; end

; ================

	; JUGGLER (5)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 28, VOLTORB
	db 32, KOFFING
	db 36, ELECTRODE
	db 40, WEEZING

	db $ff ; end

; ================

	; JUGGLER (6)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 38, VOLTORB
	db 42, KOFFING
	db 46, ELECTRODE
	db 50, WEEZING

	db $ff ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T (1)
	db "KENJI@"
	db 0 ; normal

	; party
	db 37, ONIX
	db 40, HITMONLEE
	db 37, ONIX
	db 42, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (2)
	db "YOSHI@"
	db 1 ; moves

	; party

	db 27, HITMONLEE
		db DOUBLE_KICK
		db MEDITATE
		db JUMP_KICK
		db FOCUS_ENERGY

	db $ff ; end

; ================

	; BLACKBELT_T (3)
	db "KENJI@"
	db 1 ; moves

	; party

	db 53, ONIX
		db BIND
		db ROCK_THROW
		db TOXIC
		db DIG

	db 58, MACHAMP
		db HEADBUTT
		db SWAGGER
		db THUNDERPUNCH
		db VITAL_THROW

	db 53, STEELIX
		db EARTHQUAKE
		db ROCK_THROW
		db IRON_TAIL
		db SANDSTORM

	db 56, HITMONLEE
		db DOUBLE_TEAM
		db HI_JUMP_KICK
		db MUD_SLAP
		db SWIFT

	db $ff ; end

; ================

	; BLACKBELT_T (4)
	db "LAO@"
	db 1 ; moves

	; party

	db 27, HITMONCHAN
		db MACH_PUNCH
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH

	db $ff ; end

; ================

	; BLACKBELT_T (5)
	db "NOB@"
	db 1 ; moves

	; party

	db 25, TYROGUE
		db MACH_PUNCH
		db PURSUIT
		db RAPID_SPIN
		db HI_JUMP_KICK

	db 25, HITMONTOP
		db ROLLING_KICK
		db PURSUIT
		db PROTECT
		db DIG

	db $ff ; end

; ================

	; BLACKBELT_T (6)
	db "KIYO@"
	db 0 ; normal

	; party
	db 34, HITMONLEE
	db 34, HITMONCHAN

	db $ff ; end

; ================

	; BLACKBELT_T (7)
	db "LUNG@"
	db 0 ; normal

	; party
	db 23, MANKEY
	db 23, MACHOP
	db 25, PRIMEAPE

	db $ff ; end

; ================

	; BLACKBELT_T (8)
	db "KENJI@"
	db 0 ; normal

	; party
	db 30, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (9)
	db "WAI@"
	db 0 ; normal

	; party
	db 50, MACHOKE
	db 52, MACHOKE
	db 54, MACHOKE

	db $ff ; end

; ================
; ================================


ExecutiveMGroup:
; ================================
; ================

	; EXECUTIVEM (1)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 33, HOUNDOUR
		db EMBER
		db ROAR
		db BITE
		db FAINT_ATTACK

	db 33, KOFFING
		db TACKLE
		db SLUDGE
		db SMOKESCREEN
		db HAZE

	db 35, HOUNDOOM
		db EMBER
		db SMOG
		db BITE
		db FAINT_ATTACK

	db $ff ; end

; ================

	; EXECUTIVEM (2)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 36, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db $ff ; end

; ================

	; EXECUTIVEM (3)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 30, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 30, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 30, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 32, WEEZING
		db TACKLE
		db EXPLOSION
		db SLUDGE
		db SMOKESCREEN

	db 30, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 30, KOFFING
		db TACKLE
		db SMOG
		db SLUDGE
		db SMOKESCREEN

	db $ff ; end

; ================

	; EXECUTIVEM (4)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 22, ZUBAT
	db 24, RATICATE
	db 22, KOFFING

	db $ff ; end

; ================
; ================================


PsychicGroup:
; ================================
; ================

	; PSYCHIC_T (1)
	db "NATHAN@"
	db 0 ; normal

	; party
	db 26, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (2)
	db "FRANKLIN@"
	db 0 ; normal

	; party
	db 52, KADABRA

	db $ff ; end

; ================

	; PSYCHIC_T (3)
	db "HERMAN@"
	db 0 ; normal

	; party
	db 50, EXEGGCUTE
	db 50, EXEGGCUTE
	db 50, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T (4)
	db "FIDEL@"
	db 0 ; normal

	; party
	db 54, XATU

	db $ff ; end

; ================

	; PSYCHIC_T (5)
	db "GREG@"
	db 1 ; moves

	; party

	db 16, SMOOCHUM
		db SING
		db SWEET_KISS
		db CONFUSION
		db 0

	db 16, DROWZEE
		db HYPNOSIS
		db DISABLE
		db DREAM_EATER
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (6)
	db "NORMAN@"
	db 1 ; moves

	; party

	db 19, SLOWPOKE
		db TACKLE
		db GROWL
		db WATER_GUN
		db 0

	db 22, SLOWKING
		db CURSE
		db BODY_SLAM
		db WATER_GUN
		db CONFUSION

	db $ff ; end

; ================

	; PSYCHIC_T (7)
	db "MARK@"
	db 1 ; moves

	; party

	db 13, ABRA
		db TELEPORT
		db FLASH
		db 0
		db 0

	db 14, ABRA
		db TELEPORT
		db FLASH
		db METRONOME
		db 0

	db 15, KADABRA
		db TELEPORT
		db KINESIS
		db CONFUSION
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (8)
	db "PHIL@"
	db 1 ; moves

	; party

	db 29, NATU
		db LEER
		db NIGHT_SHADE
		db FUTURE_SIGHT
		db CONFUSE_RAY

	db 31, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db $ff ; end

; ================

	; PSYCHIC_T (9)
	db "RICHARD@"
	db 0 ; normal

	; party
	db 36, ESPEON

	db $ff ; end

; ================

	; PSYCHIC_T (10)
	db "GILBERT@"
	db 0 ; normal

	; party
	db 30, STARMIE
	db 30, EXEGGCUTE
	db 34, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (11)
	db "JARED@"
	db 0 ; normal

	; party
	db 47, MR__MIME
	db 47, EXEGGCUTE
	db 50, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T (12)
	db "RODNEY@"
	db 0 ; normal

	; party
	db 49, DROWZEE
	db 53, HYPNO

	db $ff ; end

; ================
; ================================


PicnickerGroup:
; ================================
; ================

	; PICNICKER (1)
	db "LIZ@"
	db 0 ; normal

	; party
	db 9, NIDORAN_F

	db $ff ; end

; ================

	; PICNICKER (2)
	db "GINA@"
	db 0 ; normal

	; party
	db 8, HOPPIP
	db 10, CHIKORITA
	db 12, BULBASAUR

	db $ff ; end

; ================

	; PICNICKER (3)
	db "BROOKE@"
	db 1 ; moves

	; party

	db 16, PIKACHU
		db THUNDERSHOCK
		db GROWL
		db QUICK_ATTACK
		db DOUBLE_TEAM

	db $ff ; end

; ================

	; PICNICKER (4)
	db "KIM@"
	db 0 ; normal

	; party
	db 15, VULPIX

	db $ff ; end

; ================

	; PICNICKER (5)
	db "CINDY@"
	db 0 ; normal

	; party
	db 51, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (6)
	db "HOPE@"
	db 0 ; normal

	; party
	db 54, FLAAFFY

	db $ff ; end

; ================

	; PICNICKER (7)
	db "SHARON@"
	db 0 ; normal

	; party
	db 51, FURRET
	db 53, RAPIDASH

	db $ff ; end

; ================

	; PICNICKER (8)
	db "DEBRA@"
	db 0 ; normal

	; party
	db 53, SEAKING

	db $ff ; end

; ================

	; PICNICKER (9)
	db "GINA@"
	db 0 ; normal

	; party
	db 15, HOPPIP
	db 17, BAYLEEF
	db 19, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER (10)
	db "ERIN@"
	db 0 ; normal

	; party
	db 18, PONYTA
	db 18, PONYTA

	db $ff ; end

; ================

	; PICNICKER (11)
	db "LIZ@"
	db 0 ; normal

	; party
	db 17, WEEPINBELL
	db 17, NIDORINA

	db $ff ; end

; ================

	; PICNICKER (12)
	db "LIZ@"
	db 0 ; normal

	; party
	db 24, WEEPINBELL
	db 24, NIDORINO
	db 28, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (13)
	db "HEIDI@"
	db 0 ; normal

	; party
	db 52, SKIPLOOM
	db 52, JUMPLUFF

	db $ff ; end

; ================

	; PICNICKER (14)
	db "EDNA@"
	db 0 ; normal

	; party
	db 50, NIDORINA
	db 54, RAICHU

	db $ff ; end

; ================

	; PICNICKER (15)
	db "GINA@"
	db 0 ; normal

	; party
	db 25, SKIPLOOM
	db 27, BAYLEEF
	db 29, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER (16)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 31, CLEFAIRY
		db ENCORE
		db SING
		db FAIRY_WIND
		db MINIMIZE

	db $ff ; end

; ================

	; PICNICKER (17)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 47, CLEFAIRY
		db ENCORE
		db MOONBLAST
		db MINIMIZE
		db METRONOME

	db $ff ; end

; ================

	; PICNICKER (18)
	db "ERIN@"
	db 2 ; item + normal

	; party
	db 32, PONYTA, NO_ITEM
	db 32, PIKACHU, LIGHT_BALL
	db 32, PONYTA, NO_ITEM

	db $ff ; end

; ================

	; PICNICKER (19)
	db "TANYA@"
	db 0 ; normal

	; party
	db 52, EXEGGUTOR

	db $ff ; end

; ================

	; PICNICKER (20)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 20, CLEFAIRY
		db ENCORE
		db SING
		db FAIRY_WIND
		db MINIMIZE

	db $ff ; end

; ================

	; PICNICKER (21)
	db "ERIN@"
	db 1 ; moves

	; party

	db 51, PONYTA
		db DOUBLE_TEAM
		db STOMP
		db FIRE_SPIN
		db SUNNY_DAY

	db 49, RAICHU
		db SWIFT
		db MUD_SLAP
		db QUICK_ATTACK
		db THUNDERBOLT

	db 51, RAPIDASH
		db DOUBLE_TEAM
		db STOMP
		db FIRE_SPIN
		db MEGAHORN

	db $ff ; end

; ================

	; PICNICKER (22)
	db "LIZ@"
	db 0 ; normal

	; party
	db 34, WEEPINBELL
	db 36, NIDORINO
	db 36, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (23)
	db "LIZ@"
	db 1 ; moves

	; party

	db 50, WEEPINBELL
		db SLEEP_POWDER
		db POISONPOWDER
		db STUN_SPORE
		db SLUDGE_BOMB

	db 52, NIDOKING
		db EARTHQUAKE
		db DOUBLE_KICK
		db MEGAHORN
		db IRON_TAIL

	db 52, NIDOQUEEN
		db EARTHQUAKE
		db DOUBLE_KICK
		db TAIL_WHIP
		db BODY_SLAM

	db $ff ; end

; ================

	; PICNICKER (24)
	db "GINA@"
	db 0 ; normal

	; party
	db 38, SKIPLOOM
	db 40, BAYLEEF
	db 42, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER (25)
	db "GINA@"
	db 1 ; moves

	; party

	db 54, JUMPLUFF
		db SLEEP_POWDER
		db SUNNY_DAY
		db LEECH_SEED
		db SOLARBEAM

	db 56, MEGANIUM
		db SUNNY_DAY
		db LIGHT_SCREEN
		db SYNTHESIS
		db ANCIENTPOWER

	db 58, VENUSAUR
		db SOLARBEAM
		db PETAL_DANCE
		db HEADBUTT
		db MUD_SLAP

	db $ff ; end

; ================

	; PICNICKER (26)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 53, CLEFAIRY
		db METRONOME
		db ENCORE
		db MOONLIGHT
		db MOONBLAST

	db $ff ; end

; ================
; ================================


CamperGroup:
; ================================
; ================

	; CAMPER (1)
	db "ROLAND@"
	db 0 ; normal

	; party
	db 9, NIDORAN_M

	db $ff ; end

; ================

	; CAMPER (2)
	db "TODD@"
	db 0 ; normal

	; party
	db 14, PSYDUCK

	db $ff ; end

; ================

	; CAMPER (3)
	db "IVAN@"
	db 0 ; normal

	; party
	db 10, SLUGMA
	db 10, ZUBAT
	db 14, DIGLETT

	db $ff ; end

; ================

	; CAMPER (4)
	db "ELLIOT@"
	db 0 ; normal

	; party
	db 13, SANDSHREW
	db 15, MARILL

	db $ff ; end

; ================

	; CAMPER (5)
	db "BARRY@"
	db 0 ; normal

	; party
	db 56, NIDOKING

	db $ff ; end

; ================

	; CAMPER (6)
	db "LLOYD@"
	db 0 ; normal

	; party
	db 44, NIDOKING

	db $ff ; end

; ================

	; CAMPER (7)
	db "DEAN@"
	db 0 ; normal

	; party
	db 48, GOLDUCK
	db 46, SANDSLASH

	db $ff ; end

; ================

	; CAMPER (8)
	db "SID@"
	db 0 ; normal

	; party
	db 47, DUGTRIO
	db 44, PRIMEAPE
	db 44, POLITOED

	db $ff ; end

; ================

	; CAMPER (10)
	db "DALE@"
	db 0 ; normal
	; UNUSED?

	; party
	db 15, NIDORINO

	db $ff ; end

; ================

	; CAMPER (11)
	db "TED@"
	db 0 ; normal

	; party
	db 22, MANKEY

	db $ff ; end

; ================

	; CAMPER (12)
	db "TODD@"
	db 0 ; normal

	; party
	db 21, GEODUDE
	db 21, RHYHORN
	db 27, PSYDUCK

	db $ff ; end

; ================

	; CAMPER (13)
	db "TODD@"
	db 0 ; normal

	; party
	db 28, GEODUDE
	db 28, RHYHORN
	db 31, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (14)
	db "THOMAS@"
	db 0 ; normal
	; UNUSED?

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (15)
	db "LEROY@"
	db 0 ; normal
	; UNUSED?

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (16)
	db "DAVID@"
	db 0 ; normal
	; UNUSED?

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (17)
	db "JOHN@"
	db 0 ; normal
	; UNUSED?

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (18)
	db "JERRY@"
	db 0 ; normal

	; party
	db 55, SANDSLASH
	db 55, OMASTAR
	db 55, KABUTOPS

	db $ff ; end

; ================

	; CAMPER (19)
	db "SPENCER@"
	db 0 ; normal

	; party
	db 22, SANDSHREW
	db 22, SANDSLASH
	db 24, ZUBAT

	db $ff ; end

; ================

	; CAMPER (20)
	db "TODD@"
	db 0 ; normal

	; party
	db 40, GRAVELER
	db 40, RHYDON
	db 40, SLUGMA
	db 42, PSYDUCK

	db $ff ; end

; ================

	; CAMPER (21)
	db "TODD@"
	db 1 ; moves

	; party

	db 53, GRAVELER
		db SELFDESTRUCT
		db ROCK_THROW
		db SANDSTORM
		db MAGNITUDE

	db 53, RHYDON
		db MEGAHORN
		db ROCK_SLIDE
		db STOMP
		db MAGNITUDE

	db 56, MAGCARGO
		db ROCK_SLIDE
		db HARDEN
		db AMNESIA
		db FLAMETHROWER

	db 54, GOLDUCK
		db DISABLE
		db PSYCHIC_M
		db SURF
		db PSYCH_UP

	db $ff ; end

; ================

	; CAMPER (22)
	db "QUENTIN@"
	db 0 ; normal

	; party
	db 30, FEAROW
	db 30, PRIMEAPE
	db 30, TAUROS

	db $ff ; end

; ================
; ================================


ExecutiveFGroup:
; ================================
; ================

	; EXECUTIVEF (1)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 32, ARBOK
		db WRAP
		db POISON_STING
		db BITE
		db GLARE

	db 32, VILEPLUME
		db ABSORB
		db SWEET_SCENT
		db SLEEP_POWDER
		db ACID

	db 32, MURKROW
		db PECK
		db PURSUIT
		db HAZE
		db NIGHT_SHADE

	db $ff ; end

; ================

	; EXECUTIVEF (2)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 23, ARBOK
		db WRAP
		db LEER
		db POISON_STING
		db BITE

	db 23, GLOOM
		db ABSORB
		db SWEET_SCENT
		db SLEEP_POWDER
		db ACID

	db 25, MURKROW
		db PECK
		db PURSUIT
		db HAZE
		db 0

	db $ff ; end

; ================
; ================================


SageGroup:
; ================================
; ================

	; SAGE (1)
	db "CHOW@"
	db 0 ; normal

	; party
	db 4, BELLSPROUT
	db 4, HOPPIP
	db 4, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (2)
	db "NICO@"
	db 0 ; normal

	; party
	db 4, BELLSPROUT
	db 4, CUBONE
	db 4, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (3)
	db "JIN@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (4)
	db "TROY@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, HOOTHOOT

	db $ff ; end

; ================

	; SAGE (5)
	db "JEFFREY@"
	db 0 ; normal

	; party
	db 22, HAUNTER

	db $ff ; end

; ================

	; SAGE (6)
	db "PING@"
	db 0 ; normal

	; party
	db 16, GASTLY
	db 16, GASTLY
	db 16, CUBONE
	db 16, GASTLY
	db 16, GASTLY

	db $ff ; end

; ================

	; SAGE (7)
	db "EDMOND@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (8)
	db "NEAL@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT
	db 6, HOPPIP

	db $ff ; end

; ================

	; SAGE (9)
	db "LI@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, BELLSPROUT
	db 10, HOOTHOOT

	db $ff ; end

; ================

	; SAGE (10)
	db "GAKU@"
	db 0 ; normal

	; party
	db 32, NOCTOWL
	db 32, FLAREON

	db $ff ; end

; ================

	; SAGE (11)
	db "MASA@"
	db 0 ; normal

	; party
	db 32, NOCTOWL
	db 32, JOLTEON

	db $ff ; end

; ================

	; SAGE (12)
	db "KOJI@"
	db 0 ; normal

	; party
	db 32, NOCTOWL
	db 32, VAPOREON

	db $ff ; end

; ================
; ================================


MediumGroup:
; ================================
; ================

	; MEDIUM (1)
	db "MARTHA@"
	db 0 ; normal

	; party
	db 18, GASTLY
	db 20, HAUNTER
	db 20, MISDREAVUS

	db $ff ; end

; ================

	; MEDIUM (2)
	db "GRACE@"
	db 0 ; normal

	; party
	db 20, HAUNTER
	db 20, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (3)
	db "BETHANY@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (4)
	db "MARGRET@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (5)
	db "ETHEL@"
	db 0 ; normal

	; party
	db 25, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (6)
	db "REBECCA@"
	db 0 ; normal

	; party
	db 50, DROWZEE
	db 50, HYPNO

	db $ff ; end

; ================

	; MEDIUM (7)
	db "DORIS@"
	db 0 ; normal

	; party
	db 49, SLOWPOKE
	db 51, SLOWBRO

	db $ff ; end

; ================

	; MEDIUM (8)
	db "HOLLY@"
	db 0 ; normal

	; party
	db 5, HOOTHOOT
	db 6, BELLSPROUT
	db 7, DITTO
	db 8, UNOWN

	db $ff ; end

; ================
; ================================


BoarderGroup:
; ================================
; ================

	; BOARDER (1)
	db "RONALD@"
	db 0 ; normal

	; party
	db 31, SEEL
	db 32, DEWGONG
	db 31, SEEL

	db $ff ; end

; ================

	; BOARDER (2)
	db "BRAD@"
	db 0 ; normal

	; party
	db 33, SWINUB
	db 33, SWINUB

	db $ff ; end

; ================

	; BOARDER (3)
	db "DOUGLAS@"
	db 0 ; normal

	; party
	db 31, SHELLDER
	db 32, CLOYSTER
	db 31, SHELLDER

	db $ff ; end

; ================

	; BOARDER (4)
	db "CLAUDE@"
	db 0 ; normal

	; party
	db 52, SNEASEL
	db 50, BLISSEY
	db 54, DELIBIRD
	db 52, KANGASKHAN
	db 53, VAPOREON

	db $ff ; end

; ================
; ================================


PokefanMGroup:
; ================================
; ================

	; POKEFANM (1)
	db "WILLIAM@"
	db 2 ; item

	; party
	db 14, RAICHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (2)
	db "DEREK@"
	db 2 ; item

	; party
	db 19, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (3)
	db "ROBERT@"
	db 2 ; item

	; party
	db 53, QUAGSIRE, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM (4)
	db "JOSHUA@"
	db 2 ; item

	; party
	db 43, PIKACHU, BERRY
	db 43, PIKACHU, BERRY
	db 43, PIKACHU, BERRY
	db 43, PIKACHU, BERRY
	db 43, PIKACHU, BERRY
	db 43, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (5)
	db "CARTER@"
	db 2 ; item

	; party
	db 49, BULBASAUR, BERRY
	db 49, CHARMANDER, BERRY
	db 49, SQUIRTLE, BERRY
	db 49, CHIKORITA, BERRY
	db 49, CYNDAQUIL, BERRY
	db 49, TOTODILE, BERRY

	db $ff ; end

; ================

	; POKEFANM (6)
	db "TREVOR@"
	db 2 ; item

	; party
	db 53, PSYDUCK, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM (7)
	db "BRANDON@"
	db 2 ; item

	; party
	db 13, SNUBBULL, BERRY
	db 13, SMOOCHUM, BERRY

	db $ff ; end

; ================

	; POKEFANM (8)
	db "JEREMY@"
	db 2 ; item

	; party
	db 48, MEOWTH, BERRY
	db 48, MEOWTH, BERRY
	db 48, MEOWTH, BERRY

	db $ff ; end

; ================

	; POKEFANM (9)
	db "COLIN@"
	db 2 ; item

	; party
	db 52, DELIBIRD, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM (10)
	db "DEREK@"
	db 2 ; item

	; party
	db 39, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (11)
	db "DEREK@"
	db 2 ; item

	; party
	db 56, PIKACHU, LIGHT_BALL

	db $ff ; end

; ================

	; POKEFANM (12)
	db "ALEX@"
	db 2 ; item

	; party
	db 49, NIDOKING, GOLD_BERRY
	db 49, SLOWKING, KINGS_ROCK
	db 49, SEAKING, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM (13)
	db "REX@"
	db 2 ; item

	; party
	db 55, PHANPY, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM (14)
	db "ALLAN@"
	db 2 ; item

	; party
	db 55, TEDDIURSA, GOLD_BERRY

	db $ff ; end

; ================
; ================================


KimonoGirlGroup:
; ================================
; ================

	; KIMONO_GIRL (1)
	db "NAOMI@"
	db 0 ; normal

	; party
	db 20, MURKROW
	db 20, HAUNTER
	db 20, MAGCARGO
	db 20, MISDREAVUS

	db $ff ; end

; ================

	; KIMONO_GIRL (2)
	db "NAOKO@"
	db 0 ; normal

	; party
	db 17, FLAREON

	db $ff ; end

; ================

	; KIMONO_GIRL (3)
	db "SAYO@"
	db 0 ; normal

	; party
	db 17, ESPEON

	db $ff ; end

; ================

	; KIMONO_GIRL (4)
	db "ZUKI@"
	db 0 ; normal

	; party
	db 17, UMBREON

	db $ff ; end

; ================

	; KIMONO_GIRL (5)
	db "KUNI@"
	db 0 ; normal

	; party
	db 17, VAPOREON

	db $ff ; end

; ================

	; KIMONO_GIRL (6)
	db "MIKI@"
	db 0 ; normal

	; party
	db 17, JOLTEON

	db $ff ; end

; ================

	; KIMONO_GIRL (7)
	db "ROXIE@"
	db 0 ; normal

	; party
	db 50, KOFFING
	db 50, WEEZING
	db 50, ARBOK
	db 50, CROBAT
	db 50, PARASECT


	db $ff ; end

; ================
; ================================


TwinsGroup:
; ================================
; ================

	; TWINS (1)
	db "AMY & MAY@"
	db 0 ; normal

	; party
	db 10, SPINARAK
	db 10, LEDYBA

	db $ff ; end

; ================

	; TWINS (2)
	db "ANN & ANNE@"
	db 1 ; moves

	; party

	db 16, CLEFAIRY
		db GROWL
		db ENCORE
		db DOUBLESLAP
		db METRONOME

	db 16, JIGGLYPUFF
		db SING
		db DEFENSE_CURL
		db POUND
		db DISABLE

	db $ff ; end

; ================

	; TWINS (3)
	db "ANN & ANNE@"
	db 1 ; moves

	; party

	db 16, JIGGLYPUFF
		db SING
		db DEFENSE_CURL
		db POUND
		db DISABLE

	db 16, CLEFAIRY
		db GROWL
		db ENCORE
		db DOUBLESLAP
		db METRONOME

	db $ff ; end

; ================

	; TWINS (4)
	db "AMY & MAY@"
	db 0 ; normal

	; party
	db 10, LEDYBA
	db 10, SPINARAK

	db $ff ; end

; ================

	; TWINS (5)
	db "JO & ZOE@"
	db 0 ; normal

	; party
	db 50, VICTREEBEL
	db 50, VILEPLUME

	db $ff ; end

; ================

	; TWINS (6)
	db "JO & ZOE@"
	db 0 ; normal

	; party
	db 50, VILEPLUME
	db 50, VICTREEBEL

	db $ff ; end

; ================

	; TWINS (7)
	db "MEG & PEG@"
	db 0 ; normal

	; party
	db 51, TEDDIURSA
	db 51, PHANPY

	db $ff ; end

; ================

	; TWINS (8)
	db "MEG & PEG@"
	db 0 ; normal

	; party
	db 51, PHANPY
	db 51, TEDDIURSA

	db $ff ; end

; ================

	; TWINS (9)
	db "LEA & PIA@"
	db 1 ; moves

	; party

	db 35, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db HEADBUTT

	db 35, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db ICE_BEAM
		db HEADBUTT

	db $ff ; end

; ================

	; TWINS (10)
	db "LEA & PIA@"
	db 1 ; moves

	; party

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db ICE_BEAM
		db HEADBUTT

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db HEADBUTT

	db $ff ; end

; ================
; ================================


PokefanFGroup:
; ================================
; ================

	; POKEFANF (1)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 14, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF (2)
	db "RUTH@"
	db 2 ; item

	; party
	db 19, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANF (3)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 33, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF (4)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 52, GRANBULL, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANF (5)
	db "GEORGIA@"
	db 2 ; item

	; party
	db 43, SENTRET, BERRY
	db 43, SENTRET, BERRY
	db 43, SENTRET, BERRY
	db 48, FURRET, GOLD_BERRY
	db 43, SENTRET, BERRY

	db $ff ; end

; ================

	; POKEFANF (6)
	db "JAIME@"
	db 2 ; item

	; party
	db 18, MEOWTH, BERRY

	db $ff ; end

; ================
; ================================


RedGroup:
; ================================
; ================

	; RED (1)
	db "RED@"
	db 3 ; item + moves

	; party

	db 81, PIKACHU, LIGHT_BALL
		db CHARM
		db QUICK_ATTACK
		db THUNDERBOLT
		db THUNDER

	db 73, UMBREON, MIRACLEBERRY
		db MEAN_LOOK
		db TOXIC
		db CHARM
		db REST

	db 75, SNORLAX, LEFTOVERS
		db DOUBLE_EDGE
		db CURSE
		db REST
		db LOVELY_KISS

	db 77, VENUSAUR, NO_ITEM
		db SUNNY_DAY
		db GIGA_DRAIN
		db SYNTHESIS
		db SOLARBEAM

	db 77, CHARIZARD, NO_ITEM
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db FIRE_SPIN

	db 77, BLASTOISE, NO_ITEM
		db RAIN_DANCE
		db SURF
		db BLIZZARD
		db WHIRLPOOL

	db $ff ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE (1)
	db "BLUE@"
	db 3 ; item + moves

	; party

	db 61, PIDGEOT, NO_ITEM
		db QUICK_ATTACK
		db WHIRLWIND
		db WING_ATTACK
		db MIRROR_MOVE

	db 59, ALAKAZAM, MIRACLEBERRY
		db DISABLE
		db RECOVER
		db PSYCHIC_M
		db REFLECT

	db 61, RHYDON, BERSERK_GENE
		db FURY_ATTACK
		db SANDSTORM
		db ROCK_SLIDE
		db EARTHQUAKE

	db 63, GYARADOS, NO_ITEM
		db TWISTER
		db HYDRO_PUMP
		db RAIN_DANCE
		db HYPER_BEAM

	db 63, EXEGGUTOR, NO_ITEM
		db SUNNY_DAY
		db LEECH_SEED
		db EGG_BOMB
		db SOLARBEAM

	db 63, ARCANINE, NO_ITEM
		db ROAR
		db SWIFT
		db FLAMETHROWER
		db EXTREMESPEED

	db $ff ; end

; ================
; ================================


OfficerGroup:
; ================================
; ================

	; OFFICER (1)
	db "KEITH@"
	db 0 ; normal

	; party
	db 17, GROWLITHE

	db $ff ; end

; ================

	; OFFICER (2)
	db "DIRK@"
	db 0 ; normal

	; party
	db 14, GROWLITHE
	db 14, GROWLITHE

	db $ff ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 9, ZUBAT
	db 11, EKANS

	db $ff ; end

; ================

	; GRUNTF (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 31, ARBOK

	db $ff ; end

; ================

	; GRUNTF (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 30, GLOOM
	db 30, GLOOM

	db $ff ; end

; ================

	; GRUNTF (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 25, EKANS
	db 28, ODDISH
	db 26, EKANS
	db 29, GLOOM

	db $ff ; end

; ================

	; GRUNTF (5)
	db "GRUNT@"
	db 1 ; moves

	; party

	db 23, EKANS
		db WRAP
		db LEER
		db POISON_STING
		db BITE

	db 25, GLOOM
		db ABSORB
		db SWEET_SCENT
		db STUN_SPORE
		db SLEEP_POWDER

	db $ff ; end

; ================
; ================================


MysticalmanGroup:
; ================================
; ================

	; MYSTICALMAN (1)
	db "EUSINE@"
	db 1 ; moves

	; party

	db 23, DROWZEE
		db DREAM_EATER
		db HYPNOSIS
		db DISABLE
		db CONFUSION

	db 23, HAUNTER
		db LICK
		db HYPNOSIS
		db MEAN_LOOK
		db CURSE

	db 25, ELECTRODE
		db SCREECH
		db SONICBOOM
		db THUNDER
		db ROLLOUT

	db $ff ; end

; ================
; ================================
