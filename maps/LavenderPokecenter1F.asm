const_value set 2
	const LAVENDERPOKECENTER1F_NURSE
	const LAVENDERPOKECENTER1F_GENTLEMAN
	const LAVENDERPOKECENTER1F_TEACHER
	const LAVENDERPOKECENTER1F_YOUNGSTER

LavenderPokecenter1F_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x7e6a0:
	jumpstd pokecenternurse

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText

LavenderPokecenter1FTeacherScript:
	jumptextfaceplayer LavenderPokecenter1FTeacherText

YoungsterScript_0x7e6a9:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x7e6b7
	writetext UnknownText_0x7e779
	waitbutton
	closetext
	end

UnknownScript_0x7e6b7:
	writetext UnknownText_0x7e7ed
	waitbutton
	closetext
	end

LavenderPokecenter1FGentlemanText:
	text "To the north of"
	line "LAVENDER is ROCK"

	para "TUNNEL. Go through"
	line "it to get to the"
	cont "POWER PLANT."
	done

LavenderPokecenter1FTeacherText:
	text "There's a radio"
	line "program that plays"
	cont "# FLUTE music."

	para "Oh? Ah, your radio"
	line "needs an EXPN CARD"
	cont "to tune into it."
	done

UnknownText_0x7e779:
	text "If the POWER PLANT"
	line "isn't running, the"

	para "MAGNET TRAIN won't"
	line "run either…"

	para "It also means the"
	line "RADIO STATION"
	cont "can't broadcast…"
	done

UnknownText_0x7e7ed:
	text "The DIRECTOR of"
	line "the RADIO STATION"
	cont "sure was happy."

	para "He said they're"
	line "back on the air"

	para "because the POWER"
	line "PLANT is running"
	cont "smoothly again."
	done

LavenderPokecenter1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $3, 1, LAVENDER_TOWN
	warp_def $7, $4, 1, LAVENDER_TOWN
	warp_def $7, $0, 1, POKECENTER_2F

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 4
	object_event SPRITE_NURSE, 1, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NurseScript_0x7e6a0, -1
	object_event SPRITE_GENTLEMAN, 6, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
	object_event SPRITE_TEACHER, 3, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FTeacherScript, -1
	object_event SPRITE_YOUNGSTER, 5, 1, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, YoungsterScript_0x7e6a9, -1
