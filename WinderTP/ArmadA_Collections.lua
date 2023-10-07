-- SHIPS_COLLECTION = {"TEST"}
SHIPS_COLLECTION = {"ALL", "GFREIGHTER"}
-- USES LISTS IN COLLECTIONS_LIST
-- "ALL", "GFREIGHTER"
-- CAN BE ONE OR MORE COLLECTIONS
-- NOT CASE-SENSITIVE, BUT IGNORES ANY TYPO (INCLUDING MISSING HYPHENS(-) AND SPACES(" "))
-- EXAMPLES:
-- {"ALL"}
-- OR
-- {"SCI-FI", "WACKY"}

WHITELIST = 
-- LIST OF FREIGHTER NAMES
-- SHIPS SPECIFIED IN THIS LIST WILL BE ADDED ON TOP OF COLLECTIONS_LIST
-- OVERRIDES BLACKLIST
-- NOT CASE-SENSITIVE, BUT IGNORES ANY TYPO (INCLUDING MISSING HYPHENS(-) AND SPACES(" "))
-- EXAMPLE: {"Trabant", "MEA Shuttle"}
{}



BLACKLIST =
-- LIST OF FREIGHTER NAMES
-- SHIPS SPECIFIED IN THIS LIST WILL NOT BE ADDED 
-- OVERRIDES COLLECTIONS_LIST
-- NOT CASE-SENSITIVE, BUT IGNORES ANY TYPO (INCLUDING MISSING HYPHENS(-) AND SPACES(" "))
-- EXAMPLE: {"Trabant", "MEA Shuttle"}
{}

COLLECTIONS_LIST =
-- LISTS OF COLLECTIONS
-- USES ENTRY NAMES IN SHIPS_DATA
-- ADD YOUR OWN COLLECTION HERE
-- NOT CASE-SENSITIVE, BUT IGNORES ANY TYPO (INCLUDING MISSING HYPHENS(-) AND SPACES(" "))
{		
	-- ARMADA SHIPS
	-- PLEASE PUT _ShipsOfMoar.pak INTO YOUR MODS FOLDER AS WELL
	["ALL"] =		{	-- EVERY SINGLE ARMADA FREIGHTER
						"ARMADA",
						"ARMADA CAPITAL",
						"VANILLA",
					},
	-- GFREIGHTER CUSTOM FREIGHTERS BY GUMSK
	-- DESCRIPTOR ONLY - PLEASE DOWNLOAD GSHIP SEPARATELY IF YOU WANT TO INCLUDE THESE AT
	-- https://www.nexusmods.com/nomanssky/mods/2200
	["GFREIGHTER"] ={
						"HARROWER",
						"SWIMPERIALII",
						"PEGASUS",
						"ANNIHILATOR",
						"VENATOR",
						"YAMATO",
						"STNCC1701D",
						"NORMANDYSR2",
						"PROMETHEUS",
						"TACHI",
					},
	["TEST"] =		{	
						"ARMADA",
					},
					
}

