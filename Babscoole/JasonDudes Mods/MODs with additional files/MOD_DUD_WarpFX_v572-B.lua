--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_WarpFX_v572-B",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.72",
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/DUDDUMMYWARPTUNNEL.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNEL" />
	<Property name="NameHash" value="0" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="EndGlowCaps" />
			<Property name="NameHash" value="241358644" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="65040" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14738" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="14799" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="180" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="61" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="160" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="176" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-11.011627" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.951296" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-536.802551" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="11.011627" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.951311" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="536.802551" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2902337163336381119" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDENDGLOWCAPMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="EndGlowCapsShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="EndFade" />
			<Property name="NameHash" value="4238284095" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.047960" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.016201" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72285" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="16069" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="16435" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="1785" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="366" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="202" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="228" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.495229" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.495228" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-559.734192" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.495232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.495230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="553.506836" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="713732667751860343" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\ENDGLOWMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="EndFadeShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/DUDDUMMYWARPTUNNELBLACK.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNELBLACK" />
	<Property name="NameHash" value="0" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="EndFade" />
			<Property name="NameHash" value="4238284095" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.047960" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.016201" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72285" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="16069" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="16435" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="1785" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="366" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="202" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="228" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.495229" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.495228" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-559.734192" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.495232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.495230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="553.506836" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="713732667751860343" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDENDBLACKCAPMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="EndFadeShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="EndGlowCaps" />
			<Property name="NameHash" value="241358644" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="65040" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14738" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="14799" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="180" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="61" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="160" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="176" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-11.011627" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.951296" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-536.802551" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="11.011627" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.951311" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="536.802551" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2902337163336381119" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDENDGLOWCAPMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="EndGlowCapsShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL" />
	<Property name="NameHash" value="3057705456" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="pCube6" />
			<Property name="NameHash" value="889706650" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="3072" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="585" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="1743" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="5880" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="4" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="610.629272" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="17713772710479032717" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\TUNNELMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="pCube6Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="Lights1" />
			<Property name="NameHash" value="2386166972" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="8952" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="1744" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="6374" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="12074872519150472210" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\DUDWARPLARGEPORTALMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="WarpCylinder1" />
			<Property name="NameHash" value="1858260089" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.064389" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.021750" />
				<Property name="ScaleY" value="1.021750" />
				<Property name="ScaleZ" value="1.021750" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="34872" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6375" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="7971" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1596" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-10.086331" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.086330" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="10.086334" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.086332" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="5815352413594800242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\WARPBGMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="WarpCylinder1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="scrollingwaveBALT" />
			<Property name="NameHash" value="4083494805" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="42312" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="7972" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="9712" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7680" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1740" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="68" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.972683" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-9.972682" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="9.972686" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="9.972684" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="4960259838155911126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\DUDSCROLLINGWAVESALTBMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="scrollingwaveBALTShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="Lights2" />
			<Property name="NameHash" value="3256249464" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72417" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14472" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="19102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="13161997704668894615" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\DUDLPORTSLOWSTARSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights2Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="Lights3" />
			<Property name="NameHash" value="1348143359" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="98337" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="19103" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="23733" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="14190814447295297493" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\DUDLPORTSLOWSTARS2MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="Lights5" />
			<Property name="NameHash" value="1977144314" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="124257" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="23734" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="28364" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="876277056718594101" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\DUDLPORTSLOWSTARS3MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights5Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="LightStreaksSmall" />
			<Property name="NameHash" value="1623325118" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="157242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="29634" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="30902" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="15148113183338488495" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmallShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="LightStreaks1" />
			<Property name="NameHash" value="2890478800" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="17.349380" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="164307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="30903" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="32171" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="252" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="8241902467267431440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPLARGEPORTAL\LIGHTSTREAKSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaks1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
			<Property name="Name" value="LightStreaksSmall1" />
			<Property name="NameHash" value="3300514392" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="17.349380" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="171372" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="32172" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="33440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="252" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="278" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="8714145488947737483" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmall1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="REFDUDDUMMYWARPTUNNEL" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNEL.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\WARPPORTAL" />
	<Property name="NameHash" value="1342974742" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="pCube6" />
			<Property name="NameHash" value="889706650" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="3072" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="585" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="1743" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="5880" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="4" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="610.629272" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="17713772710479032717" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\TUNNELMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="pCube6Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="Lights1" />
			<Property name="NameHash" value="2386166972" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="8952" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="1744" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="6374" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="12074872519150472210" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPPORTAL\DUDWARPPORTALMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="WarpCylinder1" />
			<Property name="NameHash" value="1858260089" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.064389" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.021750" />
				<Property name="ScaleY" value="1.021750" />
				<Property name="ScaleZ" value="1.021750" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="34872" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6375" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="7971" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1596" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-10.086331" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.086330" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="10.086334" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.086332" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="5815352413594800242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\WARPBGMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="WarpCylinder1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="scrollingwaveBALT" />
			<Property name="NameHash" value="4083494805" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="42312" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="7972" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="9712" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7680" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1740" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="68" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.972683" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-9.972682" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="9.972686" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="9.972684" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="4960259838155911126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\GRADIENTCLOUDALTBMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="scrollingwaveBALTShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="gradientCloudBAlt" />
			<Property name="NameHash" value="481809661" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-0.008652" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.975832" />
				<Property name="ScaleY" value="0.975832" />
				<Property name="ScaleZ" value="0.997077" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="57672" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="11454" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="13202" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7680" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1748" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="84" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="100" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-10.086331" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.086330" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="10.086334" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.086332" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="9086746278434038862" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\GRADIENTCLOUDALTBMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="gradientCloudBAltShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="Lights2" />
			<Property name="NameHash" value="3256249464" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72417" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14472" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="19102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="13161997704668894615" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPPORTAL\DUDPORTSLOWSTARSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights2Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="Lights3" />
			<Property name="NameHash" value="1348143359" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="98337" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="19103" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="23733" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="14190814447295297493" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPPORTAL\DUDPORTSLOWSTARS2MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="Lights5" />
			<Property name="NameHash" value="1977144314" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="124257" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="23734" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="28364" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="876277056718594101" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPPORTAL\DUDPORTSLOWSTARS3MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights5Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="LightStreaks" />
			<Property name="NameHash" value="3010347614" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="150177" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="28365" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="29633" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="11670299317247030748" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPPORTAL\DUDLIGHTARMSBLACKMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
			<Property name="Name" value="LightStreaksSmall" />
			<Property name="NameHash" value="1623325118" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="157242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="29634" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="30902" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="15148113183338488495" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmallShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="LightStreaksSmall1" />
			<Property name="NameHash" value="3300514392" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="17.349380" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="171372" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="32172" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="33440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="252" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="278" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="8714145488947737483" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmall1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
			<Property name="Name" value="REFDUDDUMMYWARPTUNNEL" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNEL.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\WARPTUNNEL" />
	<Property name="NameHash" value="350411362" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="AnimatedLights" />
			<Property name="NameHash" value="1654959137" />
			<Property name="Type" value="JOINT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="JOINTINDEX" />
					<Property name="Value" value="1" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="pointLight1" />
					<Property name="NameHash" value="4219409884" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="360.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="linear" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="FALLOFF_RATE" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="500000.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="0.150000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="0.150000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="0.150000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="COOKIE_IDX" />
							<Property name="Value" value="-1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="VOLUMETRIC" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pCube6" />
			<Property name="NameHash" value="889706650" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="3072" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="585" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="1743" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="5880" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="4" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="610.629272" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="17713772710479032717" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\TUNNELMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="pCube6Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="Lights1" />
			<Property name="NameHash" value="2386166972" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="20.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="2.000000" />
				<Property name="ScaleY" value="2.000000" />
				<Property name="ScaleZ" value="4.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="8952" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="1744" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="6374" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="12074872519150472210" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDWARPTUNNELMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="WarpCylinder1" />
			<Property name="NameHash" value="1858260089" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.064389" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.021750" />
				<Property name="ScaleY" value="1.021750" />
				<Property name="ScaleZ" value="1.021750" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="34872" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6375" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="7971" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1596" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-10.086331" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.086330" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="10.086334" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.086332" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="5815352413594800242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\WARPBGMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="WarpCylinder1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="Lights2" />
			<Property name="NameHash" value="3256249464" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="20.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="2.000000" />
				<Property name="ScaleY" value="2.000000" />
				<Property name="ScaleZ" value="4.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72417" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14472" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="19102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="13161997704668894615" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDWARPSLOWSTARSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights2Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="Lights3" />
			<Property name="NameHash" value="1348143359" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="20.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="2.000000" />
				<Property name="ScaleY" value="2.000000" />
				<Property name="ScaleZ" value="4.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="98337" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="19103" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="23733" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="14190814447295297493" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDWARPSLOWSTARS2MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="Lights5" />
			<Property name="NameHash" value="1977144314" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="20.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="2.000000" />
				<Property name="ScaleY" value="2.000000" />
				<Property name="ScaleZ" value="4.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="124257" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="23734" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="28364" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="876277056718594101" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDWARPSLOWSTARS3MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights5Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="LightStreaks" />
			<Property name="NameHash" value="3010347614" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="150177" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="28365" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="29633" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="11670299317247030748" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNEL\DUDWARPLIGHTARMSREDMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="LightStreaksSmall" />
			<Property name="NameHash" value="1623325118" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="157242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="29634" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="30902" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="15148113183338488495" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmallShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
			<Property name="Name" value="LightStreaksSmall1" />
			<Property name="NameHash" value="3300514392" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="17.349380" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="171372" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="32172" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="33440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="252" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="278" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="8714145488947737483" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\LIGHTSTREAKSSMALLMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksSmall1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="REFDUDDUMMYWARPTUNNEL" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.700000" />
				<Property name="ScaleY" value="0.700000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNEL.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE" />
	<Property name="NameHash" value="3984342247" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="AnimatedLights" />
			<Property name="NameHash" value="1654959137" />
			<Property name="Type" value="JOINT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="JOINTINDEX" />
					<Property name="Value" value="1" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="pointLight1" />
					<Property name="NameHash" value="4219409884" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="360.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="linear" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="FALLOFF_RATE" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="500000.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="0.031" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="0.063" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="0.141" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="COOKIE_IDX" />
							<Property name="Value" value="-1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="VOLUMETRIC" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pCube6" />
			<Property name="NameHash" value="889706650" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="3072" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="585" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="1743" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="5880" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="4" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="293.746765" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="293.746674" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="610.629272" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="17713772710479032717" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\TUNNELMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="pCube6Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="Lights1" />
			<Property name="NameHash" value="2386166972" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="8952" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="1744" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="6374" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="20" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="12074872519150472210" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDBHTUNNELMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="Lights2" />
			<Property name="NameHash" value="3256249464" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="72417" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="14472" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="19102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="126" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="13161997704668894615" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDBHSLOWSTARSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights2Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="Lights3" />
			<Property name="NameHash" value="1348143359" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="98337" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="19103" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="23733" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="142" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="14190814447295297493" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDBHSLOWSTARS2MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="Lights5" />
			<Property name="NameHash" value="1977144314" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="2.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="124257" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="23734" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="28364" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="25920" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="4630" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="158" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.853226" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.853227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-278.420868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.853230" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.853225" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="274.318787" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="876277056718594101" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDBHSLOWSTARS3MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="Lights5Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="WarpCylinder1" />
			<Property name="NameHash" value="1858260089" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.064389" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.021750" />
				<Property name="ScaleY" value="1.021750" />
				<Property name="ScaleZ" value="1.021750" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="34872" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6375" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="7971" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1596" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="52" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-10.086331" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-10.086330" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-578.177307" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="10.086334" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="10.086332" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="572.256592" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="5815352413594800242" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\WARPBGMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="WarpCylinder1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="LightStreaks" />
			<Property name="NameHash" value="3010347614" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="150177" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="28365" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="29633" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="7065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="1268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="174" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-8.406424" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-574.636047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="8.406427" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="8.406425" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="568.715271" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="11670299317247030748" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\WARPTUNNELBLACKHOLE\DUDBHLIGHTARMSMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="LightStreaksShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="REFDUDDUMMYWARPTUNNEL" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\EFFECTS\WARP\DUDDUMMYWARPTUNNELBLACK.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL/DUDLPORTSLOWSTARS2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.005000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL6LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL/DUDLPORTSLOWSTARS3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.007500" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL6LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL/DUDLPORTSLOWSTARSMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstarsMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstarsMat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.030000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL5LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL/DUDSCROLLINGWAVESALTBMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="ScrollingWavesAltBMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/ScrollingWavesAltBMat.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="9" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/SHADERMILLUBER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2105344" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/SCROLLINGWAVES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="1763399710625007925" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPLARGEPORTAL/DUDWARPLARGEPORTALMAT1.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="TunnelMat1" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/Lines.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL1LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL/DUDLIGHTARMSBLACKMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightArmsBlackMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/LightArmsBlackMat.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="13" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/SHADERMILLUBER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.300000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2106880" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/LIGHTARMS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="2093056179701190064" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL/DUDPORTSLOWSTARS2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.005000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL3LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL/DUDPORTSLOWSTARS3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.007500" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL3LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL/DUDPORTSLOWSTARSMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstarsMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstarsMat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.030000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDPORTAL2LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPPORTAL/DUDWARPPORTALMAT1.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="TunnelMat1" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/Lines.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL1LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDENDGLOWCAPMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="EngGLowCapMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnel/Materials/EngGLowCapMat.metamaterial.mXml" />
	<Property name="Class" value="Glow" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="40.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2105344" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers" />
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDWARPLIGHTARMSREDMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightArmsRedMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpLargePortal/Materials/LightArmsRedMat.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="13" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/SHADERMILLUBER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.300000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2106880" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/LIGHTARMS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="-6806235467279033695" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDWARPSLOWSTARS2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.007000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL3LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDWARPSLOWSTARS3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.010500" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL3LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDWARPSLOWSTARSMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstarsMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstarsMat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.042000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL2LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNEL/DUDWARPTUNNELMAT1.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="TunnelMat1" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/Lines.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.650000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL1LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDBHLIGHTARMSMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="LightArmsMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnel/Materials/LightArmsMat.metamaterial.mXml" />
	<Property name="Class" value="GlowTranslucent" />
	<Property name="TransparencyLayerID" value="13" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/SHADERMILLUBER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="1.300000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2106880" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/LIGHTARMS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="443338131036923603" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDBHSLOWSTARS2MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.005000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL6LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDBHSLOWSTARS3MAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstars2Mat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstars2Mat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.007500" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL6LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDBHSLOWSTARSMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="BHslowstarsMat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/BHslowstarsMat.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.030000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL5LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDBHTUNNELMAT1.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="TunnelMat1" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnelBlackHole/Materials/Lines.metamaterial.mXml" />
	<Property name="Class" value="Additive" />
	<Property name="TransparencyLayerID" value="5" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F09_TRANSPARENT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="-0.225000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDTUNNEL4LINES.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE/DUDENDBLACKCAPMAT.MATERIAL.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="WarpBGmat" />
	<Property name="Metamaterial" value="Models/Effects/Warp/WarpTunnel/Materials/WarpBGmat.metamaterial.mXml" />
	<Property name="Class" value="Opaque" />
	<Property name="TransparencyLayerID" value="15" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F07_UNLIT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F13_UV_EFFECT" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="3">
			<Property name="MaterialFlag" value="_F21_VERTEXCUSTOM" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="4">
			<Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="0.900000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gUVScrollStepVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="2131456" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/WARP/DUDENDBLACKCAP.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
        },
    },
}