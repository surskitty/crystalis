const_value set 2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_ROCK4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4
	const DARKCAVEVIOLETENTRANCE_ZAPDOS

DarkCaveVioletEntrance_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_OBJECTS, .Zapdos

.Zapdos:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .Appear
	jump .NoAppear

.Appear:
	appear DARKCAVEVIOLETENTRANCE_ZAPDOS
	return

.NoAppear:
	disappear DARKCAVEVIOLETENTRANCE_ZAPDOS
	return

Zapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 50
	startbattle
	disappear DARKCAVEVIOLETENTRANCE_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

DarkCaveVioletEntrancePotion:
	itemball POTION

DarkCaveVioletEntranceFullHeal:
	itemball FULL_HEAL

DarkCaveVioletEntranceHyperPotion:
	itemball HYPER_POTION

DarkCaveVioletEntranceDireHit:
	itemball DIRE_HIT

DarkCaveVioletEntranceRock:
	jumpstd smashrock

DarkCaveVioletEntranceHiddenElixer:
	dwb EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER, ELIXER


DarkCaveVioletEntrance_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $f, $3, 3, ROUTE_31
	warp_def $1, $11, 2, DARK_CAVE_BLACKTHORN_ENTRANCE
	warp_def $21, $23, 3, ROUTE_46

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 3, 26, SIGNPOST_ITEM, DarkCaveVioletEntranceHiddenElixer

.PersonEvents:
	db 9
	person_event SPRITE_POKE_BALL, 8, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntrancePotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_POTION
	person_event SPRITE_ROCK, 14, 16, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK, 6, 27, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK, 14, 7, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_ROCK, 31, 36, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	person_event SPRITE_POKE_BALL, 22, 36, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	person_event SPRITE_POKE_BALL, 9, 35, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	person_event SPRITE_POKE_BALL, 28, 30, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DarkCaveVioletEntranceDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
	person_event SPRITE_MOLTRES, 5, 28, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, Zapdos, EVENT_DARK_CAVE_ZAPDOS
