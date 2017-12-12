TreeMons: ; b82e8
	dw TreeMons1
	dw TreeMons1
	dw TreeMons2
	dw TreeMons3
	dw TreeMons4
	dw TreeMons5
	dw TreeMons6
	dw RockMons
	dw TreeMons1

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMons1: ; b82fa
	db 50, SPEAROW,    10
	db 15, MANKEY,     10
	db 15, AIPOM,      10
	db 10, MANKEY,     10
	db  5, AIPOM,      10
	db  5, AIPOM,      10
	db -1

	db 50, MURKROW,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, AIPOM,      10
	db  5, AIPOM,      10
	db  5, AIPOM,      10
	db -1

TreeMons2: ; b8320
	db 50, SPEAROW,    10
	db 15, EKANS,      10
	db 15, MURKROW,    10
	db 10, AIPOM,      10
	db  5, AIPOM,      10
	db  5, AIPOM,      10
	db -1

	db 50, GLIGAR,     10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, AIPOM,      10
	db  5, AIPOM,      10
	db  5, AIPOM,      10
	db -1

TreeMons3: ; b8346
	db 50, EXEGGCUTE,  10
	db 15, SPINARAK,   10
	db 15, LEDYBA,     10
	db 10, HOOTHOOT,   10
	db  5, PARAS,      10
	db  5, NOCTOWL,    10
	db -1

	db 50, EXEGGCUTE,  10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, PINSIR,     10
	db  5, SCYTHER,    10
	db  5, PINSIR,     10
	db -1

TreeMons4: ; b836c
	db 50, HOOTHOOT,   10
	db 15, EKANS,      10
	db 15, HOOTHOOT,   10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

	db 50, FARFETCH_D, 10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMons5: ; b8392
	db 50, HOOTHOOT,   10
	db 15, VENONAT,    10
	db 15, NATU,       10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

	db 50, NATU,       10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMons6: ; b83b8
	db 50, HOOTHOOT,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, NOCTOWL,    10
	db  5, BUTTERFREE, 10
	db  5, BEEDRILL,   10
	db -1

	db 50, HOOTHOOT,   10
	db 15, CATERPIE,   10
	db 15, WEEDLE,     10
	db 10, HOOTHOOT,   10
	db  5, METAPOD,    10
	db  5, KAKUNA,     10
	db -1

RockMons: ; b83de
	db 90, KRABBY,     15
	db 10, SHUCKLE,    15
	db -1
; b83e5
