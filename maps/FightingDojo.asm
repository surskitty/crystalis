const_value set 2
	const FIGHTINGDOJO_BLACK_BELT
	const FIGHTINGDOJO_POKE_BALL

FightingDojo_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

FightingDojoBlackBelt:
	jumptextfaceplayer FightingDojoBlackBeltText

MapFightingDojoSignpost0Script:
	jumptext FightingDojoSign0Text

MapFightingDojoSignpost1Script:
	jumptext FightingDojoSign1Text

FightingDojoFocusBand:
	itemball FOCUS_BAND

FightingDojoBlackBeltText:
	text "Hello!"

	para "KARATE KING, the"
	line "FIGHTING DOJO's"

	para "master, is in a"
	line "cave in JOHTO for"
	cont "training."
	done

FightingDojoSign0Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojoSign1Text:
	text "Enemies on every"
	line "side!"
	done

FightingDojo_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $b, $4, 1, SAFFRON_CITY
	warp_def $b, $5, 1, SAFFRON_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 2
	bg_event 0, 4, BGEVENT_READ, MapFightingDojoSignpost0Script
	bg_event 0, 5, BGEVENT_READ, MapFightingDojoSignpost1Script

.ObjectEvents:
	db 2
	object_event SPRITE_BLACK_BELT, 4, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt, -1
	object_event SPRITE_POKE_BALL, 1, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoFocusBand, EVENT_PICKED_UP_FOCUS_BAND
