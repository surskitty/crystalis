const_value set 2
	const ECRUTEAKCITY_GRAMPS1
	const ECRUTEAKCITY_GRAMPS2
	const ECRUTEAKCITY_LASS1
	const ECRUTEAKCITY_LASS2
	const ECRUTEAKCITY_FISHER
	const ECRUTEAKCITY_YOUNGSTER
	const ECRUTEAKCITY_GRAMPS3

EcruteakCity_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	return

EcruteakCityGramps1Script:
	jumptextfaceplayer EcruteakCityGramps1Text

EcruteakCityGramps2Script:
	jumptextfaceplayer EcruteakCityGramps2Text

EcruteakCityGramps3Script:
	jumptextfaceplayer EcruteakCityGramps3Text

EcruteakCityLassScript:
	jumptextfaceplayer EcruteakCityLassText

LassScript_0x1a4015:
	faceplayer
	opentext
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue UnknownScript_0x1a4023
	writetext UnknownText_0x1a421a
	waitbutton
	closetext
	end

UnknownScript_0x1a4023:
	writetext UnknownText_0x1a4269
	waitbutton
	closetext
	end

FisherScript_0x1a4029:
	faceplayer
	opentext
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue UnknownScript_0x1a4037
	writetext UnknownText_0x1a42ac
	waitbutton
	closetext
	end

UnknownScript_0x1a4037:
	writetext UnknownText_0x1a4325
	waitbutton
	closetext
	end

EcruteakCityYoungsterScript:
	jumptextfaceplayer EcruteakCityYoungsterText

EcruteakCitySign:
	jumptext EcruteakCitySignText

TinTowerSign:
	jumptext TinTowerSignText

EcruteakGymSign:
	jumptext EcruteakGymSignText

EcruteakDanceTheaterSign:
	jumptext EcruteakDanceTheaterSignText

BurnedTowerSign:
	jumptext BurnedTowerSignText

EcruteakCityPokecenterSign:
	jumpstd pokecentersign

EcruteakCityMartSign:
	jumpstd martsign

EcruteakCityHiddenHyperPotion:
	dwb EVENT_ECRUTEAK_CITY_HIDDEN_HYPER_POTION, HYPER_POTION

UnusedMissingDaughterText:
; This text is neither used nor referenced in the final game.
	text "Oh, no. Oh, no…"

	para "My daughter is"
	line "missing."

	para "No… She couldn't"
	line "have gone to the"
	cont "BURNED TOWER."

	para "I told her not to"
	line "go near it…"

	para "People seem to"
	line "disappear there…"

	para "Oh, what should I"
	line "do…?"
	done

EcruteakCityGramps1Text:
	text "ECRUTEAK used to"
	line "have two towers:"

	para "one each in the"
	line "east and west."
	done

EcruteakCityGramps2Text:
	text "Ah, child."
	line "Have you learned"

	para "to dance like the"
	line "KIMONO GIRLS?"

	para "If you go to their"
	line "DANCE THEATER, an"

	para "odd old man will"
	line "give you something"
	cont "nice, I hear."
	done

EcruteakCityLassText:
	text "I'm going to prac-"
	line "tice at the DANCE"

	para "THEATER. Care to"
	line "join me?"
	done

UnknownText_0x1a421a:
	text "The tower that"
	line "used to be here…"

	para "My grandma told me"
	line "it used to be much"
	cont "taller."
	done

UnknownText_0x1a4269:
	text "Three big #MON"
	line "ran off in differ-"
	cont "ent directions."
	cont "What were they?"
	done

UnknownText_0x1a42ac:
	text "I heard a rumor"
	line "about OLIVINE"
	cont "LIGHTHOUSE."

	para "The #MON that"
	line "serves as the"

	para "beacon fell ill."
	line "Sounds like they"
	cont "are in trouble."
	done

UnknownText_0x1a4325:
	text "The #MON at"
	line "OLIVINE LIGHTHOUSE"
	cont "has been cured."

	para "Boats can safely"
	line "sail out to sea at"
	cont "night again."
	done