SHIPS_DATA = 
{ 
	-- ARMADA SHIPS
	-- PLEASE PUT _ShipsOfMoar.pak INTO YOUR MODS FOLDER AS WELL
	["ARMADA"] =			{ ["Name"] = 		"_MSSPSHIP_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\MSSPFREIGHTERPROC\MSSPFREIGHTERPROC.SCENE.MBIN",
							},
	["ARMADA CAPITAL"] =	{ ["Name"] = 		"_MSSPCSHIP_",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\MSSPCAPITALFREIGHTER\MSSPCAPITALFREIGHTERSPAWNER.SCENE.MBIN",
							},
	["VANILLA"] =			{ ["Name"] = 		"_HGCSHIP_A",
							  ["SCENEGRAPH"] = 	"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\HGCAPITALFREIGHTER_PROC.SCENE.MBIN",
							},
	-- GFREIGHTER CUSTOM FREIGHTERS BY GUMSK
	-- DESCRIPTOR ONLY - PLEASE DOWNLOAD GSHIP SEPARATELY IF YOU WANT TO INCLUDE THESE AT
	-- https://www.nexusmods.com/nomanssky/mods/2200
	["HARROWER"] =			{ ["Name"] = 		"_Hull_Harrower",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\HARROWER\HARROWER.SCENE.MBIN",
							},
	["SWIMPERIALII"] =			{ ["Name"] = 		"_Hull_SWImperialIi",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\SWIMPERIALII\SWIMPERIALII.SCENE.MBIN",
							},
	["PEGASUS"] =			{ ["Name"] = 		"_Hull_Pegasus",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\PEGASUS\PEGASUS.SCENE.MBIN",
							},
	["ANNIHILATOR"] =			{ ["Name"] = 		"_Hull_Annihilator",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\ANNIHILATOR\ANNIHILATOR.SCENE.MBIN",
							},
	["VENATOR"] =			{ ["Name"] = 		"_Hull_Venator",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\VENATOR\VENATOR.SCENE.MBIN",
							},
	["YAMATO"] =			{ ["Name"] = 		"_Hull_Yamato",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\YAMATO\YAMATO.SCENE.MBIN",
							},
	["STNCC1701D"] =			{ ["Name"] = 		"_Hull_Stncc1701d",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\STNCC1701D\STNCC1701D.SCENE.MBIN",
							},
	["NORMANDYSR2"] =			{ ["Name"] = 		"_Hull_NormandySr2",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\NORMANDYSR2\NORMANDYSR2.SCENE.MBIN",
							},
	["PROMETHEUS"] =			{ ["Name"] = 		"_Hull_Prometheus",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\PROMETHEUS\PROMETHEUS.SCENE.MBIN",
							},
	["TACHI"] =				{ ["Name"] = 		"_Hull_Tachi",
							  ["SCENEGRAPH"] = 	"CUSTOMMODELS\TACHI\TACHI.SCENE.MBIN",
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
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
]]
end


SHIP_DESCRIPTOR_LIST = {}
BLACKED = false

if BLACKLIST[1] ~= "" then
	for _i,j in pairs(BLACKLIST) do
		if type(SHIPS_DATA[string.upper(j)]) ~= "table" then
			print([[ArmadA_DEBUG - BLACKLISTED SHIP "]] .. j .. [[" DOES NOT EXIST! CHECK FOR TYPO]])
		end
	end
end

for _i,j in pairs(SHIPS_COLLECTION) do
	if type(COLLECTIONS_LIST[string.upper(j)]) == "table" then
		for _k,l in pairs(COLLECTIONS_LIST[string.upper(j)]) do
				BLACKED = false
				for _m,n in pairs(BLACKLIST) do
					if string.upper(l) == string.upper(n) then
						BLACKED = true
					end
				end
				if not BLACKED then
					if type(SHIPS_DATA[string.upper(l)]) == "table" then
						table.insert(SHIP_DESCRIPTOR_LIST, GetDescriptorEntry(SHIPS_DATA[string.upper(l)]["Name"], SHIPS_DATA[string.upper(l)]["SCENEGRAPH"]))
					else print([[ArmadA_DEBUG - COLLECTION SHIP "]] .. l .. [[" DOES NOT EXIST! CHECK FOR TYPO]])
					end
				end
		end
	else print([[ArmadA_DEBUG - COLLECTION "]] .. j .. [[" DOES NOT EXIST! CHECK FOR TYPO]])
	end
end

if WHITELIST[1] ~= "" then
	for _i,j in pairs(WHITELIST) do
		if type(SHIPS_DATA[string.upper(j)]) == "table" then
			table.insert(SHIP_DESCRIPTOR_LIST, GetDescriptorEntry(SHIPS_DATA[string.upper(j)]["Name"], SHIPS_DATA[string.upper(j)]["SCENEGRAPH"]))	
		else print([[ArmadA_DEBUG - WHITELISTED SHIP "]] .. j .. [[" DOES NOT EXIST! CHECK FOR TYPO]])	
		end
	end
end

SHIP_DESCRIPTOR_EXPORT =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.37.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="CAPSHIP" />
      <Property name="Descriptors">
]] .. table.concat(SHIP_DESCRIPTOR_LIST) .. [[
</Property>
    </Property>
  </Property>
</Data>]]




NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~ArmadA_CustomCollection.pak",
["MOD_AUTHOR"]				= "WinderTP, Gumsk, Kibbles",
["MOD_DESCRIPTION"]			= "SHIPS!",
["ADD_FILES"] 				= 
	{	
		{
			["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\CAPITALFREIGHTER_PROC.DESCRIPTOR.EXML",
			["FILE_CONTENT"] 	 = SHIP_DESCRIPTOR_EXPORT
		},
	}
}