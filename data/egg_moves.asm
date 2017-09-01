INCLUDE "includes.asm"


SECTION "Egg Moves", ROMX, BANK[EGG_MOVES]

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal, because they are also TMs.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.


INCLUDE "data/egg_move_pointers.asm"


EggMoves::

BulbasaurEggMoves:
	db LIGHT_SCREEN
	db SKULL_BASH
	db SAFEGUARD
	db CHARM
	db RAZOR_WIND
	db PETAL_DANCE
	db ANCIENTPOWER
	db AMNESIA
	db SLUDGE
	db $ff

CharmanderEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db ROCK_SLIDE
	db BITE
	db OUTRAGE
	db BEAT_UP
	db CRUNCH
	db METAL_CLAW
	db COUNTER
	db $ff

SquirtleEggMoves:
	db MIRROR_COAT
	db HAZE
	db MIST
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db $ff

PidgeyEggMoves:
	db PURSUIT
	db FAINT_ATTACK
	db FORESIGHT
	db $ff

RattataEggMoves:
	db SCREECH
	db FLAME_WHEEL
	db FURY_SWIPES
	db BITE
	db COUNTER
	db REVERSAL
	db $ff

SpearowEggMoves:
	db FAINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db SONICBOOM
	db WHIRLWIND
	db SKY_ATTACK
	db $ff

EkansEggMoves:
	db PURSUIT
	db SLAM
	db SPITE
	db BEAT_UP
	db CRUNCH
	db SCARY_FACE
	db DISABLE
	db $ff

SandshrewEggMoves:
	db FLAIL
	db SAFEGUARD
	db COUNTER
	db RAPID_SPIN
	db METAL_CLAW
	db $ff

NidoranFEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db CHARM
	db COUNTER
	db BEAT_UP
	db SKULL_BASH
	db LOVELY_KISS
	db MOONLIGHT
	db SWEET_KISS
	db $ff

NidoranMEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db CONFUSION
	db AMNESIA
	db COUNTER
	db BEAT_UP
	db LOVELY_KISS
	db MORNING_SUN
	db SWEET_KISS
	db $ff

VulpixEggMoves:
	db FAINT_ATTACK
	db HYPNOSIS
	db FLAIL
	db SPITE
	db DISABLE
	db CAPTIVATE
	db $ff

ZubatEggMoves:
	db QUICK_ATTACK
	db PURSUIT
	db FAINT_ATTACK
	db WHIRLWIND
	db FLAIL
	db HYPNOSIS
	db $ff

OddishEggMoves:
	db SWORDS_DANCE
	db RAZOR_LEAF
	db FLAIL
	db SYNTHESIS
	db CHARM
	db LEECH_SEED
	db $ff

ParasEggMoves:
	db FALSE_SWIPE
	db SCREECH
	db COUNTER
	db PSYBEAM
	db FLAIL
	db SWEET_SCENT
	db LIGHT_SCREEN
	db PURSUIT
	db SYNTHESIS
	db METAL_CLAW
	db AGILITY
	db LEECH_SEED
	db $ff

VenonatEggMoves:
	db BATON_PASS
	db SCREECH
	db AGILITY
	db MORNING_SUN
	db $ff

DiglettEggMoves:
	db FAINT_ATTACK
	db SCREECH
	db ANCIENTPOWER
	db PURSUIT
	db BEAT_UP
	db REVERSAL
	db $ff

MeowthEggMoves:
	db SPITE
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db FLAIL
	db $ff

PsyduckEggMoves:
	db ICE_BEAM
	db HYPNOSIS
	db PSYBEAM
	db FORESIGHT
	db LIGHT_SCREEN
	db FUTURE_SIGHT
	db PSYCHIC_M
	db CROSS_CHOP
	db PETAL_DANCE
	db TRI_ATTACK
	db CONFUSE_RAY
	db $ff

MankeyEggMoves:
	db ROCK_SLIDE
	db FORESIGHT
	db MEDITATE
	db COUNTER
	db REVERSAL
	db BEAT_UP
	db $ff

GrowlitheEggMoves:
	db BODY_SLAM
	db SAFEGUARD
	db CRUNCH
	db THRASH
	db FIRE_SPIN
	db DOUBLE_EDGE
	db MORNING_SUN
	db DOUBLE_KICK
	db $ff

