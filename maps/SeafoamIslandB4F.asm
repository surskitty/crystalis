	const_def 2 ; object constants
	const SEAFOAMISLANDB4F_BLAINE
	const SEAFOAMISLANDB4F_GYM_GUY
	const SEAFOAMISLANDB4F_POKE_BALL1
	const SEAFOAMISLANDB4F_POKE_BALL2
	const SEAFOAMISLANDB4F_POKE_BALL3
	const SEAFOAMISLANDB4F_POKE_BALL4

SeafoamIslandB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB4F_BlaineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .FightDone
	checkflag ENGINE_VOLCANOBADGE
	iftrue .Rematch
	writetext BlaineBeforeBattleText
	waitbutton
	closetext
	winlosstext BlaineBeatenBattleText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUY
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext PlayerReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

.Rematch:
	writetext BlaineBeforeBattleText
	waitbutton
	closetext
	winlosstext BlaineBeatenBattleText, 0
	loadtrainer BLAINE, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext BlaineAfterBattleText
	waitbutton
	closetext

.FightDone:
	writetext BlaineAfterBattle2Text
	waitbutton
	closetext
	end

SeafoamIslandB4F_GymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	iftrue .TalkedBefore
	writetext SeafoamB4FGymGuyWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	end

.TalkedBefore:
	writetext SeafoamB4FGymGuyWinText2
	waitbutton
	closetext
	end

BlaineBeforeBattleText:
	text "BLAINE: Waaah!"

	para "My GYM in CINNABAR"
	line "burned down."

	para "My fire-breathing"
	line "#MON and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "I'm a GYM LEADER"
	line "wherever I go."

	para "If you can beat"
	line "me, I'll give you"
	cont "a BADGE."

	para "Ha! You'd better"
	line "have BURN HEAL!"
	done

BlaineBeatenBattleText:
	text "BLAINE: Awesome."
	line "I've burned out…"
	done

PlayerReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineAfterBattleText:
	text "BLAINE: I did lose"
	line "this time, but I'm"

	para "going to win the"
	line "next time."

	para "When I rebuild my"
	line "CINNABAR GYM,"

	para "we'll have to have"
	line "a rematch."
	done

BlaineAfterBattle2Text:
	text "BLAINE: My fire"
	line "#MON will be"

	para "even stronger."
	line "Just you watch!"
	done

SeafoamB4FGymGuyWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "I got lost on the"
	line "way down here."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

SeafoamB4FGymGuyWinText2:
	text "A #MON GYM can"
	line "be anywhere as"

	para "long as the GYM"
	line "LEADER is there."

	para "There's no need"
	line "for a building."
	done

SeafoamIslandB4FBlizzard:
	itemball TM_BLIZZARD

SeafoamIslandB4FIcyWind:
	itemball TM_ICY_WIND

SeafoamIslandB4FBigPearl:
	itemball BIG_PEARL

SeafoamIslandB4FPearl:
	itemball PEARL

SeafoamIslandB4FHiddenKingsRock:
	hiddenitem KINGS_ROCK, EVENT_SEAFOAM_ISLAND_B4F_KINGS_ROCK

SeafoamIslandB4FHiddenCarbos:
	hiddenitem CARBOS, EVENT_SEAFOAM_ISLAND_B4F_CARBOS

SeafoamIslandB4F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  7, SEAFOAM_ISLAND_B3F, 4
	warp_event 25,  3, SEAFOAM_ISLAND_B3F, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event 27, 8, BGEVENT_ITEM, SeafoamIslandB4FHiddenKingsRock
	bg_event  2, 3, BGEVENT_ITEM, SeafoamIslandB4FHiddenCarbos

	db 6 ; object events
	object_event  7,  1, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamIslandB4F_BlaineScript, -1
	object_event  2,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamIslandB4F_GymGuyScript, EVENT_SEAFOAM_GYM_GYM_GUY
	object_event 25, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB4FIcyWind, EVENT_SEAFOAM_ISLAND_B4F_ICY_WIND
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB4FPearl, EVENT_SEAFOAM_ISLAND_B4F_PEARL
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB4FBlizzard, EVENT_SEAFOAM_ISLAND_B4F_BLIZZARD
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB4FBigPearl, EVENT_SEAFOAM_ISLAND_B4F_BIG_PEARL

