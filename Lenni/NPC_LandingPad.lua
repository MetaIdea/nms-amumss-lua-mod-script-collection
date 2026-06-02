BLDGICON = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.LANDINGPAD.DDS"
ALTBLDGICON = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BAZAAR.LANDINGZONE.DDS"

BUILDABLE_OBJECT_TABLE =
{
	{ ["ID_NAME"]="_U_NPCLANDING", ["P_NAME"]="NPCLANDINGPAD", ["PATH"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/", ["PLACEMENT"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD_PLACEMENT.SCENE.MBIN", ["ICON"]=BLDGICON, ["NAME"]= "NPC_LANDING_NAME", ["NAMELOWER"]="NPC_LANDING_NAME_L", ["DESCRIPTION"]="NPC_LANDING_DESC" },
	{ ["ID_NAME"]="ALT_NPCLANDING", ["P_NAME"]="NPCLANDINGZONE", ["PATH"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/", ["PLACEMENT"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE_PLACEMENT.SCENE.MBIN", ["ICON"]=ALTBLDGICON, ["NAME"]="NPC_LANDING_ALT_NAME", ["NAMELOWER"]="NPC_LANDING_ALT_NAME_L", ["DESCRIPTION"]="NPC_LANDING_DESC" },
}

function GetBaseBuildingObject(ID_NAME, PLACEMENT)
BASEBUILDINGOBJECTSTABLE_ADDING =
					{
						{
							["SKW"]			=	{"ID", "BUILDLANDINGPAD"},
							["SEC_COPY"]	=	"BaseBuildingEntry",
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingEntry",
							["VCT"]			=
							{
								{"ID", ID_NAME}
							}
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingEntry",
							["PKW"]			=	"PlacementScene",
							["VCT"]			=
							{
								{"Filename", PLACEMENT}
							}
						},
						{
							["PKW"]			=	"Objects",
							["SEC_PASTE"]	=	"BaseBuildingEntry",
						},
					}
return BASEBUILDINGOBJECTSTABLE_ADDING
end

function GetBaseBuildingPart(ID_NAME, PATH, P_NAME)
BASEBUILDINGPARTSTABLE_ADDING =
					{
						{
							["SKW"]					=	{"ID", "_BUILDLANDINGPAD"},
							["SEC_COPY"]			=	"BaseBuildingPart",
						},
						{
							["SEC_EDIT"] 			=	"BaseBuildingPart",
							["VCT"]					=
							{
								{"ID", "_" .. ID_NAME}
							}
						},
						{
							["SEC_EDIT"] 			=	"BaseBuildingPart",
							["PKW"]					=	"Model",
							["VCT"]					=
							{
								{"Filename", PATH .. P_NAME .. ".SCENE.MBIN"}
							}
						},
						{
							["SEC_EDIT"] 			=	"BaseBuildingPart",
							["PKW"]					=	"Inactive",
							["VCT"]					=
							{
								{"Filename", ""}
							}
						},
						{
							["PKW"]					=	"Parts",
							["SEC_PASTE"]			=	"BaseBuildingPart"
						},
					}
return BASEBUILDINGPARTSTABLE_ADDING
end

function GetProduct(ID_NAME, ICON, NAME, NAMELOWER, DESC)
PRODUCT_ADDING =
					{
						{
							["SKW"]			=	{"ID", "BUILDLANDINGPAD"},
							["SEC_COPY"]	= 	"Product",
						},
						{
							["SEC_EDIT"]	=	"Product",
							["VCT"]			=
							{
								{"ID", ID_NAME},
								{"Name", NAME},
								{"NameLower", NAMELOWER},
								{"Description", DESC},
								{"BaseValue", "1"},
								{"StackMultiplier", "0"},
								{"NormalisedValueOnWorld", "0"},
								{"NormalisedValueOffWorld", "0"},
								{"EconomyInfluenceMultiplier", "0"},
								{"CanSendToOtherPlayers", "false"},
							}
						},
						{
							["SEC_EDIT"]	=	"Product",
							["PKW"]			=	"Icon",
							["VCT"]			=
							{
								{"Filename", ICON},
							}
						},
						{
							["PKW"]			=	"Table",
							["SEC_PASTE"]	=	"Product",
						}
					}
return PRODUCT_ADDING
end

function GetAutoPartData(ID_NAME)
AUTOPARTDATA_ADDING =
					{
						{
							["SKW"]			=	{"PartID", "_BUILDLANDINGPAD"},
							["SEC_COPY"]	=	"BaseBuildingPartData",
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingPartData",
							["VCT"]			=
							{
								{"PartID", "_" .. ID_NAME},
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	=	"PartsData",
							["SEC_PASTE"]			=	"BaseBuildingPartData",
						}
					}
return AUTOPARTDATA_ADDING
end

function GetBaseBuildingCost(ID_NAME)
BASEBUILDINGCOST_ADDING =
					{
						{
							["SKW"]			=	{"ID", "BUILD_REFINER1"},
							["SEC_COPY"]	=	"BuildingPartCost",
						},
						{
							["SEC_EDIT"]	=	"BuildingPartCost",
							["VCT"]			=
							{
								{"ID", ID_NAME},
							}
						},
						{
							["PKW"]			=	"ObjectCosts",
							["SEC_PASTE"]	=	"BuildingPartCost",
						},
					}
return BASEBUILDINGCOST_ADDING
end	

BASEBUILDINGPARTSTABLE_ADDING_ALL = {}
BASEBUILDINGOBJECTSTABLE_ADDING_ALL = {}
PRODUCT_ADDING_ALL = {}
AUTOPARTDATA_ADDING_ALL = {}
BASEBUILDINGCOST_ADDING_ALL = {}

for i=1,#BUILDABLE_OBJECT_TABLE,1 do
	local baseBuildingParts = GetBaseBuildingPart(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"])
	for j=1, #baseBuildingParts, 1 do
		table.insert(BASEBUILDINGPARTSTABLE_ADDING_ALL, baseBuildingParts[j])
	end

	local baseBuildingObjects = GetBaseBuildingObject(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["PLACEMENT"])
	for j=1, #baseBuildingObjects, 1 do
		table.insert(BASEBUILDINGOBJECTSTABLE_ADDING_ALL,baseBuildingObjects[j])
	end

	local products = GetProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["ICON"], BUILDABLE_OBJECT_TABLE[i]["NAME"], BUILDABLE_OBJECT_TABLE[i]["NAMELOWER"], BUILDABLE_OBJECT_TABLE[i]["DESCRIPTION"])
	for j=1, #products, 1 do
		table.insert(PRODUCT_ADDING_ALL,products[j])
	end

	local autoPartData = GetAutoPartData(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"])
	for j=1, #autoPartData, 1 do
		table.insert(AUTOPARTDATA_ADDING_ALL,autoPartData[j])
	end

	local baseBuildingCosts = GetBaseBuildingCost(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"])
	for j=1, #baseBuildingCosts, 1 do
		table.insert(BASEBUILDINGCOST_ADDING_ALL,baseBuildingCosts[j])
	end
end

NMS_MOD_DEFINITION_CONTAINER	=
{
["MOD_FILENAME"] 			=	"NPC_LandingPad.pak",
["MOD_AUTHOR"]				=	"XiNaaru",
["LUA_AUTHOR"]				=	"Lenni",
["MOD_MAINTENANCE"]			=	"Lenni",
["NMS_VERSION"]				= 	"6.04",
["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				-- Landing Pad
				{
                    ["MBIN_FILE_SOURCE"]    = {
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD.SCENE.MBIN]], "REMOVE"},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGZONE.SCENE.MBIN]], "REMOVE"}
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name","ATTACHMENT"},
							["VCT"]					=	{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGPAD\ENTITIES\LANDINGDATA.ENTITY.MBIN"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGZONE.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name","ATTACHMENT"},
							["VCT"]					=	{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.MBIN"},
							}
						},
					},
				},

				{
                    ["MBIN_FILE_SOURCE"]    = {
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD/ENTITIES/LANDINGDATA.ENTITY.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD/ENTITIES/LANDINGDATA.ENTITY.MBIN]]},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE/ENTITIES/LANDINGZONEDATA.ENTITY.MBIN]],[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.MBIN]]}
					},
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["VCT"]	=	{
								{"AIDestination", "false"},
							}
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= BASEBUILDINGOBJECTSTABLE_ADDING_ALL
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	= BASEBUILDINGPARTSTABLE_ADDING_ALL
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
					["MXML_CHANGE_TABLE"]	= PRODUCT_ADDING_ALL
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
					["MXML_CHANGE_TABLE"]	= AUTOPARTDATA_ADDING_ALL
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	= BASEBUILDINGCOST_ADDING_ALL
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
					["MXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"StartWithAllItemsKnownEnabledData", "KnownProducts"},
							["ADD"]	=	[[
								<Property name="KnownProducts" value="_U_NPCLANDING" />
								<Property name="KnownProducts" value="ALT_NPCLANDING" />
							]],
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["SEC_SAVE_TO"] = "ITEM_TREE",
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "S_LANDINGZONE"},
							["SEC_SAVE_TO"] = "MISC_ITEM_TREE",
						},
						{
							["SEC_EDIT"] = "MISC_ITEM_TREE",
							["SKW"] = {"Unlockable", "U_MINIPORTAL"},
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "MISC_ITEM_TREE",
							["SKW"] = {"Unlockable", "S_LANDINGZONE"},
							["VCT"] = {
								{"Unlockable", "U_MINIPORTAL"},
							},
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["SEC_ADD_NAMED"] = "MISC_ITEM_TREE",
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["REMOVE"] = "SECTION",
						},


						{
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["SEC_SAVE_TO"] = "UNLOCK_TREE",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["PKW"] = "Root",
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["VCT"] = {
								{"Title", "UI_LANDINGPAD_TREE"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = '<Property name="Root" value="GcUnlockableItemTreeNode">',
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "BUILDLANDINGPAD"},
							["VCT"] = {
								{"Unlockable", "_U_NPCLANDING"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "S_LANDINGZONE"},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = [[
								<Property name="Children" value="GcUnlockableItemTreeNode">
									<Property name="Unlockable" value="BUILDLANDINGPAD" />
									<Property name="Children" />
								</Property>
							]],
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "U_MINIPORTAL"},
							["VCT"] = {
								{"Unlockable", "S_LANDINGZONE"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "S_LANDINGZONE"},
							["VCT"] = {
								{"Unlockable", "ALT_NPCLANDING"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "U_PORTALLINE"},
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["SKW"] = {"CostTypeID", "SALVAGE"},
							["SEC_ADD_NAMED"] = "ITEM_TREE",
						},

						{
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["SEC_ADD_NAMED"] = "UNLOCK_TREE",
						},
					},
				},
			}
		},
	},
