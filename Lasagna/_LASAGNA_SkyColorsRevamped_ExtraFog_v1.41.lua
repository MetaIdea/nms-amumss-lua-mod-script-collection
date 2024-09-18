--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

------------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = DAY COLORS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
------------------------------------------------------------------------------------------------------------------------------------------------------

NewDaySkyColors = [[	
  <Property name="GenericSettings" value="GcWeatherColourSettingList.xml">
    <Property name="Settings">
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.75" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.56" />
          <Property name="B" value="0.56" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.83" />
          <Property name="B" value="0.76" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.9" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.22" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.64" />
          <Property name="B" value="0.7" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.87" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.37" />
          <Property name="G" value="0.62" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.73" />
          <Property name="G" value="0.97" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.95" />
          <Property name="B" value="0.87" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.12" />
          <Property name="G" value="0.41" />
          <Property name="B" value="0.53" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.45" />
          <Property name="G" value="0.62" />
          <Property name="B" value="0.69" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.8" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.66" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.95" />
          <Property name="B" value="0.89" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.5" />
          <Property name="G" value="0.08" />
          <Property name="B" value="0.01" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.82" />
          <Property name="G" value="0.86" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.82" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.45" />
          <Property name="G" value="0.6" />
          <Property name="B" value="0.8" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.87" />
          <Property name="B" value="0.57" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.66" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.95" />
          <Property name="B" value="0.89" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.5" />
          <Property name="G" value="0.08" />
          <Property name="B" value="0.01" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.82" />
          <Property name="G" value="0.86" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.82" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.7" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.75" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.62" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.67" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.82" />
          <Property name="G" value="0.79" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.25" />
          <Property name="G" value="0.3" />
          <Property name="B" value="0.54" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.95" />
          <Property name="G" value="0.85" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.59" />
          <Property name="G" value="0.4" />
          <Property name="B" value="0.79" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.79" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.79" />
          <Property name="G" value="0.67" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.88" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.28" />
          <Property name="B" value="0.48" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.27" />
          <Property name="G" value="0.47" />
          <Property name="B" value="0.56" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.85" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="0.75" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.92" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.75" />
          <Property name="B" value="0.61" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.13" />
          <Property name="G" value="0.45" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="1" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.45" />
          <Property name="B" value="0.6" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.73" />
          <Property name="G" value="0.84" />
          <Property name="B" value="0.54" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.87" />
          <Property name="G" value="1" />
          <Property name="B" value="0.72" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.77" />
          <Property name="G" value="0.97" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.44" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.78" />
          <Property name="G" value="1" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.72" />
          <Property name="B" value="0.49" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.83" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.47" />
          <Property name="G" value="1" />
          <Property name="B" value="0.62" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="1" />
          <Property name="B" value="0.71" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.81" />
          <Property name="G" value="1" />
          <Property name="B" value="0.97" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.48" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.43" />
          <Property name="G" value="0.75" />
          <Property name="B" value="0.43" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.77" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.55" />
          <Property name="G" value="0.75" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.97" />
          <Property name="B" value="0.78" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.84" />
          <Property name="B" value="0.65" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.08" />
          <Property name="G" value="0.22" />
          <Property name="B" value="0.42" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.55" />
          <Property name="G" value="0.4" />
          <Property name="B" value="0.4" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.82" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.47" />
          <Property name="G" value="0.63" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="1" />
          <Property name="B" value="0.89" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.79" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.88" />
          <Property name="G" value="0.93" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.32" />
          <Property name="G" value="0.46" />
          <Property name="B" value="0.71" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.95" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.76" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="1" />
          <Property name="B" value="0.91" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.86" />
          <Property name="B" value="0.69" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.48" />
          <Property name="G" value="0.26" />
          <Property name="B" value="0" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.87" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.29" />
          <Property name="G" value="0.32" />
          <Property name="B" value="0.56" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="1" />
          <Property name="B" value="0.8" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.53" />
          <Property name="G" value="0.82" />
          <Property name="B" value="0.73" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="1" />
          <Property name="B" value="0.7" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.45" />
          <Property name="G" value="0.41" />
          <Property name="B" value="0.08" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.38" />
          <Property name="G" value="0.54" />
          <Property name="B" value="0.62" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="1" />
          <Property name="B" value="0.94" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.75" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="1" />
          <Property name="B" value="0.77" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="1" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.53" />
          <Property name="B" value="0.42" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.37" />
          <Property name="G" value="0.55" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.94" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="0.68" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.94" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.77" />
          <Property name="G" value="1" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.13" />
          <Property name="G" value="0.41" />
          <Property name="B" value="0.55" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.9" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.69" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.48" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.6" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.86" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.6" />
          <Property name="B" value="0.89" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.95" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.94" />
          <Property name="G" value="0.8" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.74" />
          <Property name="G" value="0.63" />
          <Property name="B" value="0.58" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.85" />
          <Property name="G" value="0.52" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="1" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.76" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.46" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.91" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="0.87" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.16" />
          <Property name="G" value="0.55" />
          <Property name="B" value="0.65" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.78" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.29" />
          <Property name="G" value="0.53" />
          <Property name="B" value="0.76" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.73" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.97" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.22" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="1" />
          <Property name="B" value="0.57" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.32" />
          <Property name="G" value="0.76" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.81" />
          <Property name="G" value="1" />
          <Property name="B" value="0.62" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.99" />
          <Property name="B" value="0.62" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.12" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.53" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.44" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.77" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.62" />
          <Property name="G" value="0.55" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.71" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.83" />
          <Property name="B" value="0.91" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.5" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.47" />
          <Property name="G" value="0.26" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.86" />
          <Property name="B" value="0.44" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.64" />
          <Property name="B" value="0.16" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.72" />
          <Property name="B" value="0.49" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.85" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.78" />
          <Property name="G" value="1" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.91" />
          <Property name="G" value="0.91" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.37" />
          <Property name="B" value="0.27" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.62" />
          <Property name="B" value="0.38" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.55" />
          <Property name="B" value="0.29" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.61" />
          <Property name="B" value="0.38" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.92" />
          <Property name="B" value="0.86" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.27" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.56" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.72" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.91" />
          <Property name="G" value="0.91" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.11" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.67" />
          <Property name="B" value="0.86" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.94" />
          <Property name="G" value="0.69" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="0.7" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.87" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.25" />
          <Property name="G" value="0.3" />
          <Property name="B" value="0.54" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.59" />
          <Property name="G" value="0.32" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.63" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.95" />
          <Property name="G" value="0.47" />
          <Property name="B" value="0.6" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.79" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.91" />
          <Property name="G" value="0.26" />
          <Property name="B" value="0.42" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.57" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.76" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.95" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.8" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.07" />
          <Property name="B" value="0" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.82" />
          <Property name="G" value="0.78" />
          <Property name="B" value="0.6" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="1" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.47" />
          <Property name="G" value="0.85" />
          <Property name="B" value="0.72" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.46" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.91" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="0.87" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.08" />
          <Property name="G" value="0.45" />
          <Property name="B" value="0.55" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.78" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.65" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.73" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.97" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.22" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="0.83" />
          <Property name="B" value="0.84" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.1" />
          <Property name="B" value="0.41" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.86" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.64" />
          <Property name="G" value="0.75" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.95" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.94" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.85" />
          <Property name="G" value="0.69" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.55" />
          <Property name="G" value="0.53" />
          <Property name="B" value="0.62" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="1" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.8" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.46" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.91" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.97" />
          <Property name="G" value="0.87" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.42" />
          <Property name="G" value="0.62" />
          <Property name="B" value="0.54" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.78" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.48" />
          <Property name="G" value="0.65" />
          <Property name="B" value="0.8" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.73" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.97" />
          <Property name="B" value="0.85" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.22" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.75" />
          <Property name="G" value="0.79" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.49" />
          <Property name="G" value="0.52" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.79" />
          <Property name="G" value="0.67" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.8" />
          <Property name="G" value="0.88" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.28" />
          <Property name="B" value="0.48" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.89" />
          <Property name="G" value="0.96" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.47" />
          <Property name="G" value="0.43" />
          <Property name="B" value="0.57" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.95" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.87" />
          <Property name="G" value="0.87" />
          <Property name="B" value="0.87" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="1" />
          <Property name="B" value="0.89" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.94" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.83" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.79" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.88" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.99" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.45" />
          <Property name="B" value="0.57" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.84" />
          <Property name="G" value="0.99" />
          <Property name="B" value="0.98" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.41" />
          <Property name="G" value="0.56" />
          <Property name="B" value="0.8" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.69" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.92" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.72" />
          <Property name="B" value="0.72" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.81" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.9" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.47" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.11" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.62" />
          <Property name="G" value="0.26" />
          <Property name="B" value="0.1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.92" />
          <Property name="B" value="0.02" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.38" />
          <Property name="G" value="0.69" />
          <Property name="B" value="0.98" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.22" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.65" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.34" />
          <Property name="G" value="0.47" />
          <Property name="B" value="0.59" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.89" />
          <Property name="B" value="0.41" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.33" />
          <Property name="G" value="0.73" />
          <Property name="B" value="0.41" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="1" />
          <Property name="B" value="0.63" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.49" />
          <Property name="B" value="0.28" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.12" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.53" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="1" />
          <Property name="B" value="0.67" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.98" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.44" />
          <Property name="B" value="0.44" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.99" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.64" />
          <Property name="G" value="0.57" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="1" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.46" />
          <Property name="B" value="0.19" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.5" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.67" />
          <Property name="G" value="0.83" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.84" />
          <Property name="G" value="0.75" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.6" />
          <Property name="B" value="0.75" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.73" />
          <Property name="B" value="0.49" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.52" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.72" />
          <Property name="B" value="0.49" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.46" />
          <Property name="B" value="0.41" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.78" />
          <Property name="G" value="1" />
          <Property name="B" value="0.93" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.96" />
          <Property name="G" value="0.83" />
          <Property name="B" value="0.7" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.91" />
          <Property name="G" value="0.91" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.7" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.18" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.2" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.83" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.31" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.98" />
          <Property name="G" value="0.61" />
          <Property name="B" value="0.38" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.57" />
          <Property name="G" value="0.86" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.27" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.56" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.93" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.72" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.66" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.91" />
          <Property name="G" value="0.91" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.72" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.24" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.65" />
          <Property name="G" value="0.66" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.85" />
          <Property name="G" value="0.5" />
          <Property name="B" value="0.95" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.94" />
          <Property name="G" value="0.48" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.01" />
          <Property name="G" value="0.59" />
          <Property name="B" value="0.99" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.25" />
          <Property name="G" value="0.3" />
          <Property name="B" value="0.54" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.85" />
          <Property name="B" value="0.97" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.44" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.34" />
          <Property name="B" value="0.53" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.88" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.47" />
          <Property name="B" value="0.47" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.51" />
          <Property name="B" value="0.79" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.86" />
          <Property name="G" value="0.79" />
          <Property name="B" value="0.74" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.64" />
          <Property name="B" value="0.68" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.92" />
          <Property name="G" value="0.93" />
          <Property name="B" value="0.96" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.63" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.58" />
          <Property name="A" value="1" />
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="PerBiomeSettings">
    <Property name="Lush" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Toxic" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Scorched" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Radioactive" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Frozen" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Barren" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Dead" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Weird" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Red" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Green" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Blue" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Test" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Swamp" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Lava" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Waterworld" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="All" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
  </Property>
]]


