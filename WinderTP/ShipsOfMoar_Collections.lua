SHIPS_COLLECTION = {"ALL"}
-- USES LISTS IN COLLECTIONS_LIST
-- "ALL", "SCI-FI", "REAL-LIFE", "WACKY"
-- CAN BE ONE OR MORE COLLECTIONS
-- EXAMPLES:
-- {"ALL"}
-- OR
-- {"SCI-FI", "WACKY"}

WHITELIST = 
-- LIST OF SHIP NAMES
-- SHIPS SPECIFIED IN THIS LIST WILL BE ADDED ON TOP OF COLLECTIONS_LIST
-- OVERRIDES BLACKLIST
-- EXAMPLE: {"Trabant", "MEA Shuttle"}
{""}



BLACKLIST =
-- LIST OF SHIP NAMES
-- SHIPS SPECIFIED IN THIS LIST WILL NOT BE ADDED 
-- OVERRIDES COLLECTIONS_LIST
-- EXAMPLE: {"Trabant", "MEA Shuttle"}
{""}

COLLECTIONS_LIST =
-- LISTS OF COLLECTIONS
-- USES ENTRY NAMES IN SHIPS_DATA
-- ADD YOUR OWN COLLECTION HERE
{	
	["ALL"] =		{	-- EVERY SINGLE SHIP
						"X Wing",
						"A Wing",
						"Y Wing",
						"Falcon",
						"Tie Fighter",
						"Tie Interceptor",
						"Tie Bomber",
						"Naboo Starfighter",
						"Trabant",
						"BG Viper",
						"Flying Saucer",
						"Arc 170",
						"Space RV",
						"TARDIS",
						"Pioneer Kanara",
						"SC Dvergr",
						"Death Row",
						"MAX Delta",
						"Flying Fox",
						"Thunderfighter",
						"Planet Express",
						"Halo Pelican",
						"Space Shuttle",
						"Spitfire",
						"BF-109",
						"MiG-15",
						"BF-110",
						"Ratchet Ship",
						"Lobster Ship",
						"Tron Ship 1",
						"Tron Ship 2",
						"Me 262",
						"Ekranoplan",
						"B-17",
						"Sailing Ship",
						"Mitsubishi Zero",
						"F-16",
						"MiG-23",
						"Su-15",
						"Speedboat",
						"Spinner",
						"Sports Hover Car",
						"DB Hovercar",
						"Syndicate Helo",
						"MCRN Dropship",
						"ID4 Attacker",
						"ME SX3 Fighter",
						"MEA Shuttle",
						"Serenity",
						"Razor Crest",
						"Dark X Wing",
						"Eta-2",
						"StarViper",
						"Bat Wing",
						"Tie Defender",
						"Droid Tri-Fighter",
						"Tie Phantom",
						"Imperial Shuttle",
						"Tie Silencer",
						"Danube Shuttle",
						"Enterprise-D",
						"DeLorean",
						"SW7 X Wing",
						"Wipeout Goteki",
						"Wipeout AG System",
						"Halo Phantom",
						"GotG Milano",
						"Snowspeeder",
						"Gunboat",
						"Dalek Ship",
					},
	["SCI-FI"] =	{
						"X Wing",
						"A Wing",
						"Y Wing",
						"Falcon",
						"Tie Fighter",
						"Tie Interceptor",
						"Tie Bomber",
						"Naboo Starfighter",
						"BG Viper",
						"Flying Saucer",
						"Arc 170",
						"TARDIS",
						"Pioneer Kanara",
						"SC Dvergr",
						"Death Row",
						"MAX Delta",
						"Flying Fox",
						"Thunderfighter",
						"Halo Pelican",
						"Ratchet Ship",
						"Lobster Ship",
						"Tron Ship 1",
						"Tron Ship 2",
						"Spinner",
						"Sports Hover Car",
						"DB Hovercar",
						"Syndicate Helo",
						"MCRN Dropship",
						"ID4 Attacker",
						"ME SX3 Fighter",
						"MEA Shuttle",
						"Serenity",
						"Razor Crest",
						"Dark X Wing",
						"Eta-2",
						"StarViper",
						"Bat Wing",
						"Tie Defender",
						"Droid Tri-Fighter",
						"Tie Phantom",
						"Imperial Shuttle",
						"Tie Silencer",
						"Danube Shuttle",
						"Enterprise-D",
						"DeLorean",
						"SW7 X Wing",
						"Wipeout Goteki",
						"Wipeout AG System",
						"Halo Phantom",
						"GotG Milano",
						"Snowspeeder",
						"Gunboat",
						"Dalek Ship",
					},
	["REAL-LIFE"] =	{
						"Space Shuttle",
						"Spitfire",
						"BF-109",
						"MiG-15",
						"BF-110",
						"Me 262",
						"Ekranoplan",
						"B-17",
						"Mitsubishi Zero",
						"F-16",
						"MiG-23",
						"Su-15",
						"Sailing Ship",
						"Speedboat",
					},
	["WACKY"] =		{
						"Trabant",
						"Space RV",
						"Planet Express",
					},
	["TEST"] =		{
						"Dalek Ship",
					},
					
}