PoliwagEggMoves:
	db MIST
	db BUBBLEBEAM
	db HAZE
	db MIND_READER
	db ENCORE
	db GROWTH
	db LOVELY_KISS
	db SWEET_KISS
	db $ff

AbraEggMoves:
	db LIGHT_SCREEN
	db ENCORE
	db BARRIER
	db METRONOME
	db $ff

MachopEggMoves:
	db LIGHT_SCREEN
	db MEDITATE
	db ROLLING_KICK
	db ENCORE
	db FALSE_SWIPE
	db METRONOME
	db THRASH
	db COUNTER
	db $ff

BellsproutEggMoves:
	db SWORDS_DANCE
	db ENCORE
	db REFLECT
	db SYNTHESIS
	db LEECH_LIFE
	db LOVELY_KISS
	db SWEET_KISS
	db $ff

TentacoolEggMoves:
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db HAZE
	db SAFEGUARD
	db CONFUSE_RAY
	db $ff

GeodudeEggMoves:
	db MEGA_PUNCH
	db ROCK_SLIDE
	db RAPID_SPIN
	db FLAIL
	db $ff

PonytaEggMoves:
	db FLAME_WHEEL
	db THRASH
	db DOUBLE_KICK
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db LOW_KICK
	db DOUBLE_EDGE
	db HORN_DRILL
	db MORNING_SUN
	db CAPTIVATE
	db $ff

SlowpokeEggMoves:
	db SAFEGUARD
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db $ff

FarfetchDEggMoves:
	db FORESIGHT
	db MIRROR_MOVE
	db QUICK_ATTACK
	db FLAIL
	db $ff

DoduoEggMoves:
	db QUICK_ATTACK
	db SUPERSONIC
	db HAZE
	db FAINT_ATTACK
	db FLAIL
	db LOW_KICK
	db MIRROR_MOVE
	db $ff

SeelEggMoves:
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
	db SLAM
	db ENCORE
	db FLAIL
	db HORN_DRILL
	db $ff

GrimerEggMoves:
	db HAZE
	db MEAN_LOOK
	db LICK
	db SCARY_FACE
	db $ff

ShellderEggMoves:
	db BUBBLEBEAM
	db TAKE_DOWN
	db BARRIER
	db RAPID_SPIN
	db SCREECH
	db TWINEEDLE
	db $ff

GastlyEggMoves:
	db PSYWAVE
	db PERISH_SONG
	db HAZE
	db DISABLE
	db SCARY_FAE
	db SMOG
	db $ff

OnixEggMoves:
	db ROCK_SLIDE
	db FLAIL
	db $ff

DrowzeeEggMoves:
	db LIGHT_SCREEN
	db BARRIER
	db METRONOME
	db AMNESIA
	db $ff

KrabbyEggMoves:
	db DIG
	db HAZE
	db AMNESIA
	db FLAIL
	db SLAM
	db METAL_CLAW
	db ANCIENTPOWER
	db AGILITY
	db BIDE
	db $ff

ExeggcuteEggMoves:
	db SYNTHESIS
	db MOONLIGHT
	db REFLECT
	db MEGA_DRAIN
	db ANCIENTPOWER
	db $ff

CuboneEggMoves:
	db ROCK_SLIDE
	db ANCIENTPOWER
	db BELLY_DRUM
	db SCREECH
	db SKULL_BASH
	db PERISH_SONG
	db SWORDS_DANCE
	db DOUBLE_KICK
	db $ff

LickitungEggMoves:
	db BELLY_DRUM
	db MAGNITUDE
	db BODY_SLAM
	db DOUBLESLAP
	db AMNESIA
	db $ff

KoffingEggMoves:
	db SCREECH
	db PSYBEAM
	db DESTINY_BOND
	db PAIN_SPLIT
	db SPITE
	db $ff

RhyhornEggMoves:
	db CRUNCH
	db REVERSAL
	db ROCK_SLIDE
	db THRASH
	db PURSUIT
	db COUNTER
	db MAGNITUDE
	db SKULL_BASH
	db $ff

ChanseyEggMoves:
	db PRESENT
	db METRONOME
	db HEAL_BELL
	db COUNTER
	db SEISMIC_TOSS
	db $ff