------------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = DUSK COLORS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
------------------------------------------------------------------------------------------------------------------------------------------------------

NewDuskSkyColors = [[	
  <Property name="GenericSettings" value="GcWeatherColourSettingList.xml">
    <Property name="Settings">
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.451" />
          <Property name="G" value="0.612" />
          <Property name="B" value="0.637" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.217" />
          <Property name="G" value="0.481" />
          <Property name="B" value="0.51" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.976" />
          <Property name="B" value="0.764" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.957" />
          <Property name="G" value="0.872" />
          <Property name="B" value="0.532" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.996" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.322" />
          <Property name="B" value="0.191" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.987" />
          <Property name="G" value="0.767" />
          <Property name="B" value="0.681" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="2" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.943" />
          <Property name="G" value="0.792" />
          <Property name="B" value="0.438" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.933333" />
          <Property name="G" value="0.976471" />
          <Property name="B" value="0.945098" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.92549" />
          <Property name="G" value="0.937255" />
          <Property name="B" value="0.941176" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.613" />
          <Property name="G" value="0.392" />
          <Property name="B" value="0.244" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.51" />
          <Property name="G" value="0.171" />
          <Property name="B" value="0.063" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.914" />
          <Property name="B" value="0.641" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.977" />
          <Property name="G" value="0.866" />
          <Property name="B" value="0.481" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.996" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.513" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.219" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.976" />
          <Property name="B" value="0.764" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="2" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.788" />
          <Property name="B" value="0.412" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.933333" />
          <Property name="G" value="0.976471" />
          <Property name="B" value="0.945098" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.92549" />
          <Property name="G" value="0.937255" />
          <Property name="B" value="0.941176" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.992" />
          <Property name="G" value="0.585" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.993" />
          <Property name="G" value="0.553" />
          <Property name="B" value="0.711" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.861" />
          <Property name="B" value="0.817" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.987" />
          <Property name="G" value="0.688" />
          <Property name="B" value="0.688" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.921" />
          <Property name="B" value="0.018" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.122" />
          <Property name="G" value="0.227" />
          <Property name="B" value="0.527" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.585" />
          <Property name="G" value="0.85" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.648" />
          <Property name="B" value="0.725" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.933333" />
          <Property name="G" value="0.976471" />
          <Property name="B" value="0.945098" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.92549" />
          <Property name="G" value="0.937255" />
          <Property name="B" value="0.941176" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.963" />
          <Property name="G" value="0.376" />
          <Property name="B" value="0.658" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.278" />
          <Property name="G" value="0.383" />
          <Property name="B" value="0.717" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.933" />
          <Property name="G" value="0.741" />
          <Property name="B" value="0.549" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.99" />
          <Property name="G" value="0.568" />
          <Property name="B" value="0.568" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.996" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.497" />
          <Property name="G" value="0.184" />
          <Property name="B" value="0.359" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.665" />
          <Property name="G" value="0.826" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="2" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.973" />
          <Property name="G" value="0.733" />
          <Property name="B" value="0.824" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.905882" />
          <Property name="G" value="0.913725" />
          <Property name="B" value="0.945098" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.972549" />
          <Property name="G" value="0.937255" />
          <Property name="B" value="0.972549" />
          <Property name="A" value="1" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.875" />
          <Property name="B" value="0.651" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.721" />
          <Property name="B" value="0.549" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.858" />
          <Property name="B" value="0.771" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.913" />
          <Property name="B" value="0.771" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.996" />
          <Property name="G" value="1" />
          <Property name="B" value="0.83" />
          <Property name="A" value="1" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0.145" />
          <Property name="G" value="0.202" />
          <Property name="B" value="0.5" />
          <Property name="A" value="1" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.782" />
          <Property name="G" value="1" />
          <Property name="B" value="0.926" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="0.915" />
          <Property name="B" value="0.789" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.905882" />
          <Property name="G" value="0.913725" />
          <Property name="B" value="0.945098" />
          <Property name="A" value="1" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.972549" />
          <Property name="G" value="0.937255" />
          <Property name="B" value="0.972549" />
          <Property name="A" value="1" />
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="PerBiomeSettings">
    <Property name="Lush" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Toxic" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Scorched" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Radioactive" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Frozen" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Barren" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Dead" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Weird" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Red" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Green" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Blue" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Test" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Swamp" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Lava" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Waterworld" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="All" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
  </Property>
]]

