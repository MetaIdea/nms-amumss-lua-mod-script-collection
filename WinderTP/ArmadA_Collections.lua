-- if set to true, the script will automatically run
-- without asking for user input for non-capital freighter spawn pool
AUTORUN = false

-------------------------------------------------
-- NON-CAPITAL FREIGHTER USER DEFAULTS SECTION --
-- NON-CAPITAL FREIGHTER USER DEFAULTS SECTION --
-- NON-CAPITAL FREIGHTER USER DEFAULTS SECTION 
-------------------------------------------------

INCLUDE_ARMADA_IN_NORMAL_FREIGHTERS = true
VANILLA_FREIGHTER_REPEAT = 1

--------------------------------------------------------
-- END OF NON-CAPITAL FREIGHTER USER DEFAULTS SECTION --
-- END OF NON-CAPITAL FREIGHTER USER DEFAULTS SECTION --
-- END OF NON-CAPITAL FREIGHTER USER DEFAULTS SECTION --
--------------------------------------------------------


-------------------------
-- COLLECTIONS SECTION --
-- COLLECTIONS SECTION --
-- COLLECTIONS SECTION --
-------------------------

SHIPS_COLLECTION = {"ALL"}
-- AFFECTS CAPITAL FREIGHTERS ONLY
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
						"ARMADA CAPITAL",
						"VANILLA",
					},
					
}

--------------------------------
-- END OF COLLECTIONS SECTION --
-- END OF COLLECTIONS SECTION --
-- END OF COLLECTIONS SECTION --
--------------------------------



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

-- INDIVIDUAL PROC-GEN SCENE REFERENCE
function GetSceneReference(NAME, SCENEGRAPH, TRANSFORM)
return [[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="]] .. NAME .. [[" />
		  <Property name="NameHash" value="0" />
		  <Property name="Type" value="REFERENCE" />
		  <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]] .. TRANSFORM["TransX"] .. [[" />
			<Property name="TransY" value="]] .. TRANSFORM["TransY"] .. [[" />
			<Property name="TransZ" value="]] .. TRANSFORM["TransZ"] .. [[" />
			<Property name="RotX" value="]] .. TRANSFORM["RotX"] .. [[" />
			<Property name="RotY" value="]] .. TRANSFORM["RotY"] .. [[" />
			<Property name="RotZ" value="]] .. TRANSFORM["RotZ"] .. [[" />
			<Property name="ScaleX" value="]] .. TRANSFORM["Scale"] .. [[" />
			<Property name="ScaleY" value="]] .. TRANSFORM["Scale"] .. [[" />
			<Property name="ScaleZ" value="]] .. TRANSFORM["Scale"] .. [[" />
		  </Property>
		  <Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="SCENEGRAPH" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="]] .. SCENEGRAPH .. [[" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property>
]]
end

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
["AMUMSS_SUPPRESS_MSG"] 	= "UNUSED_VARIABLE",
["ADD_FILES"] 				= 
	{	
		{
			["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\CAPITALFREIGHTER_PROC.DESCRIPTOR.EXML",
			["FILE_CONTENT"] 	 = SHIP_DESCRIPTOR_EXPORT
		},
	},
}


VANILLA_REPEAT = VANILLA_FREIGHTER_REPEAT
INCLUDE = INCLUDE_ARMADA_IN_NORMAL_FREIGHTERS

-- either auto run or ask for user input
if not AUTORUN then
-- asking for user input
INCLUDE_DECISION =
{ INCLUDE_ARMADA_IN_NORMAL_FREIGHTERS,
[[Do you want to include ArmadA freighters in the non-capital freighter spawn pool?
Ignore for 10 seconds to use default (INCLUDE_ARMADA_IN_NORMAL_FREIGHTERS) value: ]] .. tostring(INCLUDE_ARMADA_IN_NORMAL_FREIGHTERS) .. [[

]] }

INCLUDE = GUIF(INCLUDE_DECISION, 10)
end