TangelaEggMoves:
	db FLAIL
	db CONFUSION
	db MEGA_DRAIN
	db REFLECT
	db AMNESIA
	db SYNTHESIS
	db LEECH_SEED
	db $ff

KangaskhanEggMoves:
	db STOMP
	db FORESIGHT
	db SAFEGUARD
	db DISABLE
	db FAINT_ATTACK
	db COUNTER
	db DOUBLE_EDGE
	db $ff

HorseaEggMoves:
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db DRAGON_RAGE
	db HAZE
	db RAZOR_WIND
	db OUTRAGE
	db $ff

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db SWORDS_DANCE
	db BODY_SLAM
	db SKULL_BASH
	db $ff

MrMimeEggMoves:
	db FUTURE_SIGHT
	db HYPNOSIS
	db METRONOME
	db MIND_READER
	db CONFUSE_RAY
	db $ff

ScytherEggMoves:
	db COUNTER
	db SAFEGUARD
	db BATON_PASS
	db RAZOR_WIND
	db REVERSAL
	db LIGHT_SCREEN
	db SONICBOOM
	db $ff

PinsirEggMoves:
	db FURY_ATTACK
	db FLAIL
	db ROCK_THROW
	db FAINT_ATTACK
	db QUICK_ATTACK
	db $ff

LaprasEggMoves:
	db AURORA_BEAM
	db FORESIGHT
	db BITE
	db FUTURE_SIGHT
	db HORN_DRILL
	db ANCIENTPOWER
	db FISSURE
	db $ff

EeveeEggMoves:
	db FLAIL
	db CHARM
	db GROWTH
	db FAKE_TEARS
	db CAPTIVATE
	db $ff

OmanyteEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db SLAM
	db SUPERSONIC
	db HAZE
	db ROCK_THROW
	db SPIKES
	db BIDE
	db $ff

KabutoEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db DIG
	db FLAIL
	db ROCK_THROW
	db CONFUSE_RAY
	db SCREECH
	db FORESIGHT
	db TAKE_DOWN
	db $ff

AerodactylEggMoves:
	db WHIRLWIND
	db PURSUIT
	db FORESIGHT
	db ROCK_THROW
	db $ff

SnorlaxEggMoves:
	db LICK
	db CHARM
	db LOVELY_KISS
	db SWEET_KISS
	db FISSURE
	db PURSUIT
	db COUNTER
	db $ff

DratiniEggMoves:
	db LIGHT_SCREEN
	db MIST
	db HAZE
	db SUPERSONIC
	db EXTREMESPEED
	db HYDRO_PUMP
	db $ff

ChikoritaEggMoves:
	db VINE_WHIP
	db LEECH_SEED
	db COUNTER
	db PETAL_DANCE
	db BODY_SLAM
	db $ff

CyndaquilEggMoves:
	db QUICK_ATTACK
	db REVERSAL
	db THRASH
	db FORESIGHT
	db SUBMISSION
	db DOUBLE_EDGE
	db $ff

TotodileEggMoves:
	db THRASH
	db ANCIENTPOWER
	db RAZOR_WIND
	db ROCK_SLIDE
	db SUBMISSION
	db FAKE_TEARS
	db $ff

SentretEggMoves:
	db DOUBLE_EDGE
	db PURSUIT
	db SLASH
	db REVERSAL
	db DIZZY_PUNCH
	db CHARM
	db CAPTIVATE
	db $ff

HoothootEggMoves:
	db MIRROR_MOVE
	db FAINT_ATTACK
	db WING_ATTACK
	db WHIRLWIND
	db SKY_ATTACK
	db NIGHT_SHADE
	db AGILITY
	db $ff

LedybaEggMoves:
	db PSYBEAM
	db BIDE
	db LIGHT_SCREEN
	db BARRIER
	db SCREECH
	db ENCORE
	db DIZZY_PUNCH
	db $ff

SpinarakEggMoves:
	db PSYBEAM
	db DISABLE
	db SONICBOOM
	db BATON_PASS
	db PURSUIT
	db GROWTH
	db TWINEEDLE
	db MEGAHORN
	db $ff

ChinchouEggMoves:
	db FLAIL
	db SCREECH
	db LIGHT_SCREEN
	db AGILITY
	db MIST
	db $ff