------------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = NIGHT COLORS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
------------------------------------------------------------------------------------------------------------------------------------------------------

NewNightSkyColors = [[	
  <Property name="GenericSettings" value="GcWeatherColourSettingList.xml">
    <Property name="Settings">
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.26" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.21" />
          <Property name="G" value="0.22" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.31" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.1" />
          <Property name="G" value="0.1" />
          <Property name="B" value="0.2" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.37" />
          <Property name="G" value="0.38" />
          <Property name="B" value="0.68" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.26" />
          <Property name="G" value="0.24" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.26" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.41" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.29" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.31" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.18" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0.2" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.63" />
          <Property name="G" value="0.37" />
          <Property name="B" value="0.68" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.33" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.42" />
          <Property name="G" value="0.24" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.26" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.42" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.23" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.19" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.1" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0.2" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.37" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.21" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.24" />
          <Property name="B" value="0.24" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.26" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.42" />
          <Property name="G" value="0.3" />
          <Property name="B" value="0.21" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.24" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.1" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0.2" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.53" />
          <Property name="B" value="0.37" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.17" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.44" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.26" />
          <Property name="G" value="0.14" />
          <Property name="B" value="0.24" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.41" />
          <Property name="G" value="0.42" />
          <Property name="B" value="0.21" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.31" />
          <Property name="G" value="0.27" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.19" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0.2" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.68" />
          <Property name="G" value="0.66" />
          <Property name="B" value="0.37" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.36" />
          <Property name="G" value="0.33" />
          <Property name="B" value="0.17" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.24" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.22" />
          <Property name="B" value="0.26" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.21" />
          <Property name="G" value="0.42" />
          <Property name="B" value="0.21" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.18" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.06" />
          <Property name="G" value="0.06" />
          <Property name="B" value="0.06" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.68" />
          <Property name="B" value="0.37" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.36" />
          <Property name="B" value="0.18" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.44" />
          <Property name="B" value="0.37" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.22" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.21" />
          <Property name="G" value="0.42" />
          <Property name="B" value="0.37" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.25" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.06" />
          <Property name="G" value="0.06" />
          <Property name="B" value="0.06" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.37" />
          <Property name="G" value="0.68" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.36" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.36" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.18" />
          <Property name="B" value="0.22" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.21" />
          <Property name="G" value="0.29" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.31" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.06" />
          <Property name="G" value="0.06" />
          <Property name="B" value="0.06" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.37" />
          <Property name="G" value="0.45" />
          <Property name="B" value="0.68" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.36" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.58" />
          <Property name="G" value="0.58" />
          <Property name="B" value="0.58" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.31" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.02" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.11" />
          <Property name="G" value="0.11" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.15" />
          <Property name="G" value="0.21" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.16" />
          <Property name="G" value="0.16" />
          <Property name="B" value="0.29" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.25" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.13" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.11" />
          <Property name="G" value="0.16" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.15" />
          <Property name="G" value="0.25" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.32" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.15" />
          <Property name="G" value="0.25" />
          <Property name="B" value="0.29" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.25" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.1" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.11" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.12" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.15" />
          <Property name="G" value="0.3" />
          <Property name="B" value="0.15" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.42" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.29" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.19" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0.17" />
          <Property name="B" value="0.25" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.03" />
          <Property name="B" value="0" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0.11" />
          <Property name="B" value="0.16" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.3" />
          <Property name="G" value="0.22" />
          <Property name="B" value="0.15" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.28" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.44" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.29" />
          <Property name="G" value="0.23" />
          <Property name="B" value="0.15" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.17" />
          <Property name="G" value="0" />
          <Property name="B" value="0.09" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.11" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.26" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.41" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.15" />
          <Property name="G" value="0.28" />
          <Property name="B" value="0.28" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.09" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SelectionWeighting" value="1" />
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="0.07" />
          <Property name="G" value="0" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="0.39" />
          <Property name="G" value="0.39" />
          <Property name="B" value="0.39" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="0.35" />
          <Property name="G" value="0.35" />
          <Property name="B" value="0.35" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="0.14" />
          <Property name="G" value="0.11" />
          <Property name="B" value="0.17" />
          <Property name="A" value="0.79" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="0.71" />
          <Property name="G" value="0.71" />
          <Property name="B" value="0.71" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="0" />
          <Property name="G" value="0" />
          <Property name="B" value="0" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="0.22" />
          <Property name="G" value="0.15" />
          <Property name="B" value="0.3" />
          <Property name="A" value="1" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="1" />
          <Property name="y" value="1" />
          <Property name="z" value="1" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="0.44" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.41" />
          <Property name="A" value="0.77" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="0.24" />
          <Property name="G" value="0.2" />
          <Property name="B" value="0.18" />
          <Property name="A" value="0.59" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="0.2" />
          <Property name="G" value="0.14" />
          <Property name="B" value="0" />
          <Property name="A" value="0" />
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="PerBiomeSettings">
    <Property name="Lush" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Toxic" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Scorched" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Radioactive" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Frozen" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Barren" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Dead" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Weird" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Red" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Green" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Blue" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Test" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Swamp" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Lava" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="Waterworld" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
    <Property name="All" value="GcWeatherColourSettingList.xml">
      <Property name="Settings" />
    </Property>
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_SkyColorsRevamped_ExtraFog_v1.41.pak",       
["MOD_AUTHOR"]				= "goosetehmoose",         
["NMS_VERSION"]				= "",     
["MODIFICATIONS"] 			=             
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								-- { "FogStrength", 				"0.25" }, --Original "0.04" --tried 0.2
								-- { "FogMax", 					"1" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"7"   }, --Original "10"
								--{ "FogColourMax", 				"1"   }, --Original "1"
								{ "HeightFogStrength", 			"0.3" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.1" }, --Original "0.25"
								--{ "HeightFogOffset", 			"0"   }, --Original "0"
								{ "HeightFogMax", 				"0.6" }, --Original "0.8"
								{ "FogHeight", 					"10"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFlightFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								-- { "FogStrength", 				"0.08" }, --Original "0.04" --tried 0.2
								-- { "FogMax", 					"1" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"7"   }, --Original "10"
								--{ "FogColourMax", 				"1"   }, --Original "1"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.15" }, --Original "0.25"
								--{ "HeightFogOffset", 			"0"   }, --Original "0"
								{ "HeightFogMax", 				"0.7" }, --Original "0.8"
								{ "FogHeight", 					"10"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetExtremeFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								-- { "FogStrength", 				"0.6" }, --Original "0.04" --tried 0.2
								-- { "FogMax", 					"1" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"4"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogMax", 				"0.6" }, --Original "0.8"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetStormFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								-- { "FogStrength", 				"1.3" }, --Original "0.04" --tried 0.2
								-- { "FogMax", 					"1" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"4"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogMax", 				"0.5" }, --Original "0.8"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MinStormLengthLow", 		"30" }, --Original "120"
								{ "MaxStormLengthLow", 		"45" }, --Original "180"
								{ "MinStormLengthHigh", 	"38" }, --Original "150"
								{ "MaxStormLengthHigh", 	"80" }, --Original "320"
								--{ "SafeSkyMaxIndex",		"56" }, --Original "5".  Num exotic/weird skies " " <-NO. v1.1: Num lush (22) + num frozen (34)
								--{ "FrozenSkyMaxIndex",		"34" }, --Original "0".  Num frozen day skies added in dayskycolours
								{ "HeavyAirScale", 			"1.2" },
								{ "AmbientFactor", 			"0.3" },
								{ "MaxSaturation",			"0.6" },
								{ "MaxFogSaturation",		"0.25" },
								{ "MinFogValue",			"0.4" },
								{ "MaxFogValue",			"0.75" },
								{ "SunSurroundSize",		"14" },
								{ "SunSurroundStrength",	"13" },
								{ "FogStrength", 				"0.25" }, --Original "0.04" --tried 0.2
								{ "FogMax", 					"1" }, --Original "1" --tried 0.9
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "PhotoModeVignette",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	1},
								{"y",	1},
							}
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DAYSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NewDaySkyColors,
						},
						{
							["PRECEDING_KEY_WORDS"] = { "GenericSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DUSKSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NewDuskSkyColors,
						},
						{
							["PRECEDING_KEY_WORDS"] = { "GenericSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NewNightSkyColors,
						},
						{
							["PRECEDING_KEY_WORDS"] = { "GenericSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = { "PerBiomeSettings", },
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE