const_value set 2
	const OLIVINELIGHTHOUSE5F_SAILOR
	const OLIVINELIGHTHOUSE5F_YOUNGSTER
	const OLIVINELIGHTHOUSE5F_POKE_BALL1
	const OLIVINELIGHTHOUSE5F_POKE_BALL2
	const OLIVINELIGHTHOUSE5F_POKE_BALL3

OlivineLighthouse5F_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

TrainerBird_keeperDenis:
	trainer EVENT_BEAT_BIRD_KEEPER_DENIS, BIRD_KEEPER, DENIS, Bird_keeperDenisSeenText, Bird_keeperDenisBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext Bird_keeperDenisAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorErnest:
	trainer EVENT_BEAT_SAILOR_ERNEST, SAILOR, ERNEST, SailorErnestSeenText, SailorErnestBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext SailorErnestAfterBattleText
	waitbutton
	closetext
	end

OlivineLighthouse5FRareCandy:
	itemball RARE_CANDY

OlivineLighthouse5FSuperRepel:
	itemball SUPER_REPEL

OlivineLighthouse5FTMSwagger:
	itemball TM_SWAGGER

OlivineLighthouse5FHiddenHyperPotion:
	dwb EVENT_OLIVINE_LIGHTHOUSE_5F_HIDDEN_HYPER_POTION, HYPER_POTION


SailorErnestSeenText:
	text "I wanted to battle"
	line "JASMINE, but she's"

	para "not up to it now."
	line "So, how about you?"
	done

SailorErnestBeatenText:
	text "Whoa, whoa. You're"
	line "overwhelming!"
	done

SailorErnestAfterBattleText:
	text "A GYM LEADER isn't"
	line "just about being"

	para "strong. A LEADER"
	line "also needs to be"
	cont "compassionate."
	done

Bird_keeperDenisSeenText:
	text "We're pretty high"
	line "up here. My bird"

	para "#MON are in"
	line "prime form."
	done

Bird_keeperDenisBeatenText:
	text "Oops…They crashed…"
	done

Bird_keeperDenisAfterBattleText:
	text "My #MON learned"
	line "how to use FLY in"
	cont "CIANWOOD."

	para "Well, since I'm a"
	line "loser, I'll FLY"
	cont "across the sea…"
	done

OlivineLighthouse5F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 7
	warp_def $f, $9, 1, OLIVINE_LIGHTHOUSE_6F
	warp_def $5, $3, 2, OLIVINE_LIGHTHOUSE_4F
	warp_def $7, $9, 3, OLIVINE_LIGHTHOUSE_4F
	warp_def $7, $10, 9, OLIVINE_LIGHTHOUSE_4F
	warp_def $7, $11, 10, OLIVINE_LIGHTHOUSE_4F
	warp_def $5, $10, 2, OLIVINE_LIGHTHOUSE_6F
	warp_def $5, $11, 3, OLIVINE_LIGHTHOUSE_6F

.CoordEvents:
	db 0

.BGEvents:
	db 1
	bg_event 13, 3, BGEVENT_ITEM, OlivineLighthouse5FHiddenHyperPotion

.ObjectEvents:
	db 5
	object_event SPRITE_SAILOR, 11, 8, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorErnest, -1
	object_event SPRITE_YOUNGSTER, 3, 8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBird_keeperDenis, -1
	object_event SPRITE_POKE_BALL, 12, 15, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FRareCandy, EVENT_OLIVINE_LIGHTHOUSE_5F_RARE_CANDY
	object_event SPRITE_POKE_BALL, 15, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FSuperRepel, EVENT_OLIVINE_LIGHTHOUSE_5F_SUPER_REPEL
	object_event SPRITE_POKE_BALL, 13, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FTMSwagger, EVENT_OLIVINE_LIGHTHOUSE_5F_TM_SWAGGER