PichuEggMoves:
	db REVERSAL
	db BIDE
	db PRESENT
	db ENCORE
	db DOUBLESLAP
	db DIZZY_PUNCH
	db PETAL_DANCE
	db SCARY_FACE
	db SING
	db FLAIL
	db FAIRY_WIND
	db $ff

CleffaEggMoves:
	db PRESENT
	db METRONOME
	db AMNESIA
	db BELLY_DRUM
	db MIMIC
	db PETAL_DANCE
	db SCARY_FACE
	db SWIFT
	db DIZZY_PUNCH
	db FAKE_TEARS
	db $ff

IgglybuffEggMoves:
	db PERISH_SONG
	db PRESENT
	db FAINT_ATTACK
	db MIMIC
	db PETAL_DANCE
	db SCARY_FACE
	db DIZZY_PUNCH
	db FAKE_TEARS
	db CAPTIVATE
	db $ff

TogepiEggMoves:
	db PRESENT
	db MIRROR_MOVE
	db PECK
	db FORESIGHT
	db FUTURE_SIGHT
	db MORNING_SUN
	db $ff

NatuEggMoves:
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db FAINT_ATTACK
	db SAFEGUARD
	db $ff

MareepEggMoves:
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db SCREECH
	db REFLECT
	db SAND_ATTACK
	db AGILITY
	db $ff

MarillEggMoves:
	db LIGHT_SCREEN
	db PRESENT
	db AMNESIA
	db FUTURE_SIGHT
	db BELLY_DRUM
	db PERISH_SONG
	db SUPERSONIC
	db FORESIGHT
	db DIZZY_PUNCH
	db HYDRO_PUMP
	db SCARY_FACE
	db FAKE_TEARS
	db BODY_SLAM
	db $ff

SudowoodoEggMoves:
	db SELFDESTRUCT
	db SUBSTITUTE
	db HARDEN
	db ROLLOUT
	db $ff

HoppipEggMoves:
	db CONFUSION
	db GROWL
	db ENCORE
	db DOUBLE_EDGE
	db REFLECT
	db AMNESIA
	db PAY_DAY
	db AGILITY
	db $ff

AipomEggMoves:
	db COUNTER
	db SCREECH
	db PURSUIT
	db AGILITY
	db SPITE
	db SLAM
	db DOUBLESLAP
	db BEAT_UP
	db MIMIC
	db $ff

YanmaEggMoves:
	db WHIRLWIND
	db REVERSAL
	db SWEET_KISS
	db FAINT_ATTACK
	db DOUBLE_EDGE
	db $ff

WooperEggMoves:
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db BELLY_DRUM
	db SCARY_FACE
	db COUNTER
	db ENCORE
	db DOUBLE_KICK
	db RECOVER
	db $ff

MurkrowEggMoves:
	db WHIRLWIND
	db DRILL_PECK
	db QUICK_ATTACK
	db MIRROR_MOVE
	db SKY_ATTACK
	db BEAT_UP
	db PERISH_SONG
	db SCREECH
	db $ff

MisdreavusEggMoves:
	db SCREECH
	db DESTINY_BOND
	db HYPNOSIS
	db $ff

GirafarigEggMoves:
	db TAKE_DOWN
	db AMNESIA
	db FORESIGHT
	db FUTURE_SIGHT
	db BEAT_UP
	db MIRROR_COAT
	db MEAN_LOOK
	db $ff

PinecoEggMoves:
	db REFLECT
	db PIN_MISSILE
	db FLAIL
	db SWIFT
	db SUBSTITUTE
	db COUNTER
	db DOUBLE_EDGE
	db MIRROR_COAT
	db RAZOR_WIND
	db MEAN_LOOK
	db $ff

DunsparceEggMoves:
	db BIDE
	db ANCIENTPOWER
	db ROCK_SLIDE
	db BITE
	db RAGE
	db FURY_ATTACK
	db HORN_DRILL
	db AGILITY
	db $ff

GligarEggMoves:
	db METAL_CLAW
	db WING_ATTACK
	db RAZOR_WIND
	db COUNTER
	db AGILITY
	db BATON_PASS
	db DOUBLE_EDGE
	db $ff

