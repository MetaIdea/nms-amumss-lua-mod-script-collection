--[[

*In order for this LUA script to work, you must move the included CUSTOMBIOMES folder to AMUMSS's "ModExtraFilesToInclude" folder
(this script modifies those custom EXML files, which are then spawned in-game via. multi-biome.pak)

(*you can pretty much ignore everything up to section 3)

There are 4 sections in this script:

1. Global variables		  			 	  	- i.e. quick adjustments
2. Unused function							- i.e. modified from Shaidak's generation LUA, but I never ended up using this
3. Used function							- i.e. to add exml to custom biomes
4. Testing									- i.e. if you want to spawn a specific custom biome in-game to test
5. Custom biomes							- i.e. all biomes with function calls

]]


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 1. GLOBAL VARIABLES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


-- ReplaceWithDistantObjectsRaw = 
-- [[
    -- <Property name="DistantObjects">
    -- </Property>
-- ]]

-- ReplaceWithLandmarksRaw = 
-- [[
    -- <Property name="Landmarks">
    -- </Property>
-- ]]

replaceGrassMatFlags =
[[
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F02_SKINNED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F36_DOUBLESIDED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
  </Property>
]]

replaceCGDesc =
[[
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_7" />
          <Property name="Name" value="_lushgrass_7" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_1" />
          <Property name="Name" value="_lushgrass_1" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_3" />
          <Property name="Name" value="_lushgrass_3" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_6" />
          <Property name="Name" value="_lushgrass_6" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_5" />
          <Property name="Name" value="_lushgrass_5" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_4" />
          <Property name="Name" value="_lushgrass_4" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_8" />
          <Property name="Name" value="_lushgrass_8" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_2" />
          <Property name="Name" value="_lushgrass_2" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
]]

--This adds basic collisions to pre-release models:
AddBasicCollisions = --scale y&z flipped compared to blender (v2.6: 0.24 from 0.189618)
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.852212" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.3" />
        <Property name="ScaleY" value="4.113077" />
        <Property name="ScaleZ" value="0.3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSailPlantCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="9.01606" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.08925" />
        <Property name="ScaleY" value="1.08925" />
        <Property name="ScaleZ" value="1.08925" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddStargateMainCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="33.7089" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="14.7729" />
        <Property name="ScaleY" value="94.0191" />
        <Property name="ScaleZ" value="43.707" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddStargateSmallCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.1063" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3.98886" />
        <Property name="ScaleY" value="16.1781" />
        <Property name="ScaleZ" value="7.06369" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddConstruct01Collisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.545434" />
        <Property name="TransY" value="25.3086" />
        <Property name="TransZ" value="0.000005" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="53.1329" />
        <Property name="ScaleZ" value="9.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddDiploCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="2.71673" />
            <Property name="TransZ" value="0.696974" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="4.12627" />
            <Property name="ScaleY" value="6.65969" />
            <Property name="ScaleZ" value="12.822" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.12627" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.65969" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.822" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="7.99469" />
            <Property name="TransZ" value="-6.20225" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="17.5435" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.5435" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddLargePyramidCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-1.18213" />
            <Property name="TransZ" value="1.81038" />
            <Property name="RotX" value="-0.000003" />
            <Property name="RotY" value="-0.000008" />
            <Property name="RotZ" value="43.2926" />
            <Property name="ScaleX" value="25.036" />
            <Property name="ScaleY" value="17.2584" />
            <Property name="ScaleZ" value="29.1401" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.036" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17.2584" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="29.1401" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.000004" />
            <Property name="TransY" value="-0.000009" />
            <Property name="TransZ" value="-1.97872" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="50.8707" />
            <Property name="ScaleX" value="25.293" />
            <Property name="ScaleY" value="11.5588" />
            <Property name="ScaleZ" value="12.9888" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="25.293" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="11.5588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.9888" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddLargeFir01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.558016" />
        <Property name="TransY" value="7.22953" />
        <Property name="TransZ" value="0.332784" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-0.000002" />
        <Property name="RotZ" value="8.91439" />
        <Property name="ScaleX" value="1.2" />
        <Property name="ScaleY" value="18.7235" />
        <Property name="ScaleZ" value="1.2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddPanelCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.78808" />
        <Property name="ScaleY" value="0.18821" />
        <Property name="ScaleZ" value="4.25468" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddGiantCubeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="35.2645" />
        <Property name="RotY" value="-0.547245" />
        <Property name="RotZ" value="-22.8467" />
        <Property name="ScaleX" value="18" />
        <Property name="ScaleY" value="18" />
        <Property name="ScaleZ" value="18" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddTinyCubesCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.093606" />
        <Property name="TransY" value="0.299448" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.15984" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddGiantSpikeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.151165" />
        <Property name="TransY" value="2.04694" />
        <Property name="TransZ" value="0.069311" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.91557" />
        <Property name="ScaleY" value="5.63382" />
        <Property name="ScaleZ" value="1.91106" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.740098" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.722315" />
        <Property name="ScaleY" value="2.51915" />
        <Property name="ScaleZ" value="0.802045" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSquatPillar1Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.050811" />
        <Property name="TransY" value="1.97316" />
        <Property name="TransZ" value="0.084956" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2.3972" />
        <Property name="ScaleY" value="5.03717" />
        <Property name="ScaleZ" value="2.66415" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\ENTITIES\CRYSTAL_LARGE.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddAntelopeCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.7109" />
        <Property name="TransZ" value="0.302117" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.606732" />
        <Property name="ScaleY" value="1.32638" />
        <Property name="ScaleZ" value="1.808" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddAstronaut01Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.059928" />
        <Property name="TransY" value="0.715976" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.527036" />
        <Property name="ScaleY" value="1.96271" />
        <Property name="ScaleZ" value="1.0" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddWalkerCollisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.37249" />
        <Property name="TransZ" value="-0.098499" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.754088" />
        <Property name="ScaleY" value="2.84987" />
        <Property name="ScaleZ" value="1.14702" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--DONE
AddSmallTree3Collisions = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\TREES\PARTS\TRUNKA\ENTITIES\_TRUNK_A.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4.3351" />
            <Property name="TransY" value="2.62361" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.4" />
            <Property name="ScaleY" value="5.32182" />
            <Property name="ScaleZ" value="1.4" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.32182" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.92216" />
            <Property name="TransY" value="2.38741" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1.8" />
            <Property name="ScaleY" value="5.97841" />
            <Property name="ScaleZ" value="1.8" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.8" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.97841" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.8" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\DOESNTMATTER" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.175636" />
            <Property name="TransY" value="5.24692" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="7.89745" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7.89745" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]



