const_value set 2
	const LAVENDERNAMERATER_NAME_RATER

LavenderNameRater_MapScriptHeader:
.SceneScripts:
	db 1
	scene_script .DummyScene

.MapCallbacks:
	db 0

.DummyScene:
	end

LavenderNameRater:
	faceplayer
	opentext
	special SpecialNameRater
	waitbutton
	closetext
	end

LavenderNameRaterUnusedBookshelf:
	jumpstd difficultbookshelf

LavenderNameRater_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 4, LAVENDER_TOWN
	warp_def $7, $3, 4, LAVENDER_TOWN

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event SPRITE_GENTLEMAN, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderNameRater, -1
