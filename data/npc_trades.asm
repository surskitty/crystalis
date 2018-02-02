npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	shift
	dw \7
	db \8, \9, 0
ENDM

NPCTrades: ; fce58
; entries correspond to NPCTRADE_* constants
	npctrade TRADE_DIALOG_COLLECTOR, ABRA,       MANKEY,     "MUSKY@@@@@@", $37, $66, GOLD_BERRY,   37460, "MIKE@@@@@@@", TRADE_EITHER_GENDER
	npctrade TRADE_DIALOG_COLLECTOR, BELLSPROUT, RHYHORN,    "ROCKY@@@@@@", $96, $66, BITTER_BERRY, 48926, "KYLE@@@@@@@", TRADE_EITHER_GENDER
	npctrade TRADE_DIALOG_HAPPY,     KRABBY,     ELEKID,     "LIT@@@@@@@@", $98, $88, PRZCUREBERRY, 29189, "TIM@@@@@@@@", TRADE_EITHER_GENDER
	npctrade TRADE_DIALOG_GIRL,      DRAGONAIR,  AERODACTYL, "HERA@@@@@@@", $07, $66, SMOKE_BALL,   00283, "EMY@@@@@@@@", TRADE_FEMALE_ONLY
	npctrade TRADE_DIALOG_NEWBIE,    HAUNTER,    MR__MIME,   "PAUL@@@@@@@", $96, $86, MYSTERYBERRY, 15616, "CHRIS@@@@@@", TRADE_EITHER_GENDER
	npctrade TRADE_DIALOG_GIRL,      CHANSEY,    LARVITAR,   "LEROY@@@@@@", $96, $66, GOLD_BERRY,   26491, "KIM@@@@@@@@", TRADE_EITHER_GENDER
	npctrade TRADE_DIALOG_COLLECTOR, DUGTRIO,    MAGNETON,   "MAGGIE@@@@@", $96, $66, METAL_COAT,   50082, "FOREST@@@@@", TRADE_EITHER_GENDER
; fcf38
