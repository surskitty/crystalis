const_value set 2
	const WILLSROOM_WILL

WillsRoom_MapScriptHeader:
.MapTriggers:
	db 2
	maptrigger .LockDoor
	maptrigger .DummyTrigger

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_TILES, .WillsRoomDoors

.LockDoor:
	priorityjump .WillsDoorLocksBehindYou
	end

.DummyTrigger:
	end

.WillsRoomDoors:
	checkevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepDoorsClosed
	changeblock $4, $e, $2a
.KeepDoorsClosed:
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalse .OpenDoors
	changeblock $4, $2, $16
.OpenDoors:
	return

.WillsDoorLocksBehindYou:
	applymovement PLAYER, MovementData_0x18052c
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock $4, $e, $2a
	reloadmappart
	closetext
	dotrigger $1
	setevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

WillScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillScript_0x180526
	checkevent EVENT_RED_IN_MT_SILVER
	iftrue .round3
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .round2
	iffalse .round1
.round1
	writetext WillScript_WillBeforeText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, 1
	jump .End
.round2
	writetext WillScript_WillRebattleText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, 2
	jump .End
.round3
	writetext WillScript_WillRebattleText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, 3
.End
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	opentext
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock $4, $2, $16
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

WillScript_0x180526:
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	end

MovementData_0x18052c:
	step UP
	step UP
	step UP
	step UP
	step_end

WillScript_WillBeforeText:
	text "Welcome to #MON"
	line "LEAGUE, <PLAYER>."

	para "Allow me to intro-"
	line "duce myself. I am"
	cont "WILL."

	para "I have trained all"
	line "around the world,"

	para "making my psychic"
	line "#MON powerful."

	para "And, at last, I've"
	line "been accepted into"
	cont "the ELITE FOUR."

	para "I can only keep"
	line "getting better!"

	para "Losing is not an"
	line "option!"
	done

WillScript_WillRebattleText:
	text "Welcome back,"
	line "<PLAYER>."

	para "I am WILL, of"
	line "the ELITE FOUR."

	para "I have observed"
	line "your techniques"
	cont "since we fought."

	para "Have you studied"
	line "psychic #MON?"

	para "I can only keep"
	line "getting better!"

	para "Losing is not an"
	line "option!"
	done

WillScript_WillBeatenText:
	text "I… I can't…"
	line "believe it…"
	done

WillScript_WillDefeatText:
	text "Even though I was"
	line "defeated, I won't"
	cont "change my course."

	para "I will continue"
	line "battling until I"

	para "stand above all"
	line "trainers!"

	para "Now, <PLAYER>, move"
	line "on and experience"

	para "the true ferocity"
	line "of the ELITE FOUR."
	done

WillsRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $11, $5, 4, INDIGO_PLATEAU_POKECENTER_1F
	warp_def $2, $4, 1, KOGAS_ROOM
	warp_def $2, $5, 2, KOGAS_ROOM

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_WILL, 7, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, WillScript_Battle, -1
