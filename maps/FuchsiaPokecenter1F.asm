const_value set 2
	const FUCHSIAPOKECENTER1F_NURSE
	const FUCHSIAPOKECENTER1F_COOLTRAINER_M
	const FUCHSIAPOKECENTER1F_COOLTRAINER_F
	const FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR

FuchsiaPokecenter1F_MapScriptHeader:
.SceneScripts:
	db 1
	scene_script .DummyScene

.MapCallbacks:
	db 0

.DummyScene:
	end

NurseScript_0x196459:
	jumpstd pokecenternurse

FuchsiaPokecenter1FCooltrainerMScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerMText

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText

JanineImpersonatorScript_0x196462:
	faceplayer
	opentext
	writetext UnknownText_0x19652e
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, MovementData_0x196486
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_JANINE
	special MapCallbackSprites_LoadUsedSpritesGFX
	opentext
	writetext UnknownText_0x19654e
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, MovementData_0x196486
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_LASS
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

MovementData_0x196486:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

FuchsiaPokecenter1FCooltrainerMText:
	text "Hey! You have a"
	line "brand new kind of"
	cont "#DEX."

	para "Did PROF.OAK give"
	line "that to you?"
	done

FuchsiaPokecenter1FCooltrainerFText:
	text "I got quite a"
	line "shock at the GYM."

	para "There were all"
	line "these girls who"
	cont "looked identical."
	done

UnknownText_0x19652e:
	text "I'm JANINE! Hocus-"
	line "pocus… Poof!"
	done

UnknownText_0x19654e:
	text "See? I look just"
	line "like her now!"
	done

FuchsiaPokecenter1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $3, 5, FUCHSIA_CITY
	warp_def $7, $4, 5, FUCHSIA_CITY
	warp_def $7, $0, 1, POKECENTER_2F

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 4
	object_event SPRITE_NURSE, 1, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NurseScript_0x196459, -1
	object_event SPRITE_COOLTRAINER_M, 4, 8, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerMScript, -1
	object_event SPRITE_COOLTRAINER_F, 4, 1, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
	object_event SPRITE_JANINE_IMPERSONATOR, 3, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, JanineImpersonatorScript_0x196462, -1
