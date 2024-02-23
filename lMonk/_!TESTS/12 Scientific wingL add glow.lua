--[[-----------------------------------------
 Scientific add wing engine glow to WingL
-------------------------------------------]]

local function AddGlowings(x, y, z, s)
	return [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="Glow"/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="MESH"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]]..(x - 1)..[["/>
			<Property name="TransY" value="]]..(y + 1)..[["/>
			<Property name="TransZ" value="]]..z..[["/>
			<Property name="RotX" value="180"/>
			<Property name="RotY" value="0"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="]]..(s / 2)..[["/>
			<Property name="ScaleY" value="]]..(s / 2)..[["/>
			<Property name="ScaleZ" value="]]..(s / 2)..[["/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHSTARTPHYSI"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="17706"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRSTARTPHYSI"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6714"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRENDPHYSICS"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6771"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHSTARTGRAPH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHCOUNT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="156"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRSTARTGRAPH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRENDGRAPHIC"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="57"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FIRSTSKINMAT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="LASTSKINMAT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="LODLEVEL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BOUNDHULLST"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="206"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BOUNDHULLED"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="236"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINX"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-6.601414"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-0.349449"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINZ"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-0.077621"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXX"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-5.695039"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0.317079"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXZ"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0.108646"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="HASH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6539754788125513743"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MATERIAL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT\LIGHTS3.MATERIAL.MBIN"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MESHLINK"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="GlowShape"/>
			</Property>
		</Property>
		<Property name="Children"/>
	</Property>
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="EngineGlow3"/>
		<Property name="NameHash" value="0"/>
		<Property name="Type" value="MESH"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]]..(x + 0)..[["/>
			<Property name="TransY" value="]]..(y + 0)..[["/>
			<Property name="TransZ" value="]]..(z + 0)..[["/>
			<Property name="RotX" value="180"/>
			<Property name="RotY" value="0"/>
			<Property name="RotZ" value="0"/>
			<Property name="ScaleX" value="]]..(s * 1.1)..[["/>
			<Property name="ScaleY" value="]]..(s * 1.1)..[["/>
			<Property name="ScaleZ" value="]]..(s * 1.1)..[["/>
		</Property>
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHSTARTPHYSI"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="17910"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRSTARTPHYSI"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6804"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRENDPHYSICS"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6853"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHSTARTGRAPH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BATCHCOUNT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="240"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRSTARTGRAPH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="VERTRENDGRAPHIC"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="49"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="FIRSTSKINMAT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="LASTSKINMAT"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="LODLEVEL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BOUNDHULLST"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="248"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="BOUNDHULLED"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="288"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINX"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="6.321273"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-0.331753"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMINZ"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="-0.274398"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXX"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="7.226963"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXY"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0.314969"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="AABBMAXZ"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="0.323617"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="HASH"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="3479888918004141148"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MATERIAL"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT\ENGINEGLOW_MAT.MATERIAL.MBIN"/>
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="MESHLINK"/>
				<Property name="AltID" value=""/>
				<Property name="Value" value="EngineGlow3Shape"/>
			</Property>
		</Property>
		<Property name="Children"/>
	</Property>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 05 Scientific WingL engine glow.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSL/WINGSL_LEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'EngineGlow'},
				REPLACE_TYPE		= 'ADDAFTERSECTION',
				ADD					= AddGlowings(0, 0, 0, 0.025)
			}
		}
	}
}}}}

-- WINGSA _WINGSL_A4

-- WINGSL _WINGSL_L1