--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = 3. USED FUNCTIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- function AddScrubGrass()
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
              -- <Property value="TkProceduralTextureChosenOptionSampler.xml">
                -- <Property name="Options">
                  -- <Property value="TkProceduralTextureChosenOption.xml">
                    -- <Property name="Layer" value="BASE" />
                    -- <Property name="Group" value="" />
                    -- <Property name="Palette" value="TkPaletteTexture.xml">
                      -- <Property name="Palette" value="Grass" />
                      -- <Property name="ColourAlt" value="Primary" />
                    -- </Property>
                    -- <Property name="OverrideColour" value="False" />
                    -- <Property name="Colour" value="Colour.xml">
                      -- <Property name="R" value="0.35" />
                      -- <Property name="G" value="0.318" />
                      -- <Property name="B" value="0.243" />
                      -- <Property name="A" value="1" />
                    -- </Property>
                    -- <Property name="OptionName" value="" />
                  -- </Property>
                -- </Property>
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="GRASS" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="40" />
        -- <Property name="MatchGroundColour" value="False" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="1.2" />
        -- <Property name="MaxScale" value="1.45" />
        -- <Property name="MinScaleY" value="1" />
        -- <Property name="MaxScaleY" value="1" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0.1" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="True" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="0.07" />
          -- <Property name="FlatDensity" value="0.045" />
          -- <Property name="SlopeDensity" value="0" />
          -- <Property name="SlopeMultiplier" value="3" />
          -- <Property name="MaxRegionRadius" value="9999" />
          -- <Property name="MaxImposterRadius" value="30" />
          -- <Property name="FadeOutStartDistance" value="9999" />
          -- <Property name="FadeOutEndDistance" value="9999" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="20" />
            -- <Property value="60" />
            -- <Property value="150" />
            -- <Property value="500" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="0.1" />
            -- <Property name="FlatDensity" value="0.05" />
            -- <Property name="SlopeDensity" value="0.05" />
            -- <Property name="SlopeMultiplier" value="1" />
            -- <Property name="MaxRegionRadius" value="30" />
            -- <Property name="MaxImposterRadius" value="30" />
            -- <Property name="FadeOutStartDistance" value="210" />
            -- <Property name="FadeOutEndDistance" value="240" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="30" />
              -- <Property value="90" />
              -- <Property value="225" />
              -- <Property value="750" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="0.1" />
            -- <Property name="FlatDensity" value="0.05" />
            -- <Property name="SlopeDensity" value="0.05" />
            -- <Property name="SlopeMultiplier" value="1" />
            -- <Property name="MaxRegionRadius" value="30" />
            -- <Property name="MaxImposterRadius" value="30" />
            -- <Property name="FadeOutStartDistance" value="210" />
            -- <Property name="FadeOutEndDistance" value="240" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="30" />
              -- <Property value="90" />
              -- <Property value="225" />
              -- <Property value="750" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end

-- function AddTheGrass(grassName)
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
              -- <Property value="TkProceduralTextureChosenOptionSampler.xml">
                -- <Property name="Options">
                  -- <Property value="TkProceduralTextureChosenOption.xml">
                    -- <Property name="Layer" value="BASE" />
                    -- <Property name="Group" value="" />
                    -- <Property name="Palette" value="TkPaletteTexture.xml">
                      -- <Property name="Palette" value="Plant" />
                      -- <Property name="ColourAlt" value="Primary" />
                    -- </Property>
                    -- <Property name="OverrideColour" value="True" />
                    -- <Property name="Colour" value="Colour.xml">
                      -- <Property name="R" value="0.42" />
                      -- <Property name="G" value="0.53" />
                      -- <Property name="B" value="0.239" />
                      -- <Property name="A" value="1" />
                    -- </Property>
                    -- <Property name="OptionName" value="" />
                  -- </Property>
                -- </Property>
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="GRASS" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="75" />
        -- <Property name="MatchGroundColour" value="True" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="0.8" />
        -- <Property name="MaxScale" value="1.0" />
        -- <Property name="MinScaleY" value="1.3" />
        -- <Property name="MaxScaleY" value="1.3" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0.1" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="False" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="1" />
          -- <Property name="FlatDensity" value="0.21" />
          -- <Property name="SlopeDensity" value="0.21" />
          -- <Property name="SlopeMultiplier" value="2.5" />
          -- <Property name="MaxRegionRadius" value="17998" />
          -- <Property name="MaxImposterRadius" value="18" />
          -- <Property name="FadeOutStartDistance" value="17998" />
          -- <Property name="FadeOutEndDistance" value="17998" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.23" />
            -- <Property name="SlopeDensity" value="0.23" />
            -- <Property name="SlopeMultiplier" value="3" />
            -- <Property name="MaxRegionRadius" value="9" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="63" />
            -- <Property name="FadeOutEndDistance" value="81" />
            -- <Property name="FadeOutOffsetDistance" value="5" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.23" />
            -- <Property name="SlopeDensity" value="0.23" />
            -- <Property name="SlopeMultiplier" value="3" />
            -- <Property name="MaxRegionRadius" value="5" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="126" />
            -- <Property name="FadeOutEndDistance" value="144" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end

-- function AddSecondaryGrass(grassName)
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="GRASSCLUMP" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="75" />
        -- <Property name="MatchGroundColour" value="True" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="1.2" />
        -- <Property name="MaxScale" value="1.4" />
        -- <Property name="MinScaleY" value="1" />
        -- <Property name="MaxScaleY" value="1" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0.1" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="False" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="1" />
          -- <Property name="FlatDensity" value="0.2" />
          -- <Property name="SlopeDensity" value="0.2" />
          -- <Property name="SlopeMultiplier" value="1" />
          -- <Property name="MaxRegionRadius" value="17998" />
          -- <Property name="MaxImposterRadius" value="18" />
          -- <Property name="FadeOutStartDistance" value="17998" />
          -- <Property name="FadeOutEndDistance" value="17998" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.22" />
            -- <Property name="SlopeDensity" value="0.22" />
            -- <Property name="SlopeMultiplier" value="3" />
            -- <Property name="MaxRegionRadius" value="9" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="63" />
            -- <Property name="FadeOutEndDistance" value="81" />
            -- <Property name="FadeOutOffsetDistance" value="5" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.22" />
            -- <Property name="SlopeDensity" value="0.22" />
            -- <Property name="SlopeMultiplier" value="3" />
            -- <Property name="MaxRegionRadius" value="5" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="126" />
            -- <Property name="FadeOutEndDistance" value="144" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end