["ADD_FILES"]				=	{
    { 
		FILE_DESTINATION	= "LocTable.txt",
		FILE_CONTENT		= [[
=NPC_LANDING_NAME_L
EN=NPC Landing Pad
FR=NPC Landing Pad
IT=NPC Landing Pad
DE=NPC Landefeld
ES=NPC Landing Pad
RU=NPC Landing Pad
PL=NPC Landing Pad
NL=NPC Landing Pad
PT=NPC Landing Pad
LA=NPC Landing Pad
BR=NPC Landing Pad
Z1=NPC Landing Pad
ZH=NPC Landing Pad
Z2=NPC Landing Pad
KO=NPC Landing Pad
JA=NPC Landing Pad
US=NPC Landing Pad

=NPC_LANDING_ALT_NAME_L
EN=Alternative NPC Landing Pad
FR=Alternative NPC Landing Pad
IT=Alternative NPC Landing Pad
DE=Alternatives NPC Landefeld
ES=Alternative NPC Landing Pad
RU=Alternative NPC Landing Pad
PL=Alternative NPC Landing Pad
NL=Alternative NPC Landing Pad
PT=Alternative NPC Landing Pad
LA=Alternative NPC Landing Pad
BR=Alternative NPC Landing Pad
Z1=Alternative NPC Landing Pad
ZH=Alternative NPC Landing Pad
Z2=Alternative NPC Landing Pad
KO=Alternative NPC Landing Pad
JA=Alternative NPC Landing Pad
US=Alternative NPC Landing Pad

=NPC_LANDING_NAME
EN=NPC LANDING PAD
FR=NPC LANDING PAD
IT=NPC LANDING PAD
DE=NPC LANDEFELD
ES=NPC LANDING PAD
RU=NPC LANDING PAD
PL=NPC LANDING PAD
NL=NPC LANDING PAD
PT=NPC LANDING PAD
LA=NPC LANDING PAD
BR=NPC LANDING PAD
Z1=NPC LANDING PAD
ZH=NPC LANDING PAD
Z2=NPC LANDING PAD
KO=NPC LANDING PAD
JA=NPC LANDING PAD
US=NPC LANDING PAD

=NPC_LANDING_ALT_NAME
EN=ALTERNATIVE NPC LANDING PAD
FR=ALTERNATIVE NPC LANDING PAD
IT=ALTERNATIVE NPC LANDING PAD
DE=ALTERNATIVES NPC LANDEFELD
ES=ALTERNATIVE NPC LANDING PAD
RU=ALTERNATIVE NPC LANDING PAD
PL=ALTERNATIVE NPC LANDING PAD
NL=ALTERNATIVE NPC LANDING PAD
PT=ALTERNATIVE NPC LANDING PAD
LA=ALTERNATIVE NPC LANDING PAD
BR=ALTERNATIVE NPC LANDING PAD
Z1=ALTERNATIVE NPC LANDING PAD
ZH=ALTERNATIVE NPC LANDING PAD
Z2=ALTERNATIVE NPC LANDING PAD
KO=ALTERNATIVE NPC LANDING PAD
JA=ALTERNATIVE NPC LANDING PAD
US=ALTERNATIVE NPC LANDING PAD

=UI_LANDINGPAD_TREE
EN=Landing Pads
FR=Landing Pads
IT=Landing Pads
DE=Landefelder
ES=Landing Pads
RU=Landing Pads
PL=Landing Pads
NL=Landing Pads
PT=Landing Pads
LA=Landing Pads
BR=Landing Pads
Z1=Landing Pads
ZH=Landing Pads
Z2=Landing Pads
KO=Landing Pads
JA=Landing Pads
US=Landing Pads

=NPC_LANDING_DESC
EN=A stable, reinforced landing pad for starships.
FR=A stable, reinforced landing pad for starships.
IT=A stable, reinforced landing pad for starships.
DE=Ein stabiles, verstärktes Landefeld für Raumschiffe.
ES=A stable, reinforced landing pad for starships.
RU=A stable, reinforced landing pad for starships.
PL=A stable, reinforced landing pad for starships.
NL=A stable, reinforced landing pad for starships.
PT=A stable, reinforced landing pad for starships.
LA=A stable, reinforced landing pad for starships.
BR=A stable, reinforced landing pad for starships.
Z1=A stable, reinforced landing pad for starships.
ZH=A stable, reinforced landing pad for starships.
Z2=A stable, reinforced landing pad for starships.
KO=A stable, reinforced landing pad for starships.
JA=A stable, reinforced landing pad for starships.
US=A stable, reinforced landing pad for starships.

=BLD_LANDINGPAD_DESCRIPTION
EN=A stable, reinforced landing pad for starships. No NPCs can land here.
FR=A stable, reinforced landing pad for starships. No NPCs can land here.
IT=A stable, reinforced landing pad for starships. No NPCs can land here.
DE=Ein stabiles, verstärktes Landefeld für Raumschiffe. Hier können keine NPCs landen.
ES=A stable, reinforced landing pad for starships. No NPCs can land here.
RU=A stable, reinforced landing pad for starships. No NPCs can land here.
PL=A stable, reinforced landing pad for starships. No NPCs can land here.
NL=A stable, reinforced landing pad for starships. No NPCs can land here.
PT=A stable, reinforced landing pad for starships. No NPCs can land here.
LA=A stable, reinforced landing pad for starships. No NPCs can land here.
BR=A stable, reinforced landing pad for starships. No NPCs can land here.
Z1=A stable, reinforced landing pad for starships. No NPCs can land here.
ZH=A stable, reinforced landing pad for starships. No NPCs can land here.
Z2=A stable, reinforced landing pad for starships. No NPCs can land here.
KO=A stable, reinforced landing pad for starships. No NPCs can land here.
JA=A stable, reinforced landing pad for starships. No NPCs can land here.
US=A stable, reinforced landing pad for starships. No NPCs can land here.
		]],
		}
	},
}