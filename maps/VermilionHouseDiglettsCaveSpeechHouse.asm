const_value set 2
	const VERMILIONHOUSEDIGLETTSCAVESPEECHHOUSE_GENTLEMAN

VermilionHouseDiglettsCaveSpeechHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

VermilionHouseDiglettsCaveSpeechHouseGentlemanScript:
	jumptextfaceplayer VermilionHouseDiglettsCaveSpeechHouseGentlemanText

VermilionHouseDiglettsCaveSpeechHouseGentlemanText:
	text "Over many years,"
	line "DIGLETT dug a"
	cont "large tunnel."

	para "That tunnel goes"
	line "to a distant town."
	done

VermilionHouseDiglettsCaveSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 6, VERMILION_CITY
	warp_def $7, $3, 6, VERMILION_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event SPRITE_GENTLEMAN, 3, 1, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionHouseDiglettsCaveSpeechHouseGentlemanScript, -1