EcruteakCityYoungsterText:
	text "I hear #MON are"
	line "rampaging at the"

	para "LAKE OF RAGE. I'd"
	line "like to see that."
	done

EcruteakCityGramps3Text:
	text "In the distant"
	line "past…"

	para "This tower burned"
	line "in a fire. Three"

	para "nameless #MON"
	line "perished in it."

	para "A rainbow-colored"
	line "#MON descended"

	para "from the sky and"
	line "resurrected them…"

	para "It's a legend that"
	line "has been passed"

	para "down by ECRUTEAK"
	line "GYM LEADERS."

	para "Me?"

	para "I was a trainer"
	line "way back when."
	cont "Hohoho!"
	done

EcruteakCitySignText:
	text "ECRUTEAK CITY"
	line "A Historical City"

	para "Where the Past"
	line "Meets the Present"
	done

TinTowerSignText:
	text "TIN TOWER"

	para "A legendary #-"
	line "MON is said to"
	cont "roost here."
	done

EcruteakGymSignText:
	text "ECRUTEAK CITY"
	line "#MON GYM"
	cont "LEADER: MORTY"

	para "The Mystic Seer of"
	line "the Future"
	done

EcruteakDanceTheaterSignText:
	text "ECRUTEAK DANCE"
	line "THEATER"
	done

BurnedTowerSignText:
	text "BURNED TOWER"

	para "It was destroyed"
	line "by a mysterious"
	cont "fire."

	para "Please stay away,"
	line "as it is unsafe."
	done

EcruteakCity_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 15
	warp_def $1a, $23, 1, ROUTE_42_ECRUTEAK_GATE
	warp_def $1b, $23, 2, ROUTE_42_ECRUTEAK_GATE
	warp_def $b, $12, 1, ECRUTEAK_HOUSE
	warp_def $2, $14, 1, WISE_TRIOS_ROOM
	warp_def $3, $14, 2, WISE_TRIOS_ROOM
	warp_def $1b, $17, 1, ECRUTEAK_POKECENTER_1F
	warp_def $15, $5, 1, ECRUTEAK_LUGIA_SPEECH_HOUSE
	warp_def $15, $17, 1, DANCE_THEATRE
	warp_def $15, $1d, 2, ECRUTEAK_MART
	warp_def $1b, $6, 1, ECRUTEAK_GYM
	warp_def $1b, $d, 1, ECRUTEAK_ITEMFINDER_HOUSE
	warp_def $7, $25, 1, TIN_TOWER_1F
	warp_def $5, $5, 1, BURNED_TOWER_1F
	warp_def $12, $0, 3, ROUTE_38_ECRUTEAK_GATE
	warp_def $13, $0, 4, ROUTE_38_ECRUTEAK_GATE

.CoordEvents:
	db 0

.BGEvents:
	db 8
	bg_event 21, 15, BGEVENT_READ, EcruteakCitySign
	bg_event 10, 38, BGEVENT_READ, TinTowerSign
	bg_event 28, 8, BGEVENT_READ, EcruteakGymSign
	bg_event 21, 21, BGEVENT_READ, EcruteakDanceTheaterSign
	bg_event 10, 2, BGEVENT_READ, BurnedTowerSign
	bg_event 27, 24, BGEVENT_READ, EcruteakCityPokecenterSign
	bg_event 21, 30, BGEVENT_READ, EcruteakCityMartSign
	bg_event 14, 23, BGEVENT_ITEM, EcruteakCityHiddenHyperPotion

.ObjectEvents:
	db 7
	object_event SPRITE_GRAMPS, 15, 18, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps1Script, -1
	object_event SPRITE_GRAMPS, 21, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps2Script, -1
	object_event SPRITE_LASS, 29, 21, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EcruteakCityLassScript, -1
	object_event SPRITE_LASS, 9, 3, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LassScript_0x1a4015, -1
	object_event SPRITE_FISHER, 22, 9, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FisherScript_0x1a4029, -1
	object_event SPRITE_YOUNGSTER, 14, 10, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakCityYoungsterScript, -1
	object_event SPRITE_GRAMPS, 7, 3, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps3Script, EVENT_ECRUTEAK_CITY_GRAMPS