SHIPS_DATA = 
{ 
	["X Wing"] =			{ ["Name"] = 		"_XWING_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_XWING_NEW\WINDER_XWING.SCENE.MBIN",
							},
	["A Wing"] =			{ ["Name"] = 		"_AWING_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_AWING\AWING.SCENE.MBIN",
							},
	["Y Wing"] =			{ ["Name"] = 		"_YWING_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_YWING/WINDER_YWING.SCENE.MBIN",
							},
	["Falcon"] =			{ ["Name"] = 		"_FALCON_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_FALCON/WINDER_FALCON.SCENE.MBIN",
							},
	["Tie Fighter"] =		{ ["Name"] = 		"_TIE_F_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TIE_F/WINDER_TIE_F.SCENE.MBIN",
							},
	["Tie Interceptor"] =	{ ["Name"] = 		"_TIE_I_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TIE_I/WINDER_TIE_I.SCENE.MBIN",
							},
	["Tie Bomber"] =		{ ["Name"] = 		"_TIE_B_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TIE_B/WINDER_TIE_B.SCENE.MBIN",
							},
	["Naboo Starfighter"] =	{ ["Name"] = 		"_NABOO_SF_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_NABOO_SF/WINDER_NABOO_SF.SCENE.MBIN",
							},
	["Trabant"] =			{ ["Name"] = 		"_TRABANT_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TRABANT_FLY/WINDER_TRABANT.SCENE.MBIN",
							},
	["BG Viper"] =			{ ["Name"] = 		"_VIPERIV_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_VIPERIV/WINDER_VIPERIV.SCENE.MBIN",
							},
	["Flying Saucer"] =		{ ["Name"] = 		"_UFO_1_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_UFO_1/WINDER_UFO_1.SCENE.MBIN",
							},
	["Arc 170"] =			{ ["Name"] = 		"_ARC170_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_ARC170/WINDER_ARC170.SCENE.MBIN",
							},
	["Space RV"] =			{ ["Name"] = 		"_SPACERV_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SPACERV\WINDER_SPACERV.SCENE.MBIN",
							},
	["TARDIS"] =			{ ["Name"] = 		"_TARDIS_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TARDIS\WINDER_TARDIS.SCENE.MBIN",
							},
	["Pioneer Kanara"] =	{ ["Name"] = 		"_KANARA_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_KANARA\WINDER_KANARA.SCENE.MBIN",
							},
	["SC Dvergr"] =			{ ["Name"] = 		"_DVERGR_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_DVERGR\WINDER_DVERGR.SCENE.MBIN",
							},
	["Death Row"] =			{ ["Name"] = 		"_DEATHROW_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_DEATHROW\WINDER_DEATHROW.SCENE.MBIN",
							},
	["MAX Delta"] =			{ ["Name"] = 		"_MAXD_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_MAXD\WINDER_MAXD.SCENE.MBIN",
							},
	["Flying Fox"] =		{ ["Name"] = 		"_FLYFOX_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_FLYINGFOX\WINDER_FLYINGFOX.SCENE.MBIN",
							},
	["Thunderfighter"] =	{ ["Name"] = 		"_BUCKR_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_BUCKR\WINDER_BUCKR.SCENE.MBIN",
							},
	["Planet Express"] =	{ ["Name"] = 		"_PEXP_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_PEXPRESS\PEXPRESS.SCENE.MBIN",
							},
	["Halo Pelican"] =		{ ["Name"] = 		"_PELICAN_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_PELICAN\WINDER_PELICAN.SCENE.MBIN",
							},
	["Space Shuttle"] =		{ ["Name"] = 		"_DISCOV_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_DISCOVERY\WINDER_DISCOVERY.SCENE.MBIN",
							},
	["Spitfire"] =			{ ["Name"] = 		"_SPITFIRE_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SPITFIRE\WINDER_SPITFIRE.SCENE.MBIN",
							},
	["BF-109"] =			{ ["Name"] = 		"_BF109_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_BF109\WINDER_BF109.SCENE.MBIN",
							},
	["MiG-15"] =			{ ["Name"] = 		"_MIG15_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_MIG15\WINDER_MIG15.SCENE.MBIN",
							},
	["BF-110"] =			{ ["Name"] = 		"_BF110_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_BF110\WINDER_BF110.SCENE.MBIN",
							},
	["Ratchet Ship"] =		{ ["Name"] = 		"_RATCHET_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_RATCHET\WINDER_RATCHET.SCENE.MBIN",
							},
	["Lobster Ship"] =		{ ["Name"] = 		"_LOBSTER_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_LOBSTER\WINDER_LOBSTER.SCENE.MBIN",
							},
	["Tron Ship 1"] =		{ ["Name"] = 		"_TRON1_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TRON1\WINDER_TRON1.SCENE.MBIN",
							},
	["Tron Ship 2"] =		{ ["Name"] = 		"_TRON2_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_TRON2\WINDER_TRON2.SCENE.MBIN",
							},
	["Me 262"] =			{ ["Name"] = 		"_SCHWALBE_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SCHWALBE\WINDER_SCHWALBE.SCENE.MBIN",
							},
	["Ekranoplan"] =		{ ["Name"] = 		"_EKRAN_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_EKRAN\WINDER_EKRAN.SCENE.MBIN",
							},
	["B-17"] =				{ ["Name"] = 		"_B17_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_B17\WINDER_B17.SCENE.MBIN",
							},
	["Sailing Ship"] =		{ ["Name"] = 		"_KRAIER_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_KRAIER\WINDER_KRAIER.SCENE.MBIN",
							},
	["Mitsubishi Zero"] =	{ ["Name"] = 		"_ZERO_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_ZERO\WINDER_ZERO.SCENE.MBIN",
							},
	["F-16"] =				{ ["Name"] = 		"_F16_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_F16\WINDER_F16.SCENE.MBIN",
							},
	["MiG-23"] =			{ ["Name"] = 		"_MIG23_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_MIG23\WINDER_MIG23.SCENE.MBIN",
							},
	["Su-15"] =				{ ["Name"] = 		"_SU15_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SU15\WINDER_SU15.SCENE.MBIN",
							},
	["Speedboat"] =			{ ["Name"] = 		"_SPEEDBOAT_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SPEEDBOAT\WINDER_SPEEDBOAT.SCENE.MBIN",
							},
	["Spinner"] =			{ ["Name"] = 		"_SPINNER_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_BR_SPINNER\WINDER_BR_SPINNER.SCENE.MBIN",
							},
	["Sports Hover Car"] =	{ ["Name"] = 		"_H_SPORT1_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_HOVER_SPORT01\WINDER_HOVER_SPORT01.SCENE.MBIN",
							},
	["DB Hovercar"] =		{ ["Name"] = 		"_DBCAR1_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_DBHOVER\WINDER_DBHOVER.SCENE.MBIN",
							},
	["Syndicate Helo"] =	{ ["Name"] = 		"_HELOA_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_SPEED_HELO\WINDER_SPEED_HELO.SCENE.MBIN",
							},
	["MCRN Dropship"] =		{ ["Name"] = 		"_EXP_DROP_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\MCRN_DROPSHIP\MCRN_DROPSHIP.SCENE.MBIN",
							},
	["ID4 Attacker"] =		{ ["Name"] = 		"_SHIP_ID4ATTACKER",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\ID4ATTACKER\ID4ATTACKER.SCENE.MBIN",
							},
	["ME SX3 Fighter"] =	{ ["Name"] = 		"_ME_SR3FIGHT_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_ME_SR3FIGHTER\WINDER_ME_SR3FIGHTER.SCENE.MBIN",
							},
	["MEA Shuttle"] =		{ ["Name"] = 		"_MEA_SHUTTLE_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_MEA_SHUTTLE\WINDER_MEA_SHUTTLE.SCENE.MBIN",
							},
	["Serenity"] =			{ ["Name"] = 		"_Ship_Serenity",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\SERENITY\SERENITY.SCENE.MBIN",
							},
	["Razor Crest"] =		{ ["Name"] = 		"_Ship_RazorCrest",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\RAZORCREST\RAZORCREST.SCENE.MBIN",
							},
	["Dark X Wing"] =		{ ["Name"] = 		"_Ship_XWingDark",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\XWINGDARK\XWINGDARK.SCENE.MBIN",
							},
	["Eta-2"] =				{ ["Name"] = 		"_Ship_JediStarFighter",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\JEDISTARFIGHTER\JEDISTARFIGHTER.SCENE.MBIN",
							},
	["StarViper"] =			{ ["Name"] = 		"_Ship_StarViper",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\STARVIPER\STARVIPER.SCENE.MBIN",
							},
	["Bat Wing"] =			{ ["Name"] = 		"_Ship_Batwing",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\BATWING\BATWING.SCENE.MBIN",
							},
	["Tie Defender"] =		{ ["Name"] = 		"_Ship_TieD",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\TIED\TIED.SCENE.MBIN",
							},
	["Droid Tri-Fighter"] =	{ ["Name"] = 		"_Ship_DroidTriFighter",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\DROIDTRIFIGHTER\DROIDTRIFIGHTER.SCENE.MBIN",
							},
	["Tie Phantom"] =		{ ["Name"] = 		"_Ship_TieP",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\TIEP\TIEP.SCENE.MBIN",
							},
	["Imperial Shuttle"] =	{ ["Name"] = 		"_Ship_ImperialShuttle",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\IMPERIALSHUTTLE\IMPERIALSHUTTLE.SCENE.MBIN",
							},
	["Tie Silencer"] =		{ ["Name"] = 		"_Ship_TieS",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\TIES\TIES.SCENE.MBIN",
							},
	["Danube Shuttle"] =	{ ["Name"] = 		"_Ship_StDanube",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\STDANUBE\STDANUBE.SCENE.MBIN",
							},
	["Enterprise-D"] =		{ ["Name"] = 		"_Ship_StNcc1701d",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\STNCC1701D\STNCC1701D.SCENE.MBIN",
							},
	["DeLorean"] =			{ ["Name"] = 		"_DELOREAN_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_DELOREAN\WINDER_DELOREAN.SCENE.MBIN",
							},
	["SW7 X Wing"] =		{ ["Name"] = 		"_FA_XWING_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_FA_XWING\WINDER_FA_XWING.SCENE.MBIN",
							},
	["Wipeout Goteki"] =	{ ["Name"] = 		"_GOTEKI_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_WIPEOUT_GOTEKI\WINDER_WIPEOUT_GOTEKI.SCENE.MBIN",
							},
	["Wipeout AG System"] =	{ ["Name"] = 		"_AGSYS_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_WIPEOUT_AG\WINDER_WIPEOUT_AG.SCENE.MBIN",
							},
	["Halo Phantom"] =		{ ["Name"] = 		"_HALO_PHANTOM_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_HALO_PHANTOM\WINDER_HALO_PHANTOM.SCENE.MBIN",
							},
	["GotG Milano"] =		{ ["Name"] = 		"_MILANO_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\WINDER\WINDER_MILANO\WINDER_MILANO.SCENE.MBIN",
							},
	["Snowspeeder"] =		{ ["Name"] = 		"_SNOWSPEEDER_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_SNOWSPEEDER\WINDER_SNOWSPEEDER.SCENE.MBIN",
							},
	["Gunboat"] =			{ ["Name"] = 		"_GUNBOAT_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_GUNBOAT\WINDER_GUNBOAT.SCENE.MBIN",
							},
	["Dalek Ship"] =		{ ["Name"] = 		"_DALEK1_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS/WINDER\WINDER_DALEK_SHIP\WINDER_DALEK_SHIP.SCENE.MBIN",
							},
	
}


