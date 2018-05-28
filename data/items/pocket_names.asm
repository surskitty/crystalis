ItemPocketNames:
; entries correspond to item type constants
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Berry
	dw .Battle
	dw .Medicine
	dw .Mail

.Item:     db "ITEM POCKET@"
.Key:      db "KEY POCKET@"
.Ball:     db "BALL POCKET@"
.TM:       db "TM POCKET@"
.Berry:    db "BERRY POCKET@"
.Battle:   db "BATTLE POCKET@"
.Medicine: db "POTION POCKET@"
