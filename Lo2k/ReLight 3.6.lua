
--[[┎──────────────────────────────────────────────────────
	┃ Insert new light object to MBIN - by IMonk
	┃ WARNING : For lights to work, be sure to set strings 
	┃ between single quotes and numbers without quotes
────┸──────────────────────────────────────────────────--]]

function InsertNewLight(T_New)
	-- values from T_New will overwrite the defaults in T
	local T = {
		name = 'NewLight',
		--hash = 0,
		tx = 0,
		ty = 0,
		tz = 0,
		rx = 0,
		ry = 0,
		rz = 0,
		sx = 1,
		sy = 1,
		sz = 1,
		fov = 360,
		f = 'quadratic',
		fr = 2.0,
		i = 30000,
		r = 1.0,
		g = 1.0,
		b = 1.0,
		--v = 0
	}
	for k, v in pairs(T_New) do
		T[k] = v
	end
	return [[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="]] .. T.name .. [[" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
	  <Property name="Transform" value="TkTransformData.xml">
	    <Property name="TransX" value="]] .. T.tx .. [[" />
	    <Property name="TransY" value="]] .. T.ty .. [[" />
	    <Property name="TransZ" value="]] .. T.tz .. [[" />
	    <Property name="RotX" value="]] .. T.rx .. [[" />
	    <Property name="RotY" value="]] .. T.ry .. [[" />
	    <Property name="RotZ" value="]] .. T.rz .. [[" />
	    <Property name="ScaleX" value="]] .. T.sx .. [[" />
	    <Property name="ScaleY" value="]] .. T.sy .. [[" />
	    <Property name="ScaleZ" value="]] .. T.sz .. [[" />
	  </Property>
	  <Property name="Attributes">
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="FOV" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.fov .. [[.0" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="FALLOFF" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.f .. [[" />
	    </Property>
		<Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. T.fr .. [[" />
        </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="INTENSITY" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.i .. [[.0" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_R" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.r .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_G" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.g .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COL_B" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="]] .. T.b .. [[000" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="COOKIE_IDX" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="-1" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="VOLUMETRIC" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="0.0" />
	    </Property>
	    <Property value="TkSceneNodeAttributeData.xml">
	      <Property name="Name" value="MATERIAL" />
	      <Property name="AltID" value="" />
	      <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
	    </Property>
	  </Property>
	  <Property name="Children" />
        </Property>]]
end



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ReLight 3.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.93",
["MOD_DESCRIPTION"]			= "This mod rework most of the lights placed in NPC building",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{	
				{  -- FREIGHTER BRIDGE
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"15"},  --original : 5.7
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"25"},  --original : 16 / 40
							},
						},
						-- planetary hologram light
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"},  --original : 50000.0
							},
						}, 
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"2.0"},  --original : 2.31
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"}, 
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.668880"},  
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight60", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.360784"}, 
							},
						},
						-- Main 10m high light
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"7.0"},  --original : 9.91
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LINEAR"},  --original : QUADRATIC
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"80000.0"},  --original : 100000.0 //80000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.95"},  --0.854902
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  
							},
						},	
												{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight59", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  
							},
						},	
						-- Captain yellow 5m high light
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "5.8"},-- original 5.10245
								{"TransZ", "-11.220206"},
								{"RotX",	"-90"},  --original : 0
								{"RotY",	"180"},  --original : 0
								{"RotZ",	"90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"},  --original : 40000.0
							},
						},				
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.9056"},  
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.685"}, 
							},
						},	
						{  -- Blue Holo-Tractor field Light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- Middle window behind captain
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight0',tx=0.0, ty=-1.0, tz=-21, i=80000, r=0.3, g=0.7, b=1.0}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- left windows behind captain
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight1',tx=-13.0, ty=-1.0, tz=-18, i=80000, r=0.3, g=0.7, b=1.0}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- right windows behind captain
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight2',tx=13.0, ty=-1.0, tz=-18, i=80000, r=0.3, g=0.7, b=1.0}),
						},
						{  -- Space Light  -- 1st floor windows
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- Top Middle window
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight3',tx=0.0, ty=7.0, tz=-21, i=60000, r=0.3, g=0.7, b=1.0}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- Top left windows 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight4',tx=-13.0, ty=7.0, tz=-18, i=60000, r=0.3, g=0.7, b=1.0}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  -- Top right windows 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='SpaceLight5',tx=13.0, ty=7.0, tz=-18, i=60000, r=0.3, g=0.7, b=1.0}),
						}, 
						
						-- White internal neons - left side
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight1l',tx=-5.0, ty=4.5, tz=-12.4, i=15000}),
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight2l',tx=-12.7, ty=4.5, tz=-5.2, i=15000}),
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight3l',tx=-12.7, ty=4.5, tz=5.2, i=15000}),
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight4l',tx=-5.0, ty=4.5, tz=12.4, i=15000}),
						},
						
						-- White internal neons - right side
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight1r',tx=5.0, ty=4.5, tz=-12.4, i=15000}),
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight2r',tx=12.7, ty=4.5, tz=-5.2, i=15000}),
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight3r',tx=12.7, ty=4.5, tz=5.2, i=15000}),
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight61"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NeonLight4r',tx=5.0, ty=4.5, tz=12.4, i=15000}),
						},
						
						-- blue entry light
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ", "14.081081"},
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 70000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.608391"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.808391"}, 
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight62", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"}, 
							},
						},							
					},
				},
				
				{  -- FREIGHTER BRIDGE TERMINAL
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
					-- TERMINAL LOD dist are already fine 50 /80/ 150
						
						{  -- Galactic map yellow light
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- Customize panel yellow light
							["SPECIAL_KEY_WORDS"] = {"Name", "Light1",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- Customize panel 2nd yellow light
							["SPECIAL_KEY_WORDS"] = {"Name", "Light4",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- Navigator yellow light
							["SPECIAL_KEY_WORDS"] = {"Name", "Light2",},
							["REMOVE"] 	= "SECTION",
						},
						{-- galactic map blue light
							["SPECIAL_KEY_WORDS"]  = {"Name", "MPLIGHT", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.0"},  --original : 10000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MPLIGHT", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.3"}, 
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MPLIGHT", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.7"},  
							},
						},						
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MPLIGHT", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"}, 
							},
						},		
						--[[{  -- RESTORED EFFECT
							["SPECIAL_KEY_WORDS"]  = {"Name", "MiddleEffectBase", "Name", "ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL\ENTITIES\MIDDLEEFFECT.ENTITY.MBIN"}, 
							},
						},		--]]					
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\DOORSFRONT.SCENE.MBIN",   
					["EXML_CHANGE_TABLE"] 	= 
					{	
					--[[
						{  -- cargo hangar left stairs
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight70"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "11.0848"},
								{"TransZ", "-10.3617"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight70", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"}, 
							},
						},
						]]
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  -- left door light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70z',tx=16.66565, ty=14.0848, tz=-4.3617}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70b',tx=22.66565, ty=11.0848, tz=-10.3617, rx=-45, fov=180, g=0.851, b=0.745}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70c',tx=22.66565, ty=8.0848, tz=-15.8617, g=0.851, b=0.745}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70d',tx=22.66565, ty=5.3848, tz=-20.8617, g=0.851, b=0.745}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70e',tx=22.66565, ty=2.6848, tz=-25.8617, g=0.851, b=0.745}),
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70f',tx=22.66565, ty=0.0, tz=-30.8617, g=0.851, b=0.745}),
						},	
						--[[
						{  -- cargo hangar right stairs
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight125"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "11.0848"},
								{"TransZ", "-10.3617"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight125", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"}, 
							},
						},
						]]
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  -- left door light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125z',tx=-16.66565, ty=14.0848, tz=-4.36167}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125b',tx=-22.66565, ty=11.0848, tz=-10.3617, rx=-45, fov=180, g=0.851, b=0.745}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125c',tx=-22.66565, ty=8.0848, tz=-15.8617, g=0.851, b=0.745}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125d',tx=-22.66565, ty=5.3848, tz=-20.8617, g=0.851, b=0.745}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight125e',tx=-22.66565, ty=2.6848, tz=-25.8617, g=0.851, b=0.745}),
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DefaultColour"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight70f',tx=-22.66565, ty=0.0, tz=-30.8617, g=0.851, b=0.745}),
						},							
					},
				},
				{    -- FREIGHTER ORANGE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},  --pointLight5 to 10
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 40000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.3"},  
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.5"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.6"},  
							},
						},							
					},
				},
				{    -- FREIGHTER LIGHTS UNDER STAIRS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARLAYOUT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  -- LEFT STAIRS
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight75",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- RIGHT STAIRS
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight70",},
							["REMOVE"] 	= "SECTION",
						},								
					},
				},
				{    -- FREIGHTER LITTLE STAIRS ORANGE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARSTEPS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "4.6"},  -- original 2.5
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.851"},  --original : 0.595366
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.745"},  --original : 0.352941
							},
						},	
					},
				},
				--[[ doesn't work
				{    -- FREIGHTER STRONG REAR ORANGE LIGHT
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HULLBOTTOM.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- ORANGE SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "0.0"},  -- original 83453.234375
							},
						},
					},
				},
				]]--
				{    -- FREIGHTER LANDING PADS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{  -- TOP AMBIENT LIGHT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},			
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight4",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},		
--[[						 --It's a lot better with no light at all than with dimmed ones
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
								--{"RotY", "225"},	--original : 135, Sadly doesn't give good results with FOV = 180
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight3", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},	
						{  -- YELLOW SPOT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.1"},
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 50000
							},
						},
]]--						
					},
				},
				{ -- FRIGATE REACTOR BLUE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\ENGINEREACTOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"70000.0"},  --original : 50000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.679000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.679"},  --original : 1.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUEG", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 1.0
							},
						},		
{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"70000.0"},  --original : 50000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.679000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.679"},  --original : 1.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "BLUE", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 1.0
							},
						},							
					},
				},
				{    -- FRIGATE REACTOR ROOM CENTRAL WHITE LIGHT
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\SCENES\ENGINEREACTOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 40000
							},
						},							
					},
				},   
				{  -- Removes pillar lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LAYOUTS\LAYOUTSHOP_1\LIGHTS1_MAT2.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},			
				{  -- Removes lens flare from round passage in interior angle wall and from wall light
					["MBIN_FILE_SOURCE"] 	= {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LAYOUTS\LAYOUTSHOP_3\LIGHTS1_MAT2.MATERIAL.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLLIGHTS\WALLLIGHTA\LIGHTS1_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Tech shop front lights lens flare from All races outposts
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\MODULES\WALLMODULE_TECHSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\MODULES\WALLMODULE_TECHSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",			"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\MODULES\WALLSHORTMODULE_TECHSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Guild shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\GUILDSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},				
				{  -- Removes Map shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MAPSHOP\LIGHTS1_MAT6.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Suit shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SUITSHOP\LIGHTS1_MAT2.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},				
				{  -- Removes Mission shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MISSIONSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{  -- Removes Ship shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SHIPSHOP\CORRIDORMODULE_STRAIGHT1_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Vehicule shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\VEHICLESHOP\CORRIDORMODULE_STRAIGHT2_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{  -- Removes Weapon shop front lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\CORRIDORMODULE_STRAIGHT3_LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"7000.0"},  --original : 10000
							},
						},						
					},
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\OBSERVATORY\HOLOGRAM.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='NewLight', ty=2.2, f='linear', i=6000, r=1.0, g=0.8, b=0.8}),  
						},	
						{ -- remove original light
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight8",},
							["REMOVE"] 	= "SECTION",
						},						
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\MODULES\WALLMODULE_TECHSHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4"},  --original : 0.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.72"},  --original : 0.72
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_R"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4"},  --original : 0.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.72"},  --original : 0.72
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 1.0
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\ROOF_OBSERVATORY.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_R"},  --pointLight1
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.2"},  --original : 0.29
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.8"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.9
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"},  --original : 300000
							},
						},						
					},
				},
				{  --SPACE STATION OBSVERVATION ROOM WINDOW WALL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\WALL_OBSERVATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 5000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : -135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 4000.0
							},
						},							
					},
				},
				{  --SPACE STATION OBSVERVATION ROOM WALL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\WALLINTERIOR_BASE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight25", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 6000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 180
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight26", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 6000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : -135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight27", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 6000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : 135
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight28", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 6000.0
							},
						},							
					},
				},			
				{  --ABANDONED LEFT ROOM LANTERN
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ABANDONED\LIGHT_3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{  -- main orange light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"quadratic"},  --original : quadratic
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"6000.0"},  --original : 30000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.86
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4886"},  --original : 0.288610
							},
						},	
						{  -- useless thin top white circle of light
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight7",},
							["REMOVE"] 	= "SECTION",
						},							
					},
				},	
				{  -- BED
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\BED\BEDA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Bed"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight1', ty=1.0, f = 'linear', i=2500, g=0.98, b=0.98}),  
						},
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- REVERSE LANDING PAD LIGHTS (Lights around landing pad)
							["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- ACTUAL LANDING PAD 4 LIGHTS
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",	"-20"},  --original : 0
								{"RotY",	"180"},  --original : 0
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.0"},  --original : 360.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"21000.0"},  --original : 3000
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\ALLWALLDRAPES.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- Big Hanging Drapes in Space Station
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",	"-110.33453"},  --original : 78.33453
								{"RotY",	"180.831268"},  --original : 167.831268
								{"RotZ",	"90.35328"},  --original : 105.353279
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.0"},  --original : 87.187675
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},								
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\HEALTHSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.0"},  --original : 8000.0
							},
						},								
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\MONEYSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.0"},  --original : 9000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.529412
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.844715
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\SHIELDSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.995744"},  --original : -0.495744
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.0"},  --original : 9000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.745098
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.965460
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\STANDINGSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Glow"},  --upper blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BackLight', ty=0.7, tz=-0.5, i=2000}),  
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.7"},
								{"TransZ", "-0.5"},  --original : -0.69005
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 10000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.745098
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.3"},  --original : 0.965460
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WEAPONTECHSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1WeaponTechStation"},  --back orange light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BackLight', ty=0.7, tz=-0.5, i=2000, r=1.0, g=1.0, b=1.0}),  
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"TransY", "0.7"},
								--{"TransZ", "-0.5"}, 
								{"ScaleX", "1.0"}, 
								{"ScaleY", "1.0"}, 
								{"ScaleZ", "1.0"}, 
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 15000.0
							},
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\INTERACTIVE\WORDSTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.91667"},  --original : -0.316668
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1000.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.551235
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.411765
							},
						},	
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 8000.0
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},
						{  -- TEAL SMALL LIGHT
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.156227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 8000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.6712000
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xs"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xs", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xse"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xse", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xsee"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xsee", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 8000.0
							},
						},			
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xseee"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.056227"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4xseee", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 9000.0
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLIGHT_RED.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.20"},  --original : -0.256227
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 8000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.3
							},
						},											
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\TINYLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4x", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4c", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4v", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"-0.05"},  --original : -0.173671
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4b", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},							
					},
				},
				
				{  -- CUBE PLANT POT
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- removes existing lod lights
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] 	= "SECTION",
						},	
						{  -- creates a new LOD independant Top blue light
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD3"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopLight', ty=0.4, rx=90, fov=180, i=4000, r=0.3, g=0.7}),  
						},
						{  -- creates a new LOD independant Bottom teal light
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD3"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TealLight', ty=0.2, rx=-90, ry=180, rz=90, fov=180, i=3000, r=0.0, g=1.0; b=0.965}),  
						},				
					},
				},
				
				{  -- HANGING SHELVE PLANTPOT
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOT_B.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- removes existing lod lights
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] 	= "SECTION",
						},	
						{  --create a new LOD independant light
							["SPECIAL_KEY_WORDS"]  = {"Name", "PotLOD3"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopTealLight', ty=0.1,tz=-0.393418, rx=90, fov=180, i=4000, r=0.0, g=1.0; b=0.965}),  
						},
					},
				},
				
				{  -- 3 PLANT POTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTLSYSPROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{  -- Remove the 9 lights
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] 	= "SECTION",
						},	
						
						
						-- Cube pot
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot1LOD3"},  -- top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopBlueLight', ty=0.2, rx=90, fov=180, i=400, r=0.0, g=0.600, b=1.0}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot1LOD3"},  -- bottom teal Light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TealLight', ty=5.0, rx=-90, ry=180, rz=90, sx=0.0349, sy=0.0349, sz=0.0349, fov=180, i=2500, r=1.0, g=0.93, b=0.6}),  
						},				


						-- Carved pot
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot2LOD3"},  -- top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopBlueLight', ty=35.0, rx=90, sx=0.0349, sy=0.0349, sz=0.0349, fov=180, fr=2.0, i=5000, r=0.0, g=0.300, b=0.7}),  
						},					
						

						-- Round pot with yellow light
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot3LOD3"},  -- top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopBlueLight', ty=30.0, rx=90, ry=0, rz=-90, sx=0.0349, sy=0.0349, sz=0.0349, fov=180, i=4000, r=0.0, g=0.600, b=1.0}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Pot3LOD3"},  -- Bottom yellow Light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='YellowLight', ty=5.0, rx=-90, ry=180, rz=90, sx=0.0349, sy=0.0349, sz=0.0349, fov=180, i=8000, r=1.0, g=0.93, b=0.6}),  
						},					
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ROOFMONITOR\ROOFLSYSPROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 5000.0
							},
						},													
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHT_A.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.0"},  --original : 360.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"25000.0"},  
							},
						},						
					},
				},
				{  -- NPC Double circles stand lights
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHTS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight4",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD2
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LightLOD3"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=2.681, tz =-0.8, fov=120, f = 'linear', i=10000}),  
						},										
					},
				},
				{  -- Removes lens flare double circle lights
					["MBIN_FILE_SOURCE"] 	= {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\STANDINGLIGHTS\STANDINGLIGHTS\LIGHTS1_MAT2.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},						
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.55"},  --original : 0.400297
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B"},  -- round table with yellow stand
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.8"},  --original : 0.350297
								{"RotX",	"-90"},  --original : 0
								{"RotY",	"180"},  --original : 0
								{"RotZ",	"90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"180.0"},  --original : 360.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"9000.0"},  --original : 4000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "COL_G"},  --R = 1.0
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.75"},  --original : 1.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 1.0
							},
						},	
						{   --hexagonal table with blue light in the stand
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.5"},  --original : 1.395906
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"9000.0"},  --original : 4000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.3823"},  --original : 0.88230
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.9286"},  --original : 0.858600
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.743900
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.55"},  --original : 0.219432
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1B1s1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 4000.0
							},
						},							
					},
				},
				{    -- Stand Big white light from the first round table
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLE\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				{    -- Stand Big white light from the second round table (with moving top light)
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLEPARTS\TABLE_2\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				
				-- SMALL HEXAGONAL TABLE WITH WHITE LIGHT STAND
				{		
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "COLLISION"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='WhiteLight', ty=0.30, i=3000}), 
						},
					},
				},  
				{		
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\SMALLHEXTABLE\LIGHTS1_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 3
							},
						},	
					},
				},
				
				
				{  -- VERTICAL BLUE HOLO-PANEL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},  --top blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TopLight', ty=0.40, tz=-0.327, i=3000, r=0.0, g=0.6, b=1.0}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},  --middle blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='MiddleLight', tz=-0.327, i=3000, r=0.0, g=0.6, b=1.0}),  
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},  --bottom blue light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='BottomLight', ty=-0.40, tz=-0.327, i=3000, r=0.1, g=0.6, b=1.0}),  
						},
						{  -- Removes original light
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1sd", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.0"},  --original : 10000.0
							},
						},								
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLMONITORS\WALLMONITORB3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1s", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.0"},  --original : 10000.0
							},
						},								
					},
				},
				{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP0.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RoofTop0LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop1LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop3LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
								{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP5.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRoofTop5LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
				{		-- new fibreglass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_ROOF_TOP6.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BRTop6LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000, r=0}),
						},
					},
				}, 
				{		-- new timber glass round roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP0.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlassLOD2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Glass_LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlassLOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new new timber glass roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP4.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "polySUrface468LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber low roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP6.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pSphere33LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 
				{		-- new timber carved round roof
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_ROOF_TOP7.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Base2LOD3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight1', i=10000}),
						},
					},
				}, 				
				{  --settlement arabic lamp
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\TABLELAMP0.SCENE.MBIN",  
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Lite"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.15"},  --original : 0.536
							},
						},	
					--[[	{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"10000.0"},  --original : 1000.0
							},
						},	]]--
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Lite", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.89726"},  --original : 0.797260
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Lite", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.79726"},  --original : 0.581
							},
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",  -- ring of light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"1.2"},  --original : 0.852511
								{"RotX",	"-90"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"360.0"},  --original : 40.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 1000.0
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTBOX.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+3",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+2",
							["REPLACE_TYPE"] = "",
							--["SECTION_UP"] = 1,
							--["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[      <Property name="Children" >
      </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "ConON1_Shape"},
							["LINE_OFFSET"] = "+3",
							["REPLACE_TYPE"] = "",
							["ADD"] = InsertNewLight({name='pointLight1', ty=0.2, i=20000}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] 	= "SECTION",
						},						
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",  --orange lamp
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"25000.0"},  --original : 30000
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "COL_G"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.4886"},  --original : 0.288610
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",  -- rectangular flooding light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"2.988357"},  --original : 2.65
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.0"},  --original : 360.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"30000.0"},  --original : 5000.0
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",  -- circular flooding light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"0"},  --original :
								{"TransY",	"2.681"},  --original : 
								{"TransZ",	"-0.8"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"120.0"},  --original : 360.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 5000.0
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",  -- standing light
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransZ",	"0.5"},  --original : 0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"15000.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='PointLight2B', ty=2.142282, tz=-0.5, i=15000}),	
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOHUB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.3"},  --original : 1.930022
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 100000.0 
							},
						},								
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='Light2', ty=9.3, i=40000, g=0.642, b=0.0}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOLADDER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"0.3"},  --original : 1.930022
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 100000.0 
							},
						},								
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='Light2', ty=7, i=40000, g=0.642, b=0.0}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							--["REPLACE_TYPE"] = "ADDAFTERSECTION",
							--["SECTION_UP"] = 1,
							["ADD"] = InsertNewLight({name='Light1', ty=2, f='linear', i=10000}),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							--["SECTION_UP"] = 1,
							["ADD"] = InsertNewLight({name='Light1', ty=1.8, i=30000, g=0.300, b=0.0}),
						},
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\ROOFINTERIOR_BASE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["LINE_OFFSET"] = 0,
							["ADD"] = InsertNewLight({name='spotLight7', ty=7.0, rx=-90, fov=240, i=35000}),
						},
					},
				},
			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_SHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\CORNERTABLEPARTS\CORNERTABLE_1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FALLOFF"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.0"},  --original : 8000.0
							},
						},	
					},
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ROOFMONITOR\ROOFMONITOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"-2.1"},  --original : -2.004718
								{"TransZ",	"0"},  --original : 0.059593
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FALLOFF"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.0"},  --original : 5000.0
							},
						},	
					},
				},		
				{  -- shelter layout_3 white light
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\WALLLIGHTS\WALLLIGHTA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LightLOD3"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight1',tx=0, ty=0, tz=-0.3, i=5000}),
						},						
					},
				},	
				{  -- SHACK INTERIOR WALL DRAPE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\TRADERWALLDRAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"TransX", "-0.014919"},  	--original 0.002193
								--{"TransY", "1.206272"},   	--original 1.490884
								--{"TransZ", "-0.340135"},	--original -0.474377
								{"RotX", "-55.334534"},	--original -83.03872
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"125.0"},  --original : 125
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"20000.0"},  --original : 15000.0
							},
						},
					},
				},
				{  -- SHACK EXTERIOR WALL DRAPE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\WALLDRAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "-0.014919"},
								{"TransY", "1.206272"},
								{"TransZ", "-0.34"},
								{"RotX", "-110.334534"},
								{"RotY", "180.83"},
								{"RotZ", "90.35328"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "FOV"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"90.0"},  --original : 107.328094
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "WallFlagLight", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"40000.0"},  --original : 33972.113281
							},
						},
					},
				},
				{  -- ABANDONNED BUILDING TERMINAL
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\ABANDONEDTERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2",},
							["REMOVE"] 	= "SECTION",
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},				
				{  -- GENERIC TERMINAL CONSOLE
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\INTERACTIVECONSOLE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						--{
						--	["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
						--	["REMOVE"] 	= "SECTION",
						--},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 10000
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.823529
							},
						},
						{  -- COL_G = 1.0 already
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.957940
							},
						},
					},
				},
				{  -- MONITOR DESK
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\MONITORDESK.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD0", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"3000.0"},  --original : 5000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2500.0"},  --original : 5000.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "DeskLOD2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"2000.0"},  --original : 3000.0
							},
						},
					},
				},				
				{  -- Shack Hangar
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACKTRADER_PARTS\EXTERIORLAYOUTS\LAYOUTA_1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight7", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},							
					},
				},
				{  -- Shack Hangar
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACKTRADER_PARTS\EXTERIORLAYOUTS\LAYOUTA_3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight7", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 100000.0
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CAVE\EGGRESOURCE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2","Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"10000.0"},  --original : 8500
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.95"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.5"}, 
							},
						},	
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN",   
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftPlatformLight", "Name", "INTENSITY"},   --blue lights, light kept to add another light later
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 20000.0 
							},
						},				
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightPlatformLight", "Name", "INTENSITY"},  --blue lights, light kept to add another light later
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 20000.0 
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftPlatformLight2",},
							["REMOVE"] 	= "SECTION",
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftPlatformLight3",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight313",},  --white pilar lights
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight314",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight315",},  
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight316",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "FOV"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"160.0"},  --original : 360.0 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "INTENSITY"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"50000.0"},  --original : 70000.0 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight317", "Name", "COL_G"},  -- TELEPORTER
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.8"},  --original : 0.692300 
							},
						},							
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight317"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight317b', tx=-49.132, ty=8.78, tz=139.64, ry=180, fov=160, i=50000, r=0.0, g=0.8}),					
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight5", "Name", "INTENSITY"},  --Main teal light
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"38000.0"},  --original : 60000.0 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight5b', ty=17.428, tz=115.92, f='linear', i=38000, r=0.627, g=0.91}),	
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5b"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight5c', ty=17.428, tz=195.92, f='linear', i=38000, r=0.627, g=0.91}),	
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116"},  --wings white lights
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.705"}, 
								{"TransZ",	"177.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.705"}, 
								{"TransZ",	"177.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight116"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight116b',tx=49, ty=10.7, tz=169.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight311b',tx=49, ty=10.7, tz=154.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight116"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight116b',tx=-49, ty=10.7, tz=169.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='pointLight311b',tx=-49, ty=10.7, tz=154.5, ry=180, i=55000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.75"}, 
								{"TransZ",	"162.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight311", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.75"}, 
								{"TransZ",	"162.0"}, 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight311", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight310"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"49.0"}, 
								{"TransY",	"10.75"}, 
								{"TransZ",	"147.0"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftSectionModule", "Name", "pointLight310", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight310"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-49.0"}, 
								{"TransY",	"10.75"}, 
								{"TransZ",	"147.0"}, 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightSectionModule", "Name", "pointLight310", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"55000.0"},  
							},
						},								
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftPlatformLight"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight1',tx=36, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight1"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight2',tx=39.5, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight2"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight3',tx=36, ty=10, tz=160, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LeftLight3"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='LeftLight4',tx=39.5, ty=10, tz=160, rx=-90, i=28000}),
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightPlatformLight"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight1',tx=-36, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight1"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight2',tx=-39.5, ty=10, tz=145, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight2"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight3',tx=-36, ty=10, tz=160, rx=-90, i=28000}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "RightLight3"},  --middle lights
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='RightLight4',tx=-39.5, ty=10, tz=160, rx=-90, i=28000}),
						},							
					},
				},
				{  -- SPACE STATION TUNNEL PITS BLUE LIGHTS
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PARTS\TUNNELOPENING.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- LOD0
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD1
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD2
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{  -- LOD3
							["SPECIAL_KEY_WORDS"] = {"Name", "Light",},
							["REMOVE"] 	= "SECTION",
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "TunnelLOD3"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=-0.316384, ry =-180, i=60000, r=0.0, g=0.6923}),  
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",   --landing pad lights
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",	"30.462"},  --original : 10.46178
								{"TransZ",	"2.2662"},  --original : 0.266191
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "FOV"}, 
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"60.0"},  --original : 90.0 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight7", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight8", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.0"},  
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight9", "Name", "INTENSITY"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"85000.0"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "spotLight7"},  --counter teal light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='spotLight7b',tx=0.1, ty=-5.46, tz=2.267, rx=90, sx=20, sy=20, sz=20, fov=180, f='quadratic', i=90000, r=0.0, g=0.828}),
						},						
					},
				},		
				{	--outlaws/pirates landing pads
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN",   --landing pad lights
					["EXML_CHANGE_TABLE"] 	= 
					{		
						{  -- Create counter red light
							["SPECIAL_KEY_WORDS"]  = {"Name", "LandingPadLight"},  
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='ReverseLight',tx=0.1, ty=-5.46, tz=2.267, rx=90, sx=20, sy=20, sz=20, fov=180, f='quadratic', i=90000, g=0.0, b=0.0}),
						},	
						{  -- ORIGINAL TOP RED LIGHT
							["SPECIAL_KEY_WORDS"] = {"Name", "LandingPadLight",},
							["REMOVE"] 	= "SECTION",
						},							
					},
				},			
				{  -- Removes pirate space station core lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\BACKSECTION\FLAREEFFECTBLOOMONLY_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"0"},  --original : 2.5
							},
						},						
					},
				},		--[[			
				{  -- Removes normal space station core lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_ORB\FLAREEFFECTBLOOMONLY_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 2.5
							},
						},						
					},
				},  ]]--
	--[[			{  -- SAVE POINT
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINTPRESCALE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "joint1"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight',y=0.5, i=15000, g=0.60, b=0.0}),  
						},
					},
				},
	]]--
				{  -- BLUEPRINT ANALYSER hologram
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\BPANALYSER\BLUEPRINTANALYSEREFFECT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  -- Folder yellow light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"4000.0"},  --original : 1.0
							},
						},
						{  
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 0.496
							},
						},
						{  --Blue light
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"8000.0"},  --original : 1.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_R"},  --pointLight1
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.0"},  --original : 0.45
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.400000"},  --original : 0.87
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_B"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"1.0"},  --original : 1.0
							},
						},
					},
				},
				{  -- BLUEPRINT ANALYSER
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\BLUEPRINTANALYSER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newtealLight1',tx=0.0, ty=1.0, tz=0.1, ry=180, fov=145, i=5000,r=0.45, g=0.87, b=1.0}),  
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "Light"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newtealLight2',tx=0.0, ty=1.0, tz=-0.1, fov=145, i=5000, r=0.45, g=0.87, b=1.0}),  
						},
					},
				},  
				
				{  -- EXOCRAFT BASES
					["MBIN_FILE_SOURCE"] 	= 
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEBIKE.SCENE.MBIN",				
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGECUSTOMISER.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEHOVER.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGELARGE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEMECH.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGESMALL.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGESUBMARINE.SCENE.MBIN",
						},					
					["EXML_CHANGE_TABLE"] 	= 
					{		
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "Light3",},
							["REMOVE"] 	= "SECTION",
						},	
					},
				},
				
				--[[
				{  -- tiny bulb on top of a plant
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_MedPlant_C"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=0.516384, i=60000, r=0.0, g=0.6923}),  
						},
					},
				},
				
				{  -- UNSURE
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_SmallPlant_ALOD0"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=0.516384, i=20000, r=0.4, g=0.72, b=0.0}),  
						},
					},
				},			
				{  -- BIG MARROW BULBS
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\CAVE\MEDIUMPROP\MEDIUMGLOWPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "_MedPlant_C"},  --create a new LOD independant light
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='newLight', ty=1.0, i=40000, r=0.4, g=0.72, b=0.0}),  
						},
					},
				},		]]--		
