const_value set 2
	const CINNABARISLAND_BLUE

CinnabarIsland_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	return

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd pokecentersign

CinnabarIslandHiddenRareCandy:
	dwb EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY, RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "Who are you?"

	para "Well, it's plain"
	line "to see that you're"
	cont "a trainer…"

	para "My name's BLUE."

	para "I was once the"
	line "CHAMPION, although"

	para "it was for only a"
	line "short time…"

	para "That meddling RED"
	line "did me in…"

	para "Anyway, what do"
	line "you want? You want"

	para "to challenge me or"
	line "something?"

	para "…I hate to say"
	line "it, but I'm not in"

	para "the mood for a"
	line "battle now."

	para "Take a good look"
	line "around you…"

	para "A volcano erupts,"
	line "and just like"

	para "that, a whole town"
	line "disappears."

	para "We can go on win-"
	line "ning and losing in"

	para "#MON. But if"
	line "nature so much as"

	para "twitches, we can"
	line "lose in a second."

	para "…"

	para "That's the way it"
	line "is…"

	para "But, anyway, I'm"
	line "still a trainer."

	para "If I see a strong"
	line "opponent, it makes"
	cont "me want to battle."

	para "If you want to"
	line "battle me, come to"
	cont "the VIRIDIAN GYM."

	para "I'll take you on"
	line "then."
	done

CinnabarIslandGymSignText:
	text "There's a notice"
	line "here…"

	para "CINNABAR GYM has"
	line "relocated to SEA-"
	cont "FOAM ISLANDS."

	para "BLAINE"
	done

CinnabarIslandSignText:
	text "CINNABAR ISLAND"

	para "The Fiery Town of"
	line "Burning Desire"
	done

CinnabarIsland_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def 11, 11, 1, CINNABAR_POKECENTER_1F

.CoordEvents:
	db 0

.BGEvents:
	db 4
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event 9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event 7, 7, BGEVENT_READ, CinnabarIslandSign
	bg_event 9, 1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

.ObjectEvents:
	db 1
	object_event 9, 6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
