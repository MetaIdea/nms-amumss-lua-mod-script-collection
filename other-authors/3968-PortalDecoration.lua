local newTransZ = -20
local newRotY   = 90

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_PortalDecoration",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.x",
	MOD_DESCRIPTION = "Placeable Rune Portal decoration.",

	MODIFICATIONS = {
		{
			MBIN_CT = {
				{--NEWFILE
					MBIN_FS = {
						{
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN]],
							[[THISFROMMOD\PORTALDR.SCENE.MBIN]],
							"REMOVE"
						},
						{
							[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\WFC\PATHDECAL_PLACEMENT.SCENE.MBIN]],
							[[THISFROMMOD\PORTALDR_PLACEMENT.SCENE.MBIN]],
							"REMOVE"
						},
						{
							[[MODELS\COMMON\SHARED\ENTITIES\BASICPLACEMENTDATA.ENTITY.MBIN]],
							[[THISFROMMOD\PLACEMENTDATA.ENTITY.MBIN]],
							"REMOVE"
						},
					},
				},
				{--PORTALDR.SCENE
					MBIN_FS = [[THISFROMMOD\PORTALDR.SCENE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Name", [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL]] } },
							VCT = {
								{ "Name", [[THISFROMMOD\PORTALDR]] },
							},
						},
						{
							SKW = {
								{ "Name", "PortalStructure" },--0/0
								{ "Name", "SideA" },--0/180
								{ "Name", "REFPortalMistVFX" },--0/0
								{ "Name", "REFPortalCloudsVFX" },--0/0
							},
							VCT = {
								{ "TransZ", newTransZ },--(-20)
								{ "RotY",   newRotY },--90
							},
						},
						{
							SKW = { { "Name", "PillarsB" } },
							VCT = {
								{ "TransZ", newTransZ },--0
								{ "RotY",   newRotY * 2 },--0,90*2=180
							},
						},
						{
							SKW = { { "Name", "PillarsA" } },
							VCT = {
								{ "TransZ", newTransZ },--0
								{ "RotY",   newRotY * 0 },--90,90*0=0
							},
						},
					},
				},
				{--PORTALDR_PLACEMENT.SCENE
					MBIN_FS = [[THISFROMMOD\PORTALDR_PLACEMENT.SCENE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Name", [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\WFC\PATHDECAL_PLACEMENT]] } },
							VCT = {
								{ "Name", [[THISFROMMOD\PORTALDR_PLACEMENT]] },
							},
						},
						{
							SKW = { { "Name", "GEOMETRY" } },
							VCT = {
								{ "Value", [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.GEOMETRY.MBIN]] },
							},
						},
						{
							SKW = { { "Name", "ATTACHMENT" } },
							VCT = {
								{ "Value", [[THISFROMMOD\PLACEMENTDATA.ENTITY.MBIN]] },
							},
						},
					},
				},
				{--PLACEMENTDATA.ENTITY
					MBIN_FS = [[THISFROMMOD\PLACEMENTDATA.ENTITY.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "PartID", "_PORTALDR" },
							},
						},
					},
				},
				{--BASEBUILDINGCOSTSTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "W_WALL" } },
							SEC_SAVE_TO = "ADD_COST",
						},
						{
							SEC_EDIT = "ADD_COST",
							VCT = {
								{ "ID", "PORTALDR" },--W_WALL
							},
						},
						{
							PKW = "ObjectCosts",
							ADD_OPTION = "ADDafterLINE",
							SEC_ADD_NAMED = "ADD_COST",
						},
					},
				},
				{--BASEBUILDINGOBJECTSTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "BASE_ENGINEORB" } },
							SEC_SAVE_TO = "ADD_OBJECT",
						},
						{
							SEC_EDIT = "ADD_OBJECT",
							VCT = {
								{ "ID", "PORTALDR" },--BASE_ENGINEORB
								{ "Filename", [[THISFROMMOD/PORTALDR_PLACEMENT.SCENE.MBIN]] },
							},
						},
						{
							PKW = "Objects",
							ADD_OPTION = "ADDafterLINE",
							SEC_ADD_NAMED = "ADD_OBJECT",
						},
					},
				},
				{--BASEBUILDINGPARTSTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "_U_PIPELINE" } },
							SEC_SAVE_TO = "ADD_PART",
						},
						{
							SEC_EDIT = "ADD_PART",
							VCT = {
								{ "ID", "_PORTALDR" },--_U_PIPELINE
								{ "Filename", [[THISFROMMOD/PORTALDR.SCENE.MBIN]] },
							},
						},
						{
							PKW = "Parts",
							ADD_OPTION = "ADDafterLINE",
							SEC_ADD_NAMED = "ADD_PART",
						},
					},
				},
				{--NMS_BASEPARTPRODUCTS
					MBIN_FS = [[METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "BUILDCHAIR" } },
							SEC_SAVE_TO = "ADD_PRODUCT",
						},
						{
							SEC_EDIT = "ADD_PRODUCT",
							VCT = {
								{ "ID",           "PORTALDR" },--BUILDCHAIR
								{ "Name",         "BLD_PORTALDR_NAME" },
								{ "NameLower",    "BLD_PORTALDR_NAME_L" },
								{ "Subtitle",     "BLD_PORTALDR_SUBTITLE" },
								{ "Description",  "BLD_PORTALDR_DESCRIPTION" },
								{ "Amount",       "1" },
							},
						},
						{
							SEC_EDIT = "ADD_PRODUCT",
							PKW = "Icon",
							VCT = {
								{ "Filename", [[TEXTURES/UI/FRONTEND/ICONS/WIKI/NEW.3.DDS]] },
							},
						},
						{
							PKW = "Table",
							ADD_OPTION = "ADDafterLINE",
							SEC_ADD_NAMED = "ADD_PRODUCT",
						},
					},
				},
				{--UNLOCKABLEITEMTREES
					MBIN_FS = [[METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Title", "UI_PURCHASABLE_BASICTECH_TREE" } },
							PKW = "Trees",
							-- ADD_OPTION = "ADDafterSECTION",
							ADD = [[
<Property name="Trees" value="GcUnlockableItemTree">
	<Property name="Title" value="UI_DECORATION_TREE"/>
	<Property name="CostTypeID" value="UNITS"/>
	<Property name="Root">
		<Property name="Unlockable" value="PORTALDR"/>
	</Property>
</Property>]],
						},
						{
							SKW = { { "Title", "UI_STORAGE_TREE" } },
							ADD_OPTION = "ADDafterSECTION",
							ADD = [[
<Property name="Trees" value="GcUnlockableItemTree">
	<Property name="Title" value="UI_DECORATION_TREE"/>
	<Property name="CostTypeID" value="UNITS"/>
	<Property name="Root">
		<Property name="Unlockable" value="PORTALDR"/>
	</Property>
</Property>]],
						},
						{
							SKW = { { "Title", "UI_FREIGHT_PAINT_NAME_L" } },
							ADD_OPTION = "ADDafterSECTION",
							ADD = [[
<Property name="Trees" value="GcUnlockableItemTree">
	<Property name="Title" value="UI_FRE_BASE_TREE"/>
	<Property name="CostTypeID" value="UNITS"/>
	<Property name="Root">
		<Property name="Unlockable" value="PORTALDR"/>
	</Property>
</Property>]],
						},
					},
				},
			},
		},
	},

	ADD_FILES = {
		{
			FILE_DESTINATION = [[LocTable.MXML]],
			FILE_CONTENT = [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_PORTALDR_NAME">
      <Property name="Id" value="BLD_PORTALDR_NAME" />
      <Property name="English" value="Portal Decoration" />
      <Property name="French" value="Portal Decoration" />
      <Property name="Italian" value="Portal Decoration" />
      <Property name="German" value="Portal Decoration" />
      <Property name="Spanish" value="Portal Decoration" />
      <Property name="Russian" value="Portal Decoration" />
      <Property name="Polish" value="Portal Decoration" />
      <Property name="Dutch" value="Portal Decoration" />
      <Property name="Portuguese" value="Portal Decoration" />
      <Property name="LatinAmericanSpanish" value="Portal Decoration" />
      <Property name="BrazilianPortuguese" value="Portal Decoration" />
      <Property name="SimplifiedChinese" value="符门摆件" />
      <Property name="TraditionalChinese" value="符門擺件" />
      <Property name="TencentChinese" value="Portal Decoration" />
      <Property name="Korean" value="Portal Decoration" />
      <Property name="Japanese" value="Portal Decoration" />
      <Property name="USEnglish" value="Portal Decoration" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_PORTALDR_NAME_L">
      <Property name="Id" value="BLD_PORTALDR_NAME_L" />
      <Property name="English" value="Portal Decoration" />
      <Property name="French" value="Portal Decoration" />
      <Property name="Italian" value="Portal Decoration" />
      <Property name="German" value="Portal Decoration" />
      <Property name="Spanish" value="Portal Decoration" />
      <Property name="Russian" value="Portal Decoration" />
      <Property name="Polish" value="Portal Decoration" />
      <Property name="Dutch" value="Portal Decoration" />
      <Property name="Portuguese" value="Portal Decoration" />
      <Property name="LatinAmericanSpanish" value="Portal Decoration" />
      <Property name="BrazilianPortuguese" value="Portal Decoration" />
      <Property name="SimplifiedChinese" value="符门摆件" />
      <Property name="TraditionalChinese" value="符門擺件" />
      <Property name="TencentChinese" value="Portal Decoration" />
      <Property name="Korean" value="Portal Decoration" />
      <Property name="Japanese" value="Portal Decoration" />
      <Property name="USEnglish" value="Portal Decoration" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_PORTALDR_SUBTITLE">
      <Property name="Id" value="BLD_PORTALDR_SUBTITLE" />
      <Property name="English" value="Rune Portal Decoration" />
      <Property name="French" value="Rune Portal Decoration" />
      <Property name="Italian" value="Rune Portal Decoration" />
      <Property name="German" value="Rune Portal Decoration" />
      <Property name="Spanish" value="Rune Portal Decoration" />
      <Property name="Russian" value="Rune Portal Decoration" />
      <Property name="Polish" value="Rune Portal Decoration" />
      <Property name="Dutch" value="Rune Portal Decoration" />
      <Property name="Portuguese" value="Rune Portal Decoration" />
      <Property name="LatinAmericanSpanish" value="Rune Portal Decoration" />
      <Property name="BrazilianPortuguese" value="Rune Portal Decoration" />
      <Property name="SimplifiedChinese" value="符文传送门摆件" />
      <Property name="TraditionalChinese" value="符文傳送門擺件" />
      <Property name="TencentChinese" value="Rune Portal Decoration" />
      <Property name="Korean" value="Rune Portal Decoration" />
      <Property name="Japanese" value="Rune Portal Decoration" />
      <Property name="USEnglish" value="Rune Portal Decoration" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_PORTALDR_DESCRIPTION">
      <Property name="Id" value="BLD_PORTALDR_DESCRIPTION" />
      <Property name="English" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="French" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Italian" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="German" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Spanish" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Russian" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Polish" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Dutch" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Portuguese" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="LatinAmericanSpanish" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="BrazilianPortuguese" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="SimplifiedChinese" value="可随处摆放的&lt;PET1&gt;符文传送门&lt;&gt;摆件（无需基地）" />
      <Property name="TraditionalChinese" value="可隨處擺放的&lt;PET1&gt;符文傳送門&lt;&gt;擺件（無需基地）" />
      <Property name="TencentChinese" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Korean" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="Japanese" value="Rune Portal decoration that can be placed everywhere." />
      <Property name="USEnglish" value="Rune Portal decoration that can be placed everywhere." />
    </Property>
  </Property>
</Data>]],
		},
	},
}