-- ARMADA NORMAL FREIGHTER PROC GEN SCENE
NOCAP_SCENE =
{
	["SCENE"] =
	{
		["Path"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\FREIGHTER_PROC.SCENE.EXML",
		["Contents"] = "",
	},
	["DESCRIPTOR"] =
	{
		["Path"] = "",
		["Contents"] = "",
	}
}

-- MAKING THE DESCRIPTOR PATH FROM THE SCENE PATH
NOCAP_SCENE["DESCRIPTOR"]["Path"] = NOCAP_SCENE["SCENE"]["Path"]:gsub(".SCENE.", ".DESCRIPTOR.")

if INCLUDE then
NOCAP_DATA =
{
	["ARMADA"] =			{ 	["Name"] = 		"_MSSPSHIP_",
								["SCENEGRAPH"] = 	"CUSTOMMODELS\MSSPFREIGHTERPROC\MSSPFREIGHTERPROC.SCENE.MBIN",
								["Transform"] =
								{
									["TransX"] = "0",
									["TransY"] = "0",
									["TransZ"] = "-700",
									["RotX"] = "0",
									["RotY"] = "0",
									["RotZ"] = "0",
									["Scale"] = "1",
								},
							},
	["VANILLA"] =			{ 	["Name"] = 		"_HGCSHIP_",
								["SCENEGRAPH"] = 	"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\HGCAPITALFREIGHTER_PROC.SCENE.MBIN",
								["Transform"] =
								{
									["TransX"] = "0",
									["TransY"] = "0",
									["TransZ"] = "0",
									["RotX"] = "0",
									["RotY"] = "0",
									["RotZ"] = "0",
									["Scale"] = "1",
								},
							},	
}

-- NOCAP_SCENE DESCRIPTOR TYPE ID
NOCAP_DESCRIPTOR_TYPEID = "FREIGHTER"
NOCAP_DESCRIPTOR_LIST = {}
NOCAP_SCENE_LIST_LOCATORS = {}

if not AUTORUN then
	VANILLA_DECISION =
	{ VANILLA_FREIGHTER_REPEAT,
	[[How many times as likely do you want vanilla freighters to spawn?
(Excluding capital freighters)
Ignore for 10 seconds to use default (VANILLA_FREIGHTER_REPEAT) value: ]] .. VANILLA_FREIGHTER_REPEAT .. [[

]] }

	VANILLA_REPEAT = GUIF(VANILLA_DECISION, 10)
end

table.insert(NOCAP_DESCRIPTOR_LIST, GetDescriptorEntry(NOCAP_DATA["ARMADA"]["Name"],NOCAP_DATA["ARMADA"]["SCENEGRAPH"]))
table.insert(NOCAP_SCENE_LIST_LOCATORS, GetSceneReference(NOCAP_DATA["ARMADA"]["Name"],NOCAP_DATA["ARMADA"]["SCENEGRAPH"],NOCAP_DATA["ARMADA"]["Transform"]))

for i=1,VANILLA_REPEAT do
	table.insert(NOCAP_DESCRIPTOR_LIST, GetDescriptorEntry(NOCAP_DATA["VANILLA"]["Name"]..i,NOCAP_DATA["VANILLA"]["SCENEGRAPH"]))
	table.insert(NOCAP_SCENE_LIST_LOCATORS, GetSceneReference(NOCAP_DATA["VANILLA"]["Name"]..i,NOCAP_DATA["VANILLA"]["SCENEGRAPH"],NOCAP_DATA["VANILLA"]["Transform"]))
end

-- COMPLETING NORMAL FREIGHTER MAIN PROC-GEN SCENE & DESCRIPTOR DATA
NOCAP_SCENE["SCENE"]["Contents"] =
[[<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\FREIGHTER_PROC.SCENE.MBIN" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData.xml">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
]] .. table.concat(NOCAP_SCENE_LIST_LOCATORS) .. [[
  </Property>
</Data>]]

NOCAP_SCENE["DESCRIPTOR"]["Contents"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="]] .. NOCAP_DESCRIPTOR_TYPEID .. [[" />
      <Property name="Descriptors">
]] .. table.concat(NOCAP_DESCRIPTOR_LIST) .. [[
</Property>
    </Property>
  </Property>
</Data>]]

table.insert(NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"], 
		{
			["FILE_DESTINATION"] = NOCAP_SCENE["SCENE"]["Path"],
			["FILE_CONTENT"] 	 = NOCAP_SCENE["SCENE"]["Contents"]
		})
table.insert(NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"], 
		{
			["FILE_DESTINATION"] = NOCAP_SCENE["DESCRIPTOR"]["Path"],
			["FILE_CONTENT"] 	 = NOCAP_SCENE["DESCRIPTOR"]["Contents"]
		})
		
else
table.insert(NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"], 
		{
			["FILE_DESTINATION"] = NOCAP_SCENE["SCENE"]["Path"]:gsub(".EXML", ".MBIN"),
			["INTERNAL_FILE_SOURCE"] = NOCAP_SCENE["SCENE"]["Path"]:gsub(".EXML", ".MBIN")
		})
table.insert(NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"], 
		{
			["FILE_DESTINATION"] = NOCAP_SCENE["DESCRIPTOR"]["Path"]:gsub(".EXML", ".MBIN"),
			["INTERNAL_FILE_SOURCE"] = NOCAP_SCENE["DESCRIPTOR"]["Path"]:gsub(".EXML", ".MBIN")
		})
end