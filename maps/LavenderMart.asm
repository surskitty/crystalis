const_value set 2
	const LAVENDERMART_CLERK
	const LAVENDERMART_POKEFAN_M
	const LAVENDERMART_ROCKER

LavenderMart_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x7eb1c:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAVENDER
	closetext
	end

LavenderMartPokefanMScript:
	jumptextfaceplayer LavenderMartPokefanMText

LavenderMartRockerScript:
	jumptextfaceplayer LavenderMartRockerText

LavenderMartPokefanMText:
	text "REPEL is a neces-"
	line "sity if you are"

	para "going to explore a"
	line "cave."

	para "Even though I like"
	line "exploring, I still"

	para "haven't made it to"
	line "all the caves."
	done

LavenderMartRockerText:
	text "I heard about a"
	line "craftsman who"

	para "makes custom BALLS"
	line "in the JOHTO town"

	para "of AZALEA. I wish"
	line "I had some."
	done

LavenderMart_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def 2, 7, 5, LAVENDER_TOWN
	warp_def 3, 7, 5, LAVENDER_TOWN

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 3
	object_event 1, 3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ClerkScript_0x7eb1c, -1
	object_event 6, 6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderMartPokefanMScript, -1
	object_event 9, 2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartRockerScript, -1