SnubbullEggMoves:
	db METRONOME
	db FAINT_ATTACK
	db REFLECT
	db PRESENT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db LEER
	db LOVELY_KISS
	db FAKE_TEARS
	db DOUBLE_EDGE
	db MIMIC
	db $ff

QwilfishEggMoves:
	db FLAIL
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db DOUBLE_EDGE
	db $ff

ShuckleEggMoves:
	db ACID
	db $ff

HeracrossEggMoves:
	db HARDEN
	db BIDE
	db FLAIL
	db SEISMIC_TOSS
	db PURSUIT
	db DOUBLE_EDGE
	db SEISMIC_TOSS
	db MEGAHORN
	db $ff

SneaselEggMoves:
	db COUNTER
	db SPITE
	db FORESIGHT
	db REFLECT
	db BITE
	db MOONLIGHT
	db PURSUIT
	db $ff

TeddiursaEggMoves:
	db CRUNCH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db FOCUS_ENERGY
	db COUNTER
	db METAL_CLAW
	db SWEET_SCENT
	db FAKE_TEARS
	db CROSS_CHOP
	db DOUBLE_EDGE
	db BELLY_DRUM
	db $ff

SlugmaEggMoves:
	db ACID_ARMOR
	db SMOKESCREEN
	db ROLLOUT
	db $ff

SwinubEggMoves:
	db TAKE_DOWN
	db BITE
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db WHIRLWIND
	db DOUBLE_EDGE
	db FISSURE
	db $ff

CorsolaEggMoves:
	db ROCK_SLIDE
	db SAFEGUARD
	db SCREECH
	db MIST
	db AMNESIA
	db CONFUSE_RAY
	db BIDE
	db $ff

RemoraidEggMoves:
	db AURORA_BEAM
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db AMNESIA
	db MIST
	db FLAIL
	db SWIFT
	db $ff

DelibirdEggMoves:
	db AURORA_BEAM
	db QUICK_ATTACK
	db FUTURE_SIGHT
	db RAPID_SPIN
	db PAY_DAY
	db SPIKES
	db DESTINY_BOND
	db $ff

MantineEggMoves:
	db TWISTER
	db HYDRO_PUMP
	db HAZE
	db SLAM
	db GUST
	db AMNESIA
	db MIRROR_COAT
	db $ff

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
	db WHIRLWIND
	db SKY_ATTACK
	db $ff

HoundourEggMoves:
	db FIRE_SPIN
	db RAGE
	db PURSUIT
	db COUNTER
	db SPITE
	db REVERSAL
	db BEAT_UP
	db DESTINY_BOND
	db $ff

PhanpyEggMoves:
	db FOCUS_ENERGY
	db BODY_SLAM
	db ANCIENTPOWER
	db WATER_GUN
	db ABSORB
	db FISSURE
	db COUNTER
	db $ff

StantlerEggMoves:
	db REFLECT
	db SPITE
	db DISABLE
	db LIGHT_SCREEN
	db BITE
	db SAFEGUARD
	db DOUBLE_KICK
	db THRASH
	db MEGAHORN
	db RAGE
	db $ff

TyrogueEggMoves:
	db RAPID_SPIN
	db HI_JUMP_KICK
	db MACH_PUNCH
	db MIND_READER
	db RAGE
	db DIZZY_PUNCH
	db COUNTER
	db PURSUIT
	db $ff

SmoochumEggMoves:
	db LOVELY_KISS
	db MEDITATE
	db METRONOME
	db PETAL_DANCE
	db CAPTIVATE
	db $ff

ElekidEggMoves:
	db KARATE_CHOP
	db BARRIER
	db ROLLING_KICK
	db MEDITATE
	db CROSS_CHOP
	db DIZZY_PUNCH
	db PURSUIT
	db $ff

MagbyEggMoves:
	db KARATE_CHOP
	db MEGA_PUNCH
	db BARRIER
	db SCREECH
	db CROSS_CHOP
	db FAINT_ATTACK
	db DIZZY_PUNCH
	db BELLY_DRUM
	db $ff

MiltankEggMoves:
	db PRESENT
	db REVERSAL
	db SEISMIC_TOSS
	db MEGA_KICK
	db DIZZY_PUNCH
	db DOUBLE_EDGE
	db $ff

LarvitarEggMoves:
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db RAGE
	db $ff

NoEggMoves:
	db $ff
