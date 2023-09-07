SKYFILE = [[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.88.0)-->
<Data template="GcSpaceSkyColourSettingList">
  <Property name="Settings">
    <Property value="GcSolarSystemSkyColourData.xml">
      <Property name="TopColour" value="Colour.xml">
        <Property name="R" value="0.03" />
        <Property name="G" value="0.03" />
        <Property name="B" value="0.03" />
        <Property name="A" value="1" />
      </Property>
      <Property name="MidColour" value="Colour.xml">
        <Property name="R" value="0.02" />
        <Property name="G" value="0.02" />
        <Property name="B" value="0.02" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BottomColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="TopColourPlanet" value="Colour.xml">
        <Property name="R" value="0.03" />
        <Property name="G" value="0.03" />
        <Property name="B" value="0.03" />
        <Property name="A" value="1" />
      </Property>
      <Property name="MidColourPlanet" value="Colour.xml">
        <Property name="R" value="0.02" />
        <Property name="G" value="0.02" />
        <Property name="B" value="0.02" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BottomColourPlanet" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="CloudColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LightColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour1" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour2" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour3" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="1" />
      </Property>
      <Property name="FogColour" value="Colour.xml">
        <Property name="R" value="0.025" />
        <Property name="G" value="0.707" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="FogColour2" value="Colour.xml">
        <Property name="R" value="0.025" />
        <Property name="G" value="0.707" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
    </Property>
  </Property>
</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Black Space 2.1.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod makes space black",
	["NMS_VERSION"]		= "4.44",	
	["MODIFICATIONS"]	= 
	{
	},
	["ADD_FILES"] 			= 
	{
		{		
            ["FILE_DESTINATION"] = [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.EXML]],
            ["FILE_CONTENT"]      = 	SKYFILE,
		},	
		{		
            ["FILE_DESTINATION"] = [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.EXML]],
            ["FILE_CONTENT"]      = 	SKYFILE,
		},	
	},	
}