function GetDescriptorEntry(NAME, SCENE)
return [[
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="]] .. string.upper(NAME) .. [[" />
          <Property name="Name" value="]] .. NAME .. [[" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="]] .. SCENE .. [[" />
            </Property>
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMMODELS\WINDER\ENGINE_BOOST.SCENE.MBIN" />
            </Property>
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SHARED/WEAPONS/SHIPGUN.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
]]
end


SHIP_DESCRIPTOR_LIST = {}
BLACKED = false

for i,j in pairs(SHIPS_COLLECTION) do
	for k,l in pairs(COLLECTIONS_LIST[j]) do
			BLACKED = false
			for m,n in pairs(BLACKLIST) do
				if l == n then BLACKED = true end
			end
			if not BLACKED then
				table.insert(SHIP_DESCRIPTOR_LIST, GetDescriptorEntry(SHIPS_DATA[l]["Name"], SHIPS_DATA[l]["SCENEGRAPH"]))
			end
	end
end

if WHITELIST[1] ~= "" then
	for i,j in pairs(WHITELIST) do
		table.insert(SHIP_DESCRIPTOR_LIST, GetDescriptorEntry(SHIPS_DATA[j]["Name"], SHIPS_DATA[j]["SCENEGRAPH"]))		
	end
end

SHIP_DESCRIPTOR_EXPORT =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.37.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_SHUTTLE_" />
      <Property name="Descriptors">
]]
SHIP_DESCRIPTOR_EXPORT = SHIP_DESCRIPTOR_EXPORT .. table.concat(SHIP_DESCRIPTOR_LIST)
SHIP_DESCRIPTOR_EXPORT = SHIP_DESCRIPTOR_EXPORT .. [[
</Property>
    </Property>
  </Property>
</Data>]]




NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~ShipsOfMoar_CustomCollection.pak",
["MOD_AUTHOR"]				= "WinderTP, Gumsk, Kibbles",
["MOD_DESCRIPTION"]			= "SHIPS!",
["NMS_VERSION"]				= "3.52+",
["ADD_FILES"] 				= 
	{	
		{
			["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC.DESCRIPTOR.EXML",
			["FILE_CONTENT"] 	 = SHIP_DESCRIPTOR_EXPORT
		},
	}
}