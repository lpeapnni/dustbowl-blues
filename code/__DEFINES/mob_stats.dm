#define SPECIAL_VALUE_MINIMUM 0
#define SPECIAL_VALUE_DEFAULT 5
#define SPECIAL_VALUE_MAXIMUM 10

#define SKILL_VALUE_MINIMUM -100
#define SKILL_VALUE_DEFAULT	0
#define SKILL_VALUE_MAXIMUM 150

#define SPECIAL_S 	"Strength"
#define SPECIAL_P 	"Perception"
#define SPECIAL_E 	"Endurance"
#define SPECIAL_C 	"Charisma"
#define SPECIAL_I 	"Intelligence"
#define SPECIAL_A 	"Agility"
#define SPECIAL_L 	"Luck"

#define SKILL_ATH	"Athletics"
#define SKILL_LOC	"Lockpick"
#define SKILL_MED	"Medicine"
#define SKILL_PIL	"Pilot"
#define SKILL_REP	"Repair"
#define SKILL_SCI	"Science"
#define SKILL_SUR	"Survival"

#define SKILL_BIG	"Big Guns"
#define SKILL_ENE	"Energy Weapons"
#define SKILL_EXP	"Explosives"
#define SKILL_MEL	"Melee Weapons"
#define SKILL_SMA	"Small Guns"
#define SKILL_UNA	"Unarmed"

#define ALL_SPECIAL list(SPECIAL_S,SPECIAL_P,SPECIAL_E,SPECIAL_C,SPECIAL_I,SPECIAL_A,SPECIAL_L)
#define ALL_SKILLS	list(SKILL_ATH,SKILL_LOC,SKILL_MED,SKILL_PIL,SKILL_REP,SKILL_SCI,SKILL_SUR,SKILL_BIG,SKILL_ENE,SKILL_EXP,SKILL_MEL,SKILL_SMA,SKILL_UNA)
#define ALL_STATS_FOR_LEVEL_UP	list(SKILL_ATH,SKILL_LOC,SKILL_MED,SKILL_PIL,SKILL_REP,SKILL_SCI,SKILL_SUR,SKILL_BIG,SKILL_ENE,SKILL_EXP,SKILL_MEL,SKILL_SMA,SKILL_UNA) //Cant naturally gain more ana
#define ALL_STATS_TO_IMPRINT list(SPECIAL_S,SPECIAL_P,SPECIAL_E,SPECIAL_C,SPECIAL_I,SPECIAL_A,SPECIAL_L) //So that people stop memeing the imprinter

#define SKILL_LEVEL_NONE 		0
#define SKILL_LEVEL_BASIC 		15
#define SKILL_LEVEL_ADEPT 		25
#define SKILL_LEVEL_EXPERT 		40
#define SKILL_LEVEL_PROF 		60
#define SKILL_LEVEL_GODLIKE 	80

#define SKILL_LEVEL_MIN      0 // Min stat value selectable
#define SKILL_LEVEL_MAX      60 // Max stat value selectable

/// Bitflag for shared perk abilities
#define PERK_SHARED_SEE_REAGENTS 0x1
#define PERK_SHARED_SEE_COMMON_REAGENTS 0x2
#define PERK_SHARED_SEE_ILLEGAL_REAGENTS 0x3

