const_value set 2
	const COLOSSEUM_CHRIS1
	const COLOSSEUM_CHRIS2

Colosseum_MapScriptHeader:
.MapTriggers:
	db 3
	maptrigger .InitializeColosseum
	maptrigger .DummyTrigger1
	maptrigger .DummyTrigger2

.MapCallbacks:
	db 2
	dbw MAPCALLBACK_OBJECTS, .SetWhichChris
	dbw MAPCALLBACK_NEWMAP, .PreparePokecenter2F

.InitializeColosseum:
	priorityjump .InitializeAndPreparePokecenter2F
	end

.DummyTrigger1:
	end

.DummyTrigger2:
	end

.SetWhichChris:
	special Special_CableClubCheckWhichChris
	iffalse .Chris2
	disappear COLOSSEUM_CHRIS2
	appear COLOSSEUM_CHRIS1
	return

.Chris2:
	disappear COLOSSEUM_CHRIS1
	appear COLOSSEUM_CHRIS2
	return

.PreparePokecenter2F:
	domaptrigger POKECENTER_2F, $2
	return

.InitializeAndPreparePokecenter2F:
	dotrigger $1
	domaptrigger POKECENTER_2F, $2
	end

MapColosseumSignpost1Script:
	special Special_Colosseum
	newloadmap MAPSETUP_LINKRETURN
	end

ChrisScript_0x193499:
	opentext
	writetext .FriendReadyText
	waitbutton
	closetext
	end

.FriendReadyText:
	text "Your friend is"
	line "ready."
	done

Colosseum_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $4, 3, POKECENTER_2F
	warp_def $7, $5, 3, POKECENTER_2F

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 4, 4, SIGNPOST_RIGHT, MapColosseumSignpost1Script
	signpost 4, 5, SIGNPOST_LEFT, MapColosseumSignpost1Script

.PersonEvents:
	db 2
	person_event SPRITE_CHRIS, 4, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ChrisScript_0x193499, EVENT_GAVE_KURT_APRICORNS
	person_event SPRITE_CHRIS, 4, 6, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ChrisScript_0x193499, EVENT_RECEIVED_BALLS_FROM_KURT
