Author = "Gumsk"	-- Edited by Xen0nex	(temporary fix to BOUNTYLASER3 typo)
ModName = "GExos Challenge"
ModNameSub = "gDamageX"
BaseDescription = "Damage adjustments"
GameVersion = "398"
ModVersion = "a"

FileSource = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN"

--Global damage multipliers to quickly adjust all damage values within a particular category, on top of any individual adjustments below
Starships =					1				--Damage from starships / freighters
Flora =						1				--Damage from all kinds of Hazardous Flora
Fauna =						1				--Damage from all kinds of Hazardous Fauna / Creatures
Robots =					1				--Damage from planetary Sentinels, turrets/drones in Derelict Freighters (Sentinel starships/freighters covered by "Starships")
Other =						1				--Damage from most other damage sources such as environmental hazards, falling, starship impact, pirate building raids, etc.

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {

	{["SPECIAL_KEY_WORDS"] = {"Id","BASICDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 1}}}, --default 1

	{["SPECIAL_KEY_WORDS"] = {"Id","ENERGY"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 60*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMEHEATDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","NOOXYDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMECOLDDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","TOXICGASDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","RADIATIONDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 5*Robots}}}, --default 2

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG_MED"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 7*Robots}}}, --default 3.5

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTBIGGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 10*Robots}}}, --default 6 (used to be 11, default 8) ~Xen0nex

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGRENADEDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 11*Robots}}}, --default 7

	{["SPECIAL_KEY_WORDS"] = {"Id","LASERDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 6*Robots}}}, --default 3	(used to be 7, default 5) ~Xen0nex

	{["SPECIAL_KEY_WORDS"] = {"Id","SMLCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 30*Fauna}}}, --default 20
	
	{["SPECIAL_KEY_WORDS"] = {"Id","MEDCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Fauna}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","LRGCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 80*Fauna}}}, --default 50
		
	{["SPECIAL_KEY_WORDS"] = {"Id","HUGECREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Fauna}}}, --default 80
	
	{["SPECIAL_KEY_WORDS"] = {"Id","PLAYERPREDDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 60*Fauna}}}, --default 40
		
	{["SPECIAL_KEY_WORDS"] = {"Id","PREDDMGVR"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40*Fauna}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRTDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 80*Fauna}}}, --default 40
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FIEND_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 45*Fauna}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FIENDSPIT_DMG"},				--Added Xen0nex
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 3*Fauna}}}, --default 1
		
	{["SPECIAL_KEY_WORDS"] = {"Id","PLANTDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Flora}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 30*Starships}}}, --default 14
		
	{["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 35*Starships}}}, --default 15

	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 35*Starships}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40*Starships}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 45*Starships}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40*Starships}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Id", "BOUNTYLASER2"}}}, --default "BOUNTYLASER3", presumably a typo
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER2"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Starships}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 75*Starships}}}, --default 50
		
	{["SPECIAL_KEY_WORDS"] = {"Id","WALKERLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 12*Robots}}}, --default 5		(used to be 25, default 9) ~Xen0nex

	{["SPECIAL_KEY_WORDS"] = {"Id","SENTINEL_FLAME"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 8*Robots}}}, --default 3

	{["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Starships}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Starships}}}, --default 15

	{["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 150*Other}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 250*Other}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 400*Other}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","IMPACTGROUND"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 800*Other}}},
	
	{["SPECIAL_KEY_WORDS"] = {"Id","IMPACTSHIP"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 25*Other}}},	--deafult 10

	{["SPECIAL_KEY_WORDS"] = {"Id","IMPACTINSTANCE"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 400*Other}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 120*Starships}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 45*Starships}}}, --default 20

	{["SPECIAL_KEY_WORDS"] = {"Id","GASPLANT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Flora}}}, --default 18

	{["SPECIAL_KEY_WORDS"] = {"Id","VENT_HEAT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125*Other}}}, --default 75

	{["SPECIAL_KEY_WORDS"] = {"Id","SPORE_VENT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 75*Flora}}}, --default 25

	{["SPECIAL_KEY_WORDS"] = {"Id","FISHFIEND_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Fauna}}}, --default 65
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FLOATER_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125*Fauna}}}, --default 80
		
	{["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 35*Fauna}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","GRABPLANT_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Flora}}}, --default 10
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FISHFIEND_PROP"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 10*Fauna}}}, --default 1
		
	{["SPECIAL_KEY_WORDS"] = {"Id","CLAM_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Fauna}}}, --default 35
		
	{["SPECIAL_KEY_WORDS"] = {"Id","VENUSFLY_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100*Flora}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLERSPITDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40*Fauna}}}, --default 20

	{["SPECIAL_KEY_WORDS"] = {"Id","BASETURRETPDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 20*Robots}}}, --default 5	

	{["SPECIAL_KEY_WORDS"] = {"Id","LIGHTNING"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125*Other}}}, --default 75

	{["SPECIAL_KEY_WORDS"] = {"Id","METEOR"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125*Other}}}, --default 75
		
	{["SPECIAL_KEY_WORDS"] = {"Id","TORNADO"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50*Other}}}, --default 35
		
	{["SPECIAL_KEY_WORDS"] = {"Id","MINIDRONE_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 15*Robots}}}, --default 6
	
	{["SPECIAL_KEY_WORDS"] = {"Id","PIRATERAID"},		--RAID_BUILDING when Pirate Raids are attacking a building before the player takes off in their ship, or PLANET_FLYBY
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 4*Other}}}, --default 4		(8)

}}}}}}