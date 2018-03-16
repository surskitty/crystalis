	const_def 2 ; object constants
	const BATTLETOWERBATTLEROOM_YOUNGSTER
	const BATTLETOWERBATTLEROOM_RECEPTIONIST

BattleTowerBattleRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .EnterBattleRoom ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.EnterBattleRoom: ; 0x9f419
	disappear BATTLETOWERBATTLEROOM_YOUNGSTER
	priorityjump Script_BattleRoom
	setscene SCENE_FINISHED
.DummyScene:
	end

Script_BattleRoom: ; 0x9f421
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerWalksIn
; beat all 7 opponents in a row
Script_BattleRoomLoop: ; 0x9f425
	writebyte BATTLETOWERBATTLEROOM_YOUNGSTER
	special LoadOpponentTrainerAndPokemonWithOTSprite
	appear BATTLETOWERBATTLEROOM_YOUNGSTER
	warpsound
	waitsfx
	applymovement BATTLETOWERBATTLEROOM_YOUNGSTER, MovementData_BattleTowerBattleRoomOpponentWalksIn
	opentext
	battletowertext BATTLETOWERTEXT_INTRO
	buttonsound
	closetext
	special BattleTowerBattle ; calls predef startbattle
	special FadeOutPalettes
	reloadmap
	ifnotequal $0, Script_FailedBattleTowerChallenge
	copybytetovar wNrOfBeatenBattleTowerTrainers ; wcf64
	ifequal BATTLETOWER_STREAK_LENGTH, Script_BeatenAllTrainers
	applymovement BATTLETOWERBATTLEROOM_YOUNGSTER, MovementData_BattleTowerBattleRoomOpponentWalksOut
	warpsound
	disappear BATTLETOWERBATTLEROOM_YOUNGSTER
	applymovement BATTLETOWERBATTLEROOM_RECEPTIONIST, MovementData_BattleTowerBattleRoomReceptionistWalksToPlayer
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerTurnsToFaceReceptionist
	opentext
	writetext Text_YourMonWillBeHealedToFullHealth
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	special FadeOutPalettes
	special LoadMapPalettes
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext Text_NextUpOpponentNo
	yesorno
	iffalse Script_DontBattleNextOpponent
Script_ContinueAndBattleNextOpponent: ; 0x9f477
	closetext
	applymovement PLAYER, MovementData_BattleTowerBattleRoomPlayerTurnsToFaceNextOpponent
	applymovement BATTLETOWERBATTLEROOM_RECEPTIONIST, MovementData_BattleTowerBattleRoomReceptionistWalksAway
	jump Script_BattleRoomLoop

Script_DontBattleNextOpponent: ; 0x9f483
	writetext Text_SaveAndEndTheSession
	yesorno
	iffalse Script_DontSaveAndEndTheSession
	writebyte BATTLETOWERACTION_SAVELEVELGROUP ; save level group
	special BattleTowerAction
	writebyte BATTLETOWERACTION_SAVEOPTIONS ; choose reward
	special BattleTowerAction
	writebyte BATTLETOWERACTION_SAVE_AND_QUIT ; quicksave
	special BattleTowerAction
	playsound SFX_SAVE
	waitsfx
	special FadeOutPalettes
	special Reset
Script_DontSaveAndEndTheSession: ; 0x9f4a3
	writetext Text_CancelYourBattleRoomChallenge
	yesorno
	iffalse Script_ContinueAndBattleNextOpponent
	writebyte BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	closetext
	special FadeOutPalettes
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
	opentext
	jump Script_BattleTowerHopeToServeYouAgain

Script_FailedBattleTowerChallenge:
	pause 60
	special BattleTowerFade
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
	writebyte BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	opentext
	writetext Text_ThanksForVisiting
	waitbutton
	closetext
	end

Script_BeatenAllTrainers: ; 0x9f4d9
	pause 60
	special BattleTowerFade
	warpfacing UP, BATTLE_TOWER_1F, 7, 7
Script_BeatenAllTrainers2:
	opentext
	writetext Text_CongratulationsYouveBeatenAllTheTrainers
	jump Script_GivePlayerHisPrize

BattleTowerBattleRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, BATTLE_TOWER_HALLWAY, 4
	warp_event  4,  7, BATTLE_TOWER_HALLWAY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  0, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BATTLE_TOWER_BATTLE_ROOM_YOUNGSTER
	object_event  1,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
