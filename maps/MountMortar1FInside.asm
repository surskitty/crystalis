const_value set 2
	const MOUNTMORTAR1FINSIDE_BOULDER
	const MOUNTMORTAR1FINSIDE_POKE_BALL1
	const MOUNTMORTAR1FINSIDE_POKE_BALL2
	const MOUNTMORTAR1FINSIDE_POKE_BALL3
	const MOUNTMORTAR1FINSIDE_POKE_BALL4
	const MOUNTMORTAR1FINSIDE_POKE_BALL5
	const MOUNTMORTAR1FINSIDE_SUPER_NERD1
	const MOUNTMORTAR1FINSIDE_SUPER_NERD2
	const MOUNTMORTAR1FINSIDE_POKE_BALL6
	const MOUNTMORTAR1FINSIDE_POKE_BALL7

MountMortar1FInside_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

TrainerPokemaniacMiller:
	trainer EVENT_BEAT_POKEMANIAC_MILLER, POKEMANIAC, MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext PokemaniacMillerAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdMarkus:
	trainer EVENT_BEAT_SUPER_NERD_MARKUS, SUPER_NERD, MARKUS, SupernerdMarkusSeenText, SupernerdMarkusBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SupernerdMarkusAfterBattleText
	waitbutton
	closetext
	end

MountMortar1FBoulder:
	jumpstd strengthboulder

MountMortar1FInsideEscapeRope:
	itemball ESCAPE_ROPE

MountMortar1FInsideMaxRevive:
	itemball MAX_REVIVE

MountMortar1FInsideHyperPotion:
	itemball HYPER_POTION

MountMortar1FInsideMaxPotion:
	itemball MAX_POTION

MountMortar1FInsideNugget:
	itemball NUGGET

MountMortar1FInsideIron:
	itemball IRON

MountMortar1FInsideUltraBall:
	itemball ULTRA_BALL

MountMortar1FInsideHiddenMaxRepel:
	dwb EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MAX_REPEL, MAX_REPEL


PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

PokemaniacMillerAfterBattleText:
	text "A while back, this"
	line "karate dude wanted"

	para "to battle. He was"
	line "ridiculously good."

	para "He just thrashed"
	line "us silly."

	para "He went in deeper"
	line "saying it was for"

	para "his training. I"
	line "wonder how he is?"
	done

SupernerdMarkusSeenText:
	text "Hey! HUGH!"
	done

SupernerdMarkusBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

SupernerdMarkusAfterBattleText:
	text "I came to explore"
	line "MT.MORTAR, but I"

	para "got separated from"
	line "my partner…"

	para "Did you run into a"
	line "trainer who uses a"

	para "SEADRA that knows"
	line "WATERFALL?"
	done

MountMortar1FInside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 6
	warp_def $2f, $b, 5, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $2f, $1d, 6, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $27, $5, 8, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $29, $21, 9, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $13, $3, 1, MOUNT_MORTAR_B1F
	warp_def $9, $9, 2, MOUNT_MORTAR_2F_INSIDE

.CoordEvents:
	db 0

.BGEvents:
	db 1
	bg_event 11, 30, BGEVENT_ITEM, MountMortar1FInsideHiddenMaxRepel

.ObjectEvents:
	db 10
	object_event SPRITE_BOULDER, 43, 21, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, -1
	object_event SPRITE_POKE_BALL, 38, 35, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideEscapeRope, EVENT_MOUNT_MORTAR_1F_INSIDE_ESCAPE_ROPE
	object_event SPRITE_POKE_BALL, 10, 16, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxRevive, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	object_event SPRITE_POKE_BALL, 27, 10, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideHyperPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	object_event SPRITE_POKE_BALL, 20, 22, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	object_event SPRITE_POKE_BALL, 19, 35, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideNugget, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	object_event SPRITE_SUPER_NERD, 43, 33, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMiller, -1
	object_event SPRITE_SUPER_NERD, 28, 24, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdMarkus, -1
	object_event SPRITE_POKE_BALL, 16, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideIron, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	object_event SPRITE_POKE_BALL, 17, 17, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideUltraBall, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