-- function AddGrassShort()
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
              -- <Property value="TkProceduralTextureChosenOptionSampler.xml">
                -- <Property name="Options">
                  -- <Property value="TkProceduralTextureChosenOption.xml">
                    -- <Property name="Layer" value="BASE" />
                    -- <Property name="Group" value="" />
                    -- <Property name="Palette" value="TkPaletteTexture.xml">
                      -- <Property name="Palette" value="Plant" />
                      -- <Property name="ColourAlt" value="Primary" />
                    -- </Property>
                    -- <Property name="OverrideColour" value="True" />
                    -- <Property name="Colour" value="Colour.xml">
                      -- <Property name="R" value="0.42" />
                      -- <Property name="G" value="0.53" />
                      -- <Property name="B" value="0.239" />
                      -- <Property name="A" value="1" />
                    -- </Property>
                    -- <Property name="OptionName" value="3" />
                  -- </Property>
                -- </Property>
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="GRASS" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="90" />
        -- <Property name="MatchGroundColour" value="True" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="0.75" />
        -- <Property name="MaxScale" value="2.47" />
        -- <Property name="MinScaleY" value="0.7" />
        -- <Property name="MaxScaleY" value="0.75" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="False" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="1" />
          -- <Property name="FlatDensity" value="0.14" />
          -- <Property name="SlopeDensity" value="0.14" />
          -- <Property name="SlopeMultiplier" value="2.5" />
          -- <Property name="MaxRegionRadius" value="17998" />
          -- <Property name="MaxImposterRadius" value="18" />
          -- <Property name="FadeOutStartDistance" value="17998" />
          -- <Property name="FadeOutEndDistance" value="17998" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.14" />
            -- <Property name="SlopeDensity" value="0.14" />
            -- <Property name="SlopeMultiplier" value="2.5" />
            -- <Property name="MaxRegionRadius" value="9" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="63" />
            -- <Property name="FadeOutEndDistance" value="81" />
            -- <Property name="FadeOutOffsetDistance" value="5" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.14" />
            -- <Property name="SlopeDensity" value="0.14" />
            -- <Property name="SlopeMultiplier" value="2.5" />
            -- <Property name="MaxRegionRadius" value="5" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="126" />
            -- <Property name="FadeOutEndDistance" value="144" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end

