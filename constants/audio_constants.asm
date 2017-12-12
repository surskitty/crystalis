; pitch
; FrequencyTable indexes (see data/audio/notes.asm)
	const_def
	const __ ; 0
	const C_ ; 1
	const C# ; 2
	const D_ ; 3
	const D# ; 4
	const E_ ; 5
	const F_ ; 6
	const F# ; 7
	const G_ ; 8
	const G# ; 9
	const A_ ; a
	const A# ; b
	const B_ ; c
	const CC ; d (used for pitchoffset)

; channel
; ChannelPointers indexes (see engine/audio.asm)
	const_def
	const CHAN1 ; 0
	const CHAN2 ; 1
	const CHAN3 ; 2
	const CHAN4 ; 3
NUM_MUSIC_CHANS EQU const_value
NUM_NOISE_CHANS EQU const_value
	const CHAN5 ; 4
	const CHAN6 ; 5
	const CHAN7 ; 6
	const CHAN8 ; 7
NUM_CHANNELS EQU const_value

; Flags1
	const_def
	const SOUND_CHANNEL_ON ; 0
	const SOUND_SUBROUTINE ; 1
	const SOUND_LOOPING    ; 2
	const SOUND_SFX        ; 3
	const SOUND_NOISE      ; 4
	const SOUND_REST       ; 5

; Flags2
	const_def
	const SOUND_VIBRATO     ; 0
	const SOUND_PITCH_WHEEL ; 1
	const SOUND_DUTY        ; 2
	const SOUND_UNKN_0B     ; 3
	const SOUND_CRY_PITCH   ; 4
	const SOUND_UNKN_0D     ; 5
	const SOUND_UNKN_0E     ; 6
	const SOUND_UNKN_0F     ; 7

; Flags3
	const_def
	const SOUND_VIBRATO_DIR     ; 0
	const SOUND_PITCH_WHEEL_DIR ; 1

; NoteFlags
	const_def
	const NOTE_DUTY_OVERRIDE    ; 0
	const NOTE_FREQ_OVERRIDE    ; 1
	const NOTE_UNUSED           ; 2
	const NOTE_UNKN_3           ; 3
	const NOTE_NOISE_SAMPLING   ; 4
	const NOTE_REST             ; 5
	const NOTE_VIBRATO_OVERRIDE ; 6

; Volume:
MAX_VOLUME EQU $77
