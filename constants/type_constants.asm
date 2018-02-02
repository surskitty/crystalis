; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/battle/type_matchups.asm)
	const_def

PHYSICAL EQU const_value
	const NORMAL
	const FIGHTING
	const FLYING
	const POISON
	const GROUND
	const ROCK
	const BIRD
	const BUG
	const STEEL
	const DARK

UNUSED_TYPES EQU const_value
	const CURSE_T
UNUSED_TYPES_END EQU const_value

SPECIAL EQU const_value
	const FIRE
	const WATER
	const GRASS
	const ELECTRIC
	const PSYCHIC
	const ICE
	const DRAGON
	const GHOST
	const FAIRY_T
TYPES_END EQU const_value

NUM_TYPES EQU TYPES_END + UNUSED_TYPES - UNUSED_TYPES_END