-- function AddWeirdGrass(grassName)
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/]] .. grassName .. [[.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
              -- <Property value="TkProceduralTextureChosenOptionSampler.xml">
                -- <Property name="Options">
                  -- <Property value="TkProceduralTextureChosenOption.xml">
                    -- <Property name="Layer" value="BASE" />
                    -- <Property name="Group" value="" />
                    -- <Property name="Palette" value="TkPaletteTexture.xml">
                      -- <Property name="Palette" value="Plant" />
                      -- <Property name="ColourAlt" value="Primary" />
                    -- </Property>
                    -- <Property name="OverrideColour" value="True" />
                    -- <Property name="Colour" value="Colour.xml">
                      -- <Property name="R" value="0.42" />
                      -- <Property name="G" value="0.53" />
                      -- <Property name="B" value="0.239" />
                      -- <Property name="A" value="1" />
                    -- </Property>
                    -- <Property name="OptionName" value="3" />
                  -- </Property>
                -- </Property>
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="GRASS" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="90" />
        -- <Property name="MatchGroundColour" value="True" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="0.75" />
        -- <Property name="MaxScale" value="2.47" />
        -- <Property name="MinScaleY" value="1" />
        -- <Property name="MaxScaleY" value="1" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="False" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="1" />
          -- <Property name="FlatDensity" value="0.34" />
          -- <Property name="SlopeDensity" value="0.34" />
          -- <Property name="SlopeMultiplier" value="2" />
          -- <Property name="MaxRegionRadius" value="17998" />
          -- <Property name="MaxImposterRadius" value="18" />
          -- <Property name="FadeOutStartDistance" value="17998" />
          -- <Property name="FadeOutEndDistance" value="17998" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
            -- <Property value="0" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.14" />
            -- <Property name="SlopeDensity" value="0.14" />
            -- <Property name="SlopeMultiplier" value="2.5" />
            -- <Property name="MaxRegionRadius" value="9" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="63" />
            -- <Property name="FadeOutEndDistance" value="81" />
            -- <Property name="FadeOutOffsetDistance" value="5" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="1" />
            -- <Property name="FlatDensity" value="0.14" />
            -- <Property name="SlopeDensity" value="0.14" />
            -- <Property name="SlopeMultiplier" value="2.5" />
            -- <Property name="MaxRegionRadius" value="5" />
            -- <Property name="MaxImposterRadius" value="18" />
            -- <Property name="FadeOutStartDistance" value="126" />
            -- <Property name="FadeOutEndDistance" value="144" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="16" />
              -- <Property value="30" />
              -- <Property value="50" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end



--This adds the exml "context" for each model, i.e. the max scale.
function BiomeExtension(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

--Just buildings
function BiomeExtensionBuildings(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerShip" value="False" />
        <Property name="DestroyedByTerrainEdit" value="False" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

--This puts some props slightly underwater
function BiomeExtensionInWater(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-60" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

--This puts props into dense forest placement, rather than everywhere on planets
function BiomeExtensionForest(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FOREST" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

--Just grass --Floraclump
-- function AddTallSparseGrass()
-- return [[
      -- <Property value="GcObjectSpawnData.xml">
        -- <Property name="DebugName" value="" />
        -- <Property name="Type" value="Instanced" />
        -- <Property name="Resource" value="GcResourceElement.xml">
          -- <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN" />
          -- <Property name="ResHandle" value="GcResource.xml">
            -- <Property name="ResourceID" value="0" />
          -- </Property>
          -- <Property name="Seed" value="GcSeed.xml">
            -- <Property name="Seed" value="0" />
            -- <Property name="UseSeedValue" value="False" />
          -- </Property>
          -- <Property name="AltId" value="" />
          -- <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            -- <Property name="Samplers">
              -- <Property value="TkProceduralTextureChosenOptionSampler.xml">
                -- <Property name="Options">
                  -- <Property value="TkProceduralTextureChosenOption.xml">
                    -- <Property name="Layer" value="BASE" />
                    -- <Property name="Group" value="" />
                    -- <Property name="Palette" value="TkPaletteTexture.xml">
                      -- <Property name="Palette" value="Grass" />
                      -- <Property name="ColourAlt" value="Primary" />
                    -- </Property>
                    -- <Property name="OverrideColour" value="False" />
                    -- <Property name="Colour" value="Colour.xml">
                      -- <Property name="R" value="0.35" />
                      -- <Property name="G" value="0.318" />
                      -- <Property name="B" value="0.243" />
                      -- <Property name="A" value="1" />
                    -- </Property>
                    -- <Property name="OptionName" value="" />
                  -- </Property>
                -- </Property>
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
        -- <Property name="AltResources" />
        -- <Property name="ExtraTileTypes" />
        -- <Property name="Placement" value="FLORACLUMP" />
        -- <Property name="Seed" value="GcSeed.xml">
          -- <Property name="Seed" value="0" />
          -- <Property name="UseSeedValue" value="False" />
        -- </Property>
        -- <Property name="PlacementPriority" value="Low" />
        -- <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        -- <Property name="OverlapStyle" value="All" />
        -- <Property name="MinHeight" value="-1" />
        -- <Property name="MaxHeight" value="128" />
        -- <Property name="RelativeToSeaLevel" value="True" />
        -- <Property name="MinAngle" value="0" />
        -- <Property name="MaxAngle" value="180" />
        -- <Property name="MatchGroundColour" value="False" />
        -- <Property name="GroundColourIndex" value="Auto" />
        -- <Property name="SwapPrimaryForSecondaryColour" value="False" />
        -- <Property name="SwapPrimaryForRandomColour" value="False" />
        -- <Property name="AlignToNormal" value="True" />
        -- <Property name="MinScale" value="1.5" />
        -- <Property name="MaxScale" value="2.8" />
        -- <Property name="MinScaleY" value="1" />
        -- <Property name="MaxScaleY" value="1" />
        -- <Property name="SlopeScaling" value="1" />
        -- <Property name="PatchEdgeScaling" value="0.1" />
        -- <Property name="MaxXZRotation" value="0" />
        -- <Property name="AutoCollision" value="False" />
        -- <Property name="CollideWithPlayer" value="False" />
        -- <Property name="CollideWithPlayerVehicle" value="False" />
        -- <Property name="DestroyedByPlayerVehicle" value="True" />
        -- <Property name="DestroyedByPlayerShip" value="True" />
        -- <Property name="DestroyedByTerrainEdit" value="True" />
        -- <Property name="InvisibleToCamera" value="True" />
        -- <Property name="CreaturesCanEat" value="True" />
        -- <Property name="ShearWindStrength" value="0.75" />
        -- <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        -- <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          -- <Property name="ID" value="STANDARD" />
          -- <Property name="Coverage" value="0.2" />
          -- <Property name="FlatDensity" value="0.2" />
          -- <Property name="SlopeDensity" value="0" />
          -- <Property name="SlopeMultiplier" value="3" />
          -- <Property name="MaxRegionRadius" value="9999" />
          -- <Property name="MaxImposterRadius" value="30" />
          -- <Property name="FadeOutStartDistance" value="9999" />
          -- <Property name="FadeOutEndDistance" value="9999" />
          -- <Property name="FadeOutOffsetDistance" value="0" />
          -- <Property name="LodDistances">
            -- <Property value="0" />
            -- <Property value="20" />
            -- <Property value="60" />
            -- <Property value="150" />
            -- <Property value="500" />
          -- </Property>
        -- </Property>
        -- <Property name="QualityVariants">
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="STANDARD" />
            -- <Property name="Coverage" value="0.3" />
            -- <Property name="FlatDensity" value="0.25" />
            -- <Property name="SlopeDensity" value="0.25" />
            -- <Property name="SlopeMultiplier" value="1" />
            -- <Property name="MaxRegionRadius" value="30" />
            -- <Property name="MaxImposterRadius" value="30" />
            -- <Property name="FadeOutStartDistance" value="210" />
            -- <Property name="FadeOutEndDistance" value="240" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="40" />
              -- <Property value="120" />
              -- <Property value="300" />
              -- <Property value="1000" />
            -- </Property>
          -- </Property>
          -- <Property value="GcObjectSpawnDataVariant.xml">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="0.3" />
            -- <Property name="FlatDensity" value="0.25" />
            -- <Property name="SlopeDensity" value="0.25" />
            -- <Property name="SlopeMultiplier" value="1" />
            -- <Property name="MaxRegionRadius" value="30" />
            -- <Property name="MaxImposterRadius" value="30" />
            -- <Property name="FadeOutStartDistance" value="210" />
            -- <Property name="FadeOutEndDistance" value="240" />
            -- <Property name="FadeOutOffsetDistance" value="10" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="15" />
              -- <Property value="25" />
              -- <Property value="35" />
              -- <Property value="500" />
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
-- ]]
-- end

--Just grass --Floraclump
function AddGiantSparseGrass()
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.35" />
                      <Property name="G" value="0.318" />
                      <Property name="B" value="0.243" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="180" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="8" />
        <Property name="MaxScale" value="10" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.1" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerShip" value="False" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.2" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="30" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="0.25" />
            <Property name="SlopeDensity" value="0.25" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="30" />
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="210" />
            <Property name="FadeOutEndDistance" value="240" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.3" />
            <Property name="FlatDensity" value="0.25" />
            <Property name="SlopeDensity" value="0.25" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="30" />
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="210" />
            <Property name="FadeOutEndDistance" value="240" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="15" />
              <Property value="25" />
              <Property value="35" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_CustomBiomes_Med_v6.12.pak",
["MOD_AUTHOR"]				= "AGhostlyPepper aka Lasagna",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 4. TESTING = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--To use this: 1. uncomment this whole section, notice you have to be on a frozen biome for this to work (FROZENWILD.MBIN),
--2. Comment out all biome "sections" except the one you want to test, i.e. the 7 lines following "--GHOSTLY0CITY"
--3. Feel free to make your own combination, but pls test before adding them to actual custom files in step 5
--(obviously, you'll need to copy & paste an EXML file & rename it accordingly to add a new biome)

				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZENWILD.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	=
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",}, --This is to add DistantObjects section and to add custom models to it
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], ReplaceWithDistantObjectsRaw },
							-- }	
						-- },
						-- {		--replaces the added line above --ADDafterSECTION --REPLACEatLINE --ADDafterLINE
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							

							
							
							-- --X
							-- --GHOSTLY0CITY
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.0035).. --tall top collision
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0075).. --VERY wide
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012),
							
							-- --X
							-- --GHOSTLY1CITYFLOATINGISLANDS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02),
							
							-- --X
							-- --GHOSTLY2GIANTFLOWERSFLOATINGISLANDS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02),
							
							-- --X
							-- --GHOSTLY3GIANTFLOWERS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.14)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.14),
							
							-- --X
							-- --GHOSTLY4STYLIZEDTREEBIRCH
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHGREEN.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.08)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHYELLOW.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK3.SCENE.MBIN", 40, 1, 6, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK1.SCENE.MBIN", 40, 1, 6, 5, 0.18, 0.032),
							
							-- --X
							-- --GHOSTLY5STYLIZEDTREEBIRCHDEAD
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK2.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK4TALL.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032),
							
							-- --X
							-- --GHOSTLY6STYLIZEDTREEDEAD
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK5WIDE.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 2, 7, 10, 0.18, 0.025),
							
							-- --OK
							-- --GHOSTLY7STYLIZEDTREENORM1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPINK.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEDARKRED.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.17),
							
							-- --OK
							-- --GHOSTLY8STYLIZEDTREENORM2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEGREEN.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREECYAN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREERED.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13),
							
							-- --OK
							-- --GHOSTLY9STYLIZEDTREENORM3
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEBLUE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.14)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPURPLE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.17),
							
							
							-- --OK
							-- --GHOSTLY10ASTYLIZEDTREEPINE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER1HUGE.SCENE.MBIN", 10, 0.6, 1.2, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02),

							
							-- --OK
							-- --GHOSTLY10BSTYLIZEDTREEPINE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINERED.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02),

							
							
							
							
							
							
							-- --~~~```11 cont'd in landmarks below```~~~--
							
							
							
							
							
							
							
							-- --OK
							-- --GHOSTLY21ALIENFOLIAGE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", 20, 0.5, 5, 10, 0.18, 0.022)..
							-- BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", 60, 4, 21, 10, 0.18, 0.08)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER1HUGE.SCENE.MBIN", 10, 0.6, 1.2, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032),
							
							-- --OK
							-- --GHOSTLY22ALIENSWAMP1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP2_MANGROVE.SCENE.MBIN", 40, 70, 650, 10, 0.18, 0.011)..
							-- BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP3_BIGFLOWERTHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.14),
							
							-- --
							-- --GHOSTLY23ALIENSWAMP2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.045),
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",}, --This is to add DistantObjects section and to add custom models to it
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks" />]], ReplaceWithLandmarksRaw },
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							
							-- --OK
							-- --GHOSTLY11TREESBIRCH1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_GREEN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_NORMAL.SCENE.MBIN", 30, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_PURPLE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045),
							
							-- --OK
							-- --GHOSTLY12TREESBIRCH2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_BLUE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.095)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_RED.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.065),
							
							-- --OK
							-- --GHOSTLY13TREESMAPLE1.EXML
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 30, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.055),
							
							-- --OK
							-- --GHOSTLYLY14TREESMAPLE2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.065)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.095),
							
							-- --OK
							-- --GHOSTLYLY15TREESNORMAL1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045),
							
							-- --OK
							-- --GHOSTLYLY16TREESNORMAL2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.065)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.095),
							
							-- --OK
							-- --GHOSTLYLY17TREESPALM1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_BLUE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_NORMAL.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_PURPLE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.065),
							
							-- --OK
							-- --GHOSTLYLY18TREESPALM2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_YELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.11)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_RED.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.09),
							
							-- --OK
							-- --GHOSTLYLY19TREESPINE1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_PURPLE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.085)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_BLUE.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.075)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_NORMAL.SCENE.MBIN", 45, 1, 15, 10, 0.18, 0.075),
							
							-- --OK
							-- --GHOSTLYLY20TREESPINE2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_GREENISH.SCENE.MBIN", 60, 1, 18, 10, 0.18, 0.095)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_RED.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.17),
							
						-- },
					-- },
				-- },
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = 5. ADD COLLISIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------	
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG02.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG01.SCENE.MBIN",
						"MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\BARREN\LARGEPROPS\LARGEFLAG.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH.SCENE.MBIN", --ok
						--"MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", --ok
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEBUSH1.SCENE.MBIN", --ok
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE02.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE03.SCENE.MBIN", --bugged
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", --big
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN",
						--"MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN",
						--"MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN",
						--"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN",
						--"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", --"M"-shaped tree
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddBasicCollisions,
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddConstruct01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddDiploCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargePyramidCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", --big
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddLargeFir01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPanelCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantCubeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddTinyCubesCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddGiantSpikeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSquatPillar1Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAntelopeCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddAstronaut01Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddWalkerCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", --"M"-shaped tree
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSmallTree3Collisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateMainCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATESMALL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddStargateSmallCollisions,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddSailPlantCollisions,
						},
					}
				},
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = 6. CUSTOM BIOMES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------			
--This modifies the actual files in CUSTOMBIOMES
				
				--Custom biome 1
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY1CITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.001).. --tall top collision
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.001).. --VERY wide
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 2
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY2GIANTFLOWERSFLOATINGISLANDS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_ROSE.SCENE.MBIN", 60, 0.5, 2, 10, 0.18, 0.064)..
							BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_DAISY.SCENE.MBIN", 60, 0.3, 1.5, 10, 0.18, 0.084)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MYRTLEBUSH.SCENE.MBIN", 30, 3, 8, 10, 0.18, 0.04)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008)..
							AddGiantSparseGrass(),
						},
					},
				},
				--Custom biome 3
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_ROSE.SCENE.MBIN", 60, 0.5, 2, 10, 0.18, 0.064)..
							BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_DAISY.SCENE.MBIN", 60, 0.3, 1.5, 10, 0.18, 0.084)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\FERNLARGE.SCENE.MBIN", 30, 3, 8, 10, 0.18, 0.05)..
							AddGiantSparseGrass(),
						},
					},
				},
				--Custom biome 4
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHGREEN.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHYELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.084)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.04)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK3.SCENE.MBIN", 40, 1, 11, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK1.SCENE.MBIN", 40, 1, 8, 5, 0.18, 0.032),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 5
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK2.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK4TALL.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 6
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK5WIDE.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 2, 7, 10, 0.18, 0.025),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 7
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY7STYLIZEDTREENORM1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 0.8, 1.2, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 1.5, 2.0, 10, 0.18, 0.05),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 8
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY8STYLIZEDTREENORM2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 0.9, 1.1, 10, 0.18, 0.09)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 1.5, 2.0, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 9
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY9STYLIZEDTREENORM3.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI1_SHORT.SCENE.MBIN", 60, 2, 4, 10, 0.18, 0.03)..
							BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI3_TALL.SCENE.MBIN", 60, 4, 9, 10, 0.18, 0.055),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.009)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.009),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 10A
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 10B
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.1)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINERED.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.008),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 11
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_GREEN.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.055)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_NORMAL.SCENE.MBIN", 30, 1, 2, 13, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_PURPLE.SCENE.MBIN", 60, 1, 18, 10, 0.18, 0.045),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 12
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_BLUE.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.095)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_RED.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.065),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 13
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 30, 1, 13, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.055),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 14
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 7, 14, 0.18, 0.095),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 15
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 30, 1, 2, 10, 0.18, 0.055)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.045),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 16
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.095),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 17
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_BLUE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_NORMAL.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_PURPLE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.075),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 18
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_YELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.12)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_RED.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.1),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 19
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_PURPLE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.085)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_BLUE.SCENE.MBIN", 60, 1, 20, 10, 0.18, 0.075)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_NORMAL.SCENE.MBIN", 45, 1, 19, 10, 0.18, 0.075),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 20
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_GREENISH.SCENE.MBIN", 60, 1, 22, 10, 0.18, 0.095)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_RED.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.17),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 21
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", 20, 0.5, 5, 10, 0.18, 0.022)..
							BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", 60, 4, 21, 10, 0.18, 0.05)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 22
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", 60, 170, 1400, 10, 0.18, 0.04)..
							BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP2_MANGROVE.SCENE.MBIN", 40, 170, 950, 10, 0.18, 0.007)..
							BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP3_BIGFLOWERTHING.SCENE.MBIN", 60, 170, 750, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 23
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.035)..
							BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.035),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 24
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY24CITYFLOATINGISLANDS3.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.001).. --tall top collision
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.001).. --VERY wide
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 25
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY25CITYFLOATINGISLANDS4.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.001).. --tall top collision
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.001).. --VERY wide
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				
				
				
				--MOSTLY HIDDEN VANILLA ASSETS:
				--(added in v2.0)
				
				

				--Custom biome 26
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY26.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG02.SCENE.MBIN", 40, 1, 4, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG01.SCENE.MBIN", 40, 1, 3, 0, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 27
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY27.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN", 40, 1, 3, 0, 0.18, 0.02)..
							BiomeExtensionBuildings("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.006)..
							BiomeExtensionBuildings("MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP.SCENE.MBIN", 10, 1, 1.1, 0, 0.18, 0.0005),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 29
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY29.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\BARREN\LARGEPROPS\LARGEFLAG.SCENE.MBIN", 40, 1, 3, 10, 0.18, 0.03)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH.SCENE.MBIN", 10, 1, 9, 0, 0.18, 0.005)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", 10, 1, 9, 0, 0.18, 0.005),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 30
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY30.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.006)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.05),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.1),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 31
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY31.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEBUSH1.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN", 10, 0.8, 6, 0, 0.18, 0.0005)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 1.2, 1.4, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 32
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY32.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1.SCENE.MBIN", 50, 2, 2.5, 10, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 33
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY33.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.03),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 34
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY34.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN", 10, 2, 9, 0, 0.18, 0.0005)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN", 60, 2, 8, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 35
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY35.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.05),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP.SCENE.MBIN", 10, 1, 1.1, 0, 0.18, 0.0005),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 36
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY36.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 37
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY37.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 2.5, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 38
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY38.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN", 10, 0.5, 2, 0, 0.18, 0.0005)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 39
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY39.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN", 60, 1, 2, 90, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 10, 1, 1.5, 90, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 40
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY40.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN", 10, 2, 12, 10, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", 60, 2, 20, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", 20, 2, 15, 10, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 43
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY43.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN", 10, 0.7, 1.4, 0, 0.18, 0.001)..
							BiomeExtension("MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN", 10, 1, 4, 0, 0.18, 0.001)..
							BiomeExtension("MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN", 10, 1, 30, 0, 0.18, 0.02),
							--EXPERIMENTAL
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 44
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY44.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.075)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO.SCENE.MBIN", 10, 1, 9, 0, 0.18, 0.0005)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.071),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 45
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY45.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", 60, 1, 4, 12, 0.18, 0.07)..
							--BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINOSTANDARD.SCENE.MBIN", 10, 1, 12, 0, 0.18, 0.001)..-----CRASH?
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 46
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY46.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
							--BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.07) -----ONE OF THESE CAUSES CRASH
							--BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO02.SCENE.MBIN", 10, 2, 7, 0, 0.18, 0.0005)..
							--BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE2.SCENE.MBIN", 60, 1, 2.5, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 47
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY47.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 10, 1, 1.5, 90, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 48
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY48.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 49
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY49.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\GASBAGS.SCENE.MBIN", 30, 1, 10, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE.SCENE.MBIN", 30, 3, 17, 10, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 50
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY50.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\UNDERWATERTREE.SCENE.MBIN", 60, 5, 18, 10, 0.18, 0.11)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CUCUMBERSHAPE.SCENE.MBIN", 10, 2, 12, 10, 0.18, 0.05).. --HUGE PINEAPPLES
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\ANENOMESHAPE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.1),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 51
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "CUSTOMBIOMES\GHOSTLY51CITYFLOATINGISLANDS.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	=
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.001).. --tall top collision
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.001).. --VERY wide
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0035)..
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008),
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTallSparseGrass(),
						-- },
					-- },
				-- },
				
				
				
				--Custom biome 52
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY52ALLMAPLETREES.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.011)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.012)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.012),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 53
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY53ALLNORMALTREES.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 60, 1, 10, 10, 0.18, 0.012)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 9, 8, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.011),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 54
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY54.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN", 20, 2, 10, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", 30, 1, 4, 10, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 55
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY55.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 10, 3, 14, 10, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 20, 2, 4, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 56
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY56.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN", 30, 3, 30, 20, 0.18, 0.015)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM.SCENE.MBIN", 30, 2, 9, 20, 0.18, 0.015)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN", 30, 4, 40, 20, 0.18, 0.012)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN", 30, 2, 9, 20, 0.18, 0.017)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_CAVE.SCENE.MBIN", 30, 3, 15, 20, 0.18, 0.015),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 57
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY57.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, --HUGE pre-next tree
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionInWater("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 45, 75, 10, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 58
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY58.MBIN", --GIANT pre-next tree
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionInWater("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 8, 20, 10, 0.18, 0.11),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 59
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY59.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 1, 6, 10, 0.18, 0.13),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 60
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY60.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionInWater("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 3, 15, 10, 0.18, 0.09)..
							BiomeExtensionInWater("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 61
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY61.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN", 30, 1, 10, 90, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 30, 1, 4, 180, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 30, 1, 7, 10, 0.18, 0.09),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 62
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY62.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGiantSparseGrass()..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", 10, 5, 25, 0, 0.18, 0.003),
						},
					},
				},
				--Custom biome 63
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY63.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\INAIR\FLOATINGGASBAGS.SCENE.MBIN", 30, 10, 15, 10, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\LAVA\SMALLPROPS\SMALLCOMET01.SCENE.MBIN", 30, 1, 5, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 64
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY64.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\LAVA\MEDIUMPROPS\LAVACRYSTALS.SCENE.MBIN", 30, 3, 5, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", 30, 2, 11, 40, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 65
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY65.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\LIGHTNINGROCK.SCENE.MBIN", 30, 10, 30, 10, 0.18, 0.045)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\FERNLARGE.SCENE.MBIN", 30, 8, 35, 10, 0.18, 0.12)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MYRTLEBUSH.SCENE.MBIN", 30, 7, 32, 10, 0.18, 0.13),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 66
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY66.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\UNDERWATER\SEAURCHIN.SCENE.MBIN", 30, 15, 25, 10, 0.18, 0.045)..
							BiomeExtensionInWater("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 8, 20, 10, 0.18, 0.11),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				
				--Added in v4.0:
				
				--Custom biome 67
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY67.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLANTERN.SCENE.MBIN", 40, 3, 5, 0, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST.SCENE.MBIN", 10, 4, 6, 5, 0.18, 0.03)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", 60, 2, 5, 10, 0.18, 0.075),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 68
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY68.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF.SCENE.MBIN", 30, 8, 24, 10, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CAVE\SMALLPROP\SMALLGLOWPLANT.SCENE.MBIN", 30, 20, 30, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddWeirdGrass("BUBBLELUSHGRASS"),
						-- },
					},
				},
				--Custom biome 69
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY69.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ABANDONED\LIGHT_1.SCENE.MBIN", 40, 4, 5, 5, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ABANDONED\LIGHT_3.SCENE.MBIN", 40, 30, 40, 5, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYSHELLSAND.SCENE.MBIN", 10, 6, 10, 5, 0.18, 0.04),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddWeirdGrass("BUBBLELUSHGRASS"),
						-- },
					},
				},
				--Custom biome 70
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY70.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 20, 25, 10, 0.18, 0.015)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY.SCENE.MBIN", 30, 20, 25, 10, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLANTERN.SCENE.MBIN", 40, 4, 6, 0, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddWeirdGrass("BUBBLELUSHGRASS"),
						-- },
					},
				},
				--Custom biome 71
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY71.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\UNDERWATER\SEAURCHIN.SCENE.MBIN", 30, 10, 15, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", 60, 3, 5, 10, 0.18, 0.06).. --********************
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT.SCENE.MBIN", 60, 6, 9, 10, 0.18, 0.015),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 72
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY72.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\COOKING\ALOEFLESH.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREBERRY.SCENE.MBIN", 30, 15, 30, 10, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 73
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY73.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\COOKING\HEPTAWHEAT.SCENE.MBIN", 30, 25, 40, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 74
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY74.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\COOKING\IMPULSEBEANS.SCENE.MBIN", 30, 15, 30, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\COOKING\SWEETROOT.SCENE.MBIN", 60, 8, 12, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 75
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY75.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BERRYPLANT.SCENE.MBIN", 30, 25, 40, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\COMMODITYPLANT2.SCENE.MBIN", 60, 3, 6, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", 60, 2, 3, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 76
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY76.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\COMMODITYPLANT1.SCENE.MBIN", 30, 25, 30, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT.SCENE.MBIN", 60, 8, 12, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", 60, 2, 3, 10, 0.18, 0.03), 
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 77
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY77.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\HEALTHPLANT2.SCENE.MBIN", 30, 30, 40, 10, 0.18, 0.015)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT.SCENE.MBIN", 60, 3, 4, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\EXPLODEPLANT.SCENE.MBIN", 60, 1, 1.2, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 78
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY78.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF.SCENE.MBIN", 30, 40, 50, 10, 0.18, 0.01).. --HUGE HD lush tree
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\BARREN\PLANTS\THINBUSHTREE.SCENE.MBIN", 60, 3, 5, 10, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 79
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY79.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\HQLUSH\HQTREES\HQTREEREF.SCENE.MBIN", 30, 8, 20, 10, 0.18, 0.02).. --Giant HD lush tree
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\HQLUSH\LARGEPROPS\MOSSCOVEREDWEIRDPROP.SCENE.MBIN", 60, 2, 3, 5, 0.18, 0.03),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 80
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY80.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\WOODLAND\LARGEPLANT\MEDIUMOAK1.SCENE.MBIN", 60, 7, 9, 10, 0.18, 0.05)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\HQFROZEN\LARGEPROPS\LARGEICEROCK_1.SCENE.MBIN", 60, 15, 20, 20, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 81
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY81.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST.SCENE.MBIN", 10, 5, 7, 5, 0.18, 0.03)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYSHELLSAND.SCENE.MBIN", 10, 2, 3, 5, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 82
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY82.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", 60, 3, 4, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\SMALLGLOWINGTREE1.SCENE.MBIN", 60, 2, 3, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\LIVINGSHIP\LARGE\ARRAYTWIST.SCENE.MBIN", 10, 7, 9, 5, 0.18, 0.02),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 83
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY83.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\GLOWING\LARGEPLANT\MEDGLOWINGTREE1.SCENE.MBIN", 60, 40, 50, 10, 0.18, 0.0075)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\GLOWING\MEDIUMPLANT\MEDGLOWINGBUSH1.SCENE.MBIN", 60, 2, 3, 10, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BERRYPLANT.SCENE.MBIN", 30, 20, 25, 10, 0.18, 0.03),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 84
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY84.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN", 40, 20, 30, 0, 0.18, 0.006).. --*************floating
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\ROTATINGDETAIL.SCENE.MBIN", 60, 15, 20, 5, 0.18, 0.1)..   --**************tiny
							BiomeExtension("MODELS\PLANETS\BIOMES\CAVE\SMALLPLANT\CAVEGROUNDLEAVES.SCENE.MBIN", 60, 3, 4, 10, 0.18, 0.11),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 85
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY85.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT.SCENE.MBIN", 60, 6, 12, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\SAILPLANT.SCENE.MBIN", 40, 10, 15, 0, 0.18, 0.015).. --*************floating
							BiomeExtension("MODELS\PLANETS\BIOMES\LAVA\MEDIUMPROPS\LAVACRYSTALS.SCENE.MBIN", 30, 2, 4, 10, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddWeirdGrass("BUBBLELUSHGRASS"),
						-- },
					},
				},
				--Custom biome 86
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY86.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionForest("MODELS\PLANETS\BIOMES\LAVA\MEDIUMPROPS\MEDSHARDINACTIVE01.SCENE.MBIN", 60, 6, 7, 10, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\BARREN\HQ\TREES\CACTUSLRG.SCENE.MBIN", 60, 25, 30, 10, 0.18, 0.01)..
							BiomeExtension("MODELS\PLANETS\BIOMES\BARREN\PLANTS\TRUNK.SCENE.MBIN", 60, 2, 4, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				--Custom biome 87
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY87.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PLAQUE\PLAQUEWARRIOR.SCENE.MBIN", 10, 2, 8, 0, 0.18, 0.05)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\TREES\SKINNEDTREES.SCENE.MBIN", 60, 12, 15, 10, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\BARREN\PLANTS\TRUNK.SCENE.MBIN", 60, 2, 4, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddScrubGrass(),
						-- },
					},
				},
				--Custom biome 88
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY88.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATEMAIN.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.02).. --**************HUGE
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\STARGATESMALL.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.05)..
							BiomeExtensionForest("MODELS\PLANETS\BIOMES\COMMON\TREES\SKINNEDTREES.SCENE.MBIN", 60, 20, 25, 10, 0.18, 0.007),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},
				--Custom biome 89
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY89.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\BONESPIRE\BONESEED.SCENE.MBIN", 30, 2, 4, 10, 0.18, 0.032).. --GLOWING TENDRILS
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\BEAMSTONE\BURSTC.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\CONTOUR\CONTOUROBJECT.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\ELBUBBLE\ELBUBBLE.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\FRACTALCUBE\SHAPE1FLOAT.SCENE.MBIN", 40, 1, 1.2, 10, 0.18, 0.032).. --BIG
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\HEXAGON\MEDGEOMETRIC.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\HYDROGARDEN\HYDROPOD.SCENE.MBIN", 30, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\IRRISHELLS\SHELLSHELF.SCENE.MBIN", 50, 1, 1.2, 10, 0.18, 0.032).. --BIG
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\MSTRUCTURES\SINGLEJOINT.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\SHARDS\SHARD.SCENE.MBIN", 30, 2, 4, 10, 0.18, 0.032)..
							BiomeExtension("MODELS\PLANETS\BIOMES\WEIRD\WIRECELLS\WIRECELLFLOATCUBE.SCENE.MBIN", 50, 2, 4, 10, 0.18, 0.032),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				
				
				
				--NEW:
				
				
							--BIOMES 90
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW90.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_ROSE.SCENE.MBIN", 60, 0.5, 2, 10, 0.18, 0.064)..
							BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_DAISY.SCENE.MBIN", 60, 0.3, 1.5, 10, 0.18, 0.084)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MYRTLEBUSH.SCENE.MBIN", 30, 7, 16, 10, 0.18, 0.04)..
							AddGiantSparseGrass(),
						},
					},
				},

							--BIOMES 91
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW91.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_ROSE.SCENE.MBIN", 60, 10, 30, 10, 0.18, 0.015)..
							BiomeExtension("CUSTOMMODELS\NEWHQPLANTS\HQFLOWER_DAISY.SCENE.MBIN", 60, 0.5, 1.5, 10, 0.18, 0.064)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\FERNLARGE.SCENE.MBIN", 30, 8, 18, 10, 0.18, 0.05)..
							AddGiantSparseGrass(),
						},
					},
				},

							--BIOMES 92
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW92.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_BAMBOO1.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.06)..
							BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_BAMBOO2_WIDE.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.05),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 93
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW93.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_GREEN_1_BIG.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.064)..
							BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_GREEN_2.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.074),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 94
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW94.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI1_SHORT.SCENE.MBIN", 60, 2, 4, 10, 0.18, 0.03)..
							BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI3_TALL.SCENE.MBIN", 60, 4, 9, 10, 0.18, 0.055),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 95
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW95.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI4_MED.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.035)..
							BiomeExtension("CUSTOMMODELS\NEWHQTREES\HQTREE_MULTI4_MED.SCENE.MBIN", 60, 4, 9, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 96
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW96.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWSHROOMS\MUSHROOM1_TALL.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 97
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW97.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWSHROOMS\MUSHROOM2_TALL.SCENE.MBIN", 60, 6, 12, 10, 0.18, 0.02)..
							BiomeExtension("CUSTOMMODELS\NEWSHROOMS\MUSHROOM1_TALL.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.06),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 98
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW98.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE1_ORANGE.SCENE.MBIN", 60, 0.07, 0.12, 10, 0.18, 0.07)..
							BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE3_RED.SCENE.MBIN", 60, 0.05, 0.1, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 99
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW99.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE4_UV.SCENE.MBIN", 60, 0.03, 0.08, 10, 0.18, 0.05)..
							BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE2_PINK.SCENE.MBIN", 60, 0.05, 0.1, 10, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 100
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW100.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE5_BLUE.SCENE.MBIN", 60, 0.15, 0.2, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE5_BLUE.SCENE.MBIN", 60, 0.05, 0.08, 10, 0.18, 0.045),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},


							--BIOMES 101
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW101.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE2_PINK.SCENE.MBIN", 60, 0.04, 0.06, 10, 0.18, 0.04)..
							BiomeExtension("CUSTOMMODELS\NEWTREESCOL\COLTREE2_PINK.SCENE.MBIN", 60, 0.17, 0.25, 10, 0.18, 0.055),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				
				
							--BIOMES 102
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW102.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.035)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 1, 6, 10, 0.18, 0.13),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 103
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW103.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\REFLECTSHROOM\REFLECTSHROOM.SCENE.MBIN", 60, 0.5, 0.75, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", 30, 1, 6, 10, 0.18, 0.13),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
							
							--BIOMES 104
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW104.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\ROCKDOOR\ROCKDOOR.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.02)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.008),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddTheGrass("CROSSGRASS"),
						-- },
					},
				},

							--BIOMES 105
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW105.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TALLPINETREES\TALLPINETREEBIG.SCENE.MBIN", 60, 2, 4, 10, 0.18, 0.12)..
							BiomeExtension("CUSTOMMODELS\TALLPINETREES\TALLPINETREESMALL.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.14),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddGrassShort(),
						-- },
					},
				},
				
							--BIOMES 106
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW106.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTAL.SCENE.MBIN", 30, 20, 40, 20, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONESMALL.SCENE.MBIN", 30, 3, 7, 20, 0.18, 0.08),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddWeirdGrass("BUBBLELUSHGRASS"),
						-- },
					},
				},
							
							
							
							
							--BIOMES 107
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYNEW107.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALDRONE.SCENE.MBIN", 30, 8, 24, 20, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\SENTINELCRYSTALSMALL.SCENE.MBIN", 30, 20, 40, 20, 0.18, 0.07),
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = AddSecondaryGrass("CROSSGRASS"),
						-- },
					},
				},
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				--v5.61: To change original dandelion grass material flags (= multishade & white dandelion)
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS\LUSHGRASS1MAT1.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--Replace material flags:
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["ADD"] = replaceGrassMatFlags,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Flags",},
							["REMOVE"] = "SECTION"
						},
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\NEWCROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{



						--REMOVE new grass_curly option (no old version of this model)
						
						{
							["SPECIAL_KEY_WORDS"] = {"Id","_GRASS_CURLY",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{


						--Reorder descriptor to match newcrossgrass
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["ADD"] = replaceCGDesc,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["REMOVE"] = "SECTION"
						},

					},
				},

				
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE