const_value set 2
	const KARENSROOM_KAREN

KarensRoom_MapScriptHeader:
.SceneScripts:
	db 2
	scene_script .LockDoor
	scene_script .DummyScene

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_TILES, .KarensRoomDoors

.LockDoor:
	priorityjump .KarensDoorLocksBehindYou
	end

.DummyScene:
	end

.KarensRoomDoors:
	checkevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepDoorsClosed
	changeblock $4, $e, $2a
.KeepDoorsClosed:
	checkevent EVENT_KARENS_ROOM_EXIT_OPEN
	iffalse .OpenDoors
	changeblock $4, $2, $16
.OpenDoors:
	return

.KarensDoorLocksBehindYou:
	applymovement PLAYER, MovementData_0x180c22
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $e, $2a
	reloadmappart
	closetext
	setscene $1
	setevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KarenScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue UnknownScript_0x180c1c
	writetext KarenScript_KarenBeforeText
	waitbutton
	closetext
	winlosstext KarenScript_KarenBeatenText, 0
	checkflag ENGINE_EARTHBADGE
	iftrue .round3
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .round2
	iffalse .round1
.round1
	loadtrainer KAREN, 1
	jump .End
.round2
	loadtrainer KAREN, 2
	jump .End
.round3
	loadtrainer KAREN, 3
.End
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	opentext
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

UnknownScript_0x180c1c:
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	end

MovementData_0x180c22:
	step UP
	step UP
	step UP
	step UP
	step_end

KarenScript_KarenBeforeText:
	text "I am KAREN of the"
	line "ELITE FOUR."

	para "You're <PLAYER>?"
	line "How amusing."

	para "I love dark-type"
	line "#MON."

	para "I find their wild,"
	line "tough image to be"

	para "so appealing. And"
	line "they're so strong."

	para "Think you can take"
	line "them? Just try to"
	cont "entertain me."

	para "Let's go."
	done

KarenScript_KarenBeatenText:
	text "Well, aren't you"
	line "good. I like that"
	cont "in a trainer."
	done

KarenScript_KarenDefeatText:
	text "Strong #MON."

	para "Weak #MON."

	para "That is only the"
	line "selfish perception"
	cont "of people."

	para "Truly skilled"
	line "trainers should"

	para "try to win with"
	line "their favorites."

	para "I like your style."
	line "You understand"
	cont "what's important."

	para "Go on--the CHAM-"
	line "PION is waiting."
	done

KarensRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $11, $4, 3, BRUNOS_ROOM
	warp_def $11, $5, 4, BRUNOS_ROOM
	warp_def $2, $4, 1, LANCES_ROOM
	warp_def $2, $5, 2, LANCES_ROOM

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event SPRITE_KAREN, 7, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KarenScript_Battle, -1
