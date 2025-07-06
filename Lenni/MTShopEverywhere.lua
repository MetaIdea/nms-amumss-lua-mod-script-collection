ID_NAME = "SHOPWEAPON"
P_NAME = "SHOPWEAPON"
PATH = "MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/"
ICON = "TEXTURES/UI/FRONTEND/ICONS/WIKI/BASE4.DDS"

NMS_MOD_DEFINITION_CONTAINER	=
{
["MOD_FILENAME"] 			=	"MTShopEverywhere.pak",
["MOD_AUTHOR"]				=	"Lenni",
["MOD_CONTRIBUTORS"]		=	"Babscoole, ApexFatality, WinderTP",
["NMS_VERSION"]				=	"5.50",
["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
                    ["MBIN_FILE_SOURCE"]    = {{[[MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPON.SCENE.MBIN]],[[MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPONOLD.SCENE.MBIN]]}},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PKW"]					=	"Children",
							["SEC_COPY"]			=	"Children",
						},
						{
							["SEC_EDIT"]			=	"Children",
							["REMOVE"]				=	"HBOS",
						},
						{
							["SKW"]					=	{"Children", "TkSceneNodeData"},
							["SEC_COPY"]			=	"Locator",
						},
						{
							["SEC_EDIT"]			=	"Locator",
							["VCT"]					=
							{
								{"Name", "WeaponTest"},
								{"NameHash", "0"},
								{"Type", "LOCATOR"},
								{"TransX", "0"},
								{"TransY", "0"},
								{"TransZ", "0"},
								{"RotX", "0"},
								{"RotY", "180"},
								{"RotZ", "0"},
								{"ScaleX", "1"},
								{"ScaleY", "1"},
								{"ScaleZ", "1"},
							}
						},
						{
							["SEC_EDIT"]			=	"Locator",
							["PKW"]					=	"Attributes",
							["REMOVE"]				=	"SECTION",
						},
						{
							["SEC_EDIT"]			=	"Locator",
							["PKW"]					=	{"Children", "Children"},
							["CREATE_HOS"]			=	"TRUE",
						},
						{
							["SEC_EDIT"]			=	"Locator",
							["PKW"]					=	{"Children", "Children"},
							["SEC_COPY"]			=	"ChildrenWrapper",
						},
						{
							["SEC_EDIT"]			=	"Locator",
							["PKW"]					=	{"Children", "Children"},
							["SEC_PASTE"]			=	"Children",
						},
						{
							["SEC_EDIT"]			=	"ChildrenWrapper",
							["PKW"]					=	"Children",
							["SEC_PASTE"]			=	"Locator",
						},
						{
							["PKW"]					=	"Children",
							["REMOVE"]				=	"SECTION",
						},
						{
							["PKW"]					=	"Attributes",
							["ADD_OPTION"]			=	"ADDafterSECTION",
							["SEC_PASTE"]			=	"ChildrenWrapper",
						},
					},
				},
				
                {
                    ["MBIN_FILE_SOURCE"]	= "MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION_PIRATE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"]	=   {"Name","ShopMissionREF1"},
                            ["VALUE_CHANGE_TABLE"]	=
                            {
                                {"Value","MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPONOLD.SCENE.MBIN"},
                            },
                        },
                    },
				},

				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]			=	{"ID", "BUILD_REFINER1"},
							["SEC_COPY"]	=	"BaseBuildingEntry",
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingEntry",
							["VCT"]			=
							{
								{"ID", ID_NAME},
								{"CanPickUp", "false"}
							}
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingEntry",
							["PKW"]			=	"PlacementScene",
							["VCT"]			=
							{
								{"Filename", PATH .. P_NAME .. "_PLACEMENT.SCENE.MBIN"}
							}
						},
						{
							["PKW"]			=	"Objects",
							["SEC_PASTE"]	=	"BaseBuildingEntry",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SKW"]					=	{"ID", "_BUILD_REFINER1"},
							["SEC_COPY"]			=	"BaseBuildingPart",
						},
						{
							["SEC_EDIT"] 			=	"BaseBuildingPart",
							["VCT"]					=
							{
								{"ID", ID_NAME}
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
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SKW"]			=	{"ID", "BUILD_REFINER1"},
							["SEC_COPY"]	= 	"Product",
						},
						{
							["SEC_EDIT"]	=	"Product",
							["VCT"]			=
							{
								{"ID", ID_NAME},
								{"Name", ID_NAME},
								{"NameLower", ID_NAME},
								{"Subtitle", ""},
								{"Description", ""},
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
							["SEC_EDIT"]	=	"Product",
							["PKW"]			=	"HeroIcon",
							["VCT"]			=
							{
								{"Filename", ""},
							}
						},
						{
							["SEC_EDIT"]	=	"Product",
							["PKW"]			=	"TradeCategory",
							["LINE_OFFSET"]	=	1,
							["VCT"]			=
							{
								{"TradeCategory", "None"},
							}
						},
						{
							["SEC_EDIT"]	=	"Product",
							["PKW"]			=	"Requirements",
							["CREATE_HOES"]	=	"TRUE",
							["REMOVE"]		=	"SECTION",
						},
						{
							["PKW"]			=	"Table",
							["SEC_PASTE"]	=	"Product",
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]	=	"METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SKW"]			=	{"PartID", "_BUILD_REFINER1"},
							["SEC_COPY"]	=	"BaseBuildingPartData",
						},
						{
							["SEC_EDIT"]	=	"BaseBuildingPartData",
							["VCT"]			=
							{
								{"PartID", ID_NAME},
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	=	"PartsData",
							["SEC_PASTE"]			=	"BaseBuildingPartData",
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]	=	"METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
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
					},
				},				
				{
					["MBIN_FILE_SOURCE"]	=	"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PKW"]			=	"KnownProducts",
							["ADD"]			=	[[<Property name="KnownProducts" value="]] .. ID_NAME .. [[" />]],
						},
					},
				},
				{
                    ["MBIN_FILE_SOURCE"]    =
					{
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER1_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", PATH .. P_NAME .. "_PLACEMENTDATA.ENTITY.MBIN", "REMOVE"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER1_PLACEMENT.SCENE.MBIN", PATH .. P_NAME .. "_PLACEMENT.SCENE.MBIN", "REMOVE"},
					},
				},
				{
                    ["MBIN_FILE_SOURCE"]    =	PATH .. P_NAME .. "_PLACEMENTDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["VCT"]			=
							{
								{"PartID", ID_NAME}
							}
						}
					}
				},
				{
                    ["MBIN_FILE_SOURCE"]	=	PATH .. P_NAME .. "_PLACEMENT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["REPLACE_TYPE"]	=	"ALL",
							["VCT"]				=
							{
								{"NameHash", "0"},
							}
						},
						{
							["SKW"]			=
							{
								{"Type", "MODEL"},
								{"Type", "COLLISION"},
							},
							["VCT"]			=
							{
								{"Name", PATH .. P_NAME .. "_PLACEMENT"}
							}
						},
						{
							["SKW"]			=	{"Name", "GEOMETRY"},
							["VCT"]			=
							{
								{"Value", PATH .. P_NAME ..".GEOMETRY.MBIN"}
							}
						},
						{
							["SKW"]			=	{"Name", "ATTACHMENT"},
							["VCT"]			=
							{
								{"Value", PATH .. P_NAME .."_PLACEMENTDATA.ENTITY.MBIN"}
							}
						},
					}
				},
			}
		},
	},
}