--[[				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\MISSIONSHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"50.0"},  --original : 5.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"100.0"},  --original : 10.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LODDIST3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"200.0"},  --original : 13.0
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-2.0"},  --original : -0.410532
								{"TransY",	"0.6"},  --original : 2.384698
								{"TransZ",	"0.7"},  --original : 7.774412
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"6000.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1","Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "COL_G"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight2", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.0"},  --original : 4000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight3",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"-2.188342"},  --original : -2.088342
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4","Name", "COL_R"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1.0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_G"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"0.62"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight4", "Name", "COL_B"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"0.0"},  --original : 
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LeftOrange",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight5",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight6", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"1500.0"},  --original : 5000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight7",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight8", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.0"},  --original : 4000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight9", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"3000.0"},  --original : 4000.0
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"2.0"},  
								{"TransY",	"0.6"}, 
								{"TransZ",	"0.7"},  
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite","Name", "FALLOFF"},

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"linear"},  --original : quadratic
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "MidWhite", "Name", "INTENSITY"}, 

							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"6000.0"},  --original : 13000.0
							},
						},
					},
				},
]]--				
				{  -- Removes Hover bike lights lens flare
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES\LIGHTS_ENGINEGLOW_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"1"},  --original : 15
							},
						},						
					},
				},	
				{  -- yellow 8 faces data
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\SMALLPROPS\SMALLPROPB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"10000.0"},  --original : 30000.0
							},
						},						
					},
				},	
				{  -- shelter layout_3 white light
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\WORDSTONE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='frontLight1',tx=0, ty=1.6, tz=-1.0, rx=0, ry=0, rz=0, fov=160, i=22000, r=0.5, g=1.0, b=1.0,}),
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='backLight1',tx=0, ty=1.6, tz=1.0, rx=0, ry=180, rz=0, fov=160, i=22000, r=0.5, g=1.0, b=1.0,}),
						},
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1",},
							["REMOVE"] 	= "SECTION",
						},		
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2",},
							["REMOVE"] 	= "SECTION",
						},						
					},
				},  
				{  -- 
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\MAYOR_TERMINAL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "pointLight1", "Name", "INTENSITY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"5000.0"},  --original : 10000.0
							},
						},						
					},
				},	
				{  -- Observatory holo table light
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\ROOF_OBSERVATORY.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT",}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='TableLight', ty=-4.60971, rx=90, fov=180, i=20000, r=0.45, g=0.66, b=1.0,}),
						},
						{  
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REMOVE"] 	= "SECTION",
						},						
					},
				}, 					
				
				--[[
				{  -- 4th race NPC light
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\NPCS\FOURTHRACE\FOURTHRACE.SCENE.MBIN", 
												"MODELS\PLANETS\NPCS\FOURTHRACE\HOLONOONE.SCENE.MBIN",
												"MODELS\PLANETS\NPCS\FOURTHRACE\HOLOSCEPTIC.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						},						
					},
				}, 				
				{  -- Scientific NPC light
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\NPCS\EXPLORER\EXPLORERIPAD.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						},						
					},
				},  
				{  -- Trader NPC light
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\NPCS\LOWERORDER\ANOMALYLOWERORDER.SCENE.MBIN", 
												"MODELS\PLANETS\NPCS\LOWERORDER\LOWERORDER.SCENE.MBIN",
												"MODELS\PLANETS\NPCS\LOWERORDER\LOWERORDERBODY.SCENE.MBIN",
												"MODELS\PLANETS\NPCS\LOWERORDER\LOWERORDERIPAD.SCENE.MBIN",
												"MODELS\PLANETS\NPCS\LOWERORDER\LOWERORDERSIT.SCENE.MBIN",
												"MODELS\PLANETS\NPCS\LOWERORDER\LOWERORDERSTAND.SCENE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						},						
					},
				},  
				{  -- Warrior NPC light
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\NPCS\WARRIOR\WARRIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Type", "LIGHT",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						},						
					},
				},  
				--]]
				{  -- Nexus column yellow light
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\NEXUS\PARTS\LIGHTING\LIGHTCOLLUMN.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight699",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Name", "LightColumnLOD3"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='YellowLight',tx=0.008792, ty=2.44667, tz=0.038787, i=40000, r=1.0, g=0.77, b=0.4,}),
						},						
					},
				},  		
				{  -- Nexus small column yellow light
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\NEXUS\PARTS\LIGHTING\SMALLLIGHTCOLLUMN.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "pointLight820",},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] 	= "SECTION",
						}, 
						--[[  {
							["SPECIAL_KEY_WORDS"]  = {"Name", "SmallLightColumnLOD3"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = InsertNewLight({name='YellowLight',tx=0.02866, ty=0.595435, tz=0.025357, i=20000, r=1.0, g=0.7, b=0.4,}),
						},		--]]				
					},
				}, 
			}
		}
	}	
}


  
