MobileTradeRoomMobile_MapScriptHeader:
.MapTriggers:
	db 2
	maptrigger .InitializeMobileTradeRoomMobile
	maptrigger .DummyTrigger

.MapCallbacks:
	db 0

.InitializeMobileTradeRoomMobile:
	priorityjump .InitializeAndPreparePokecenter2F
	end

.DummyTrigger:
	end

.InitializeAndPreparePokecenter2F:
	dotrigger $1
	domaptrigger POKECENTER_2F, $4
	end

MapMobileTradeRoomMobileSignpost0Script:
	refreshscreen $0
	special Function1037c2
	writetext MobileTradeRoomMobile_EstablishingCommsText
	waitbutton
	reloadmappart
	special Function101231
	closetext
	end

MobileTradeRoomMobile_EstablishingCommsText:
	text "Establishing"
	line "communications…"
	done

MobileTradeRoomMobile_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $4, 5, POKECENTER_2F
	warp_def $7, $5, 5, POKECENTER_2F

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 2, 4, SIGNPOST_UP, MapMobileTradeRoomMobileSignpost0Script

.PersonEvents:
	db 0
