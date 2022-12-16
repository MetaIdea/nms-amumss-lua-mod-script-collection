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


ReplaceWithDistantObjectsRaw = 
[[
    <Property name="DistantObjects">
    </Property>
]]

ReplaceWithLandmarksRaw = 
[[
    <Property name="Landmarks">
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
        <Property name="ScaleX" value="0.24" />
        <Property name="ScaleY" value="4.113077" />
        <Property name="ScaleZ" value="0.24" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
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
--------------------------------- v The below section is from Shaidak's Generation (*** = Ghostly comment) v -------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

local ScaleHugeMultiplierBig = 7
local DensityMediumMultiplierBig = 0.62 --Caution: raising this over 1 will break some planets
local DensityLowestMultiplierBig = 0.55
local DensityLowMultiplierBig = 0.59

local ScaleHugeMultiplierSmall = 4
local DensityMediumMultiplierSmall = 0.62
local DensityLowestMultiplierSmall = 0.52
local DensityMedLowMultiplierSmall = 0.59

--

local DensityHighestMultiplier = 0.86
local DensityMedHighMultiplier = 0.65
local DensityMediumMultiplier = 0.62 --Caution: raising this over 1 will break some planets
local DensityLowMultiplier = 0.59
local DensityLowestMultiplier = 0.55

local minHeightAboveWater = -1
local maxHeightAboveWater = 128

--local DestroyedByPlayerShip = "False"

local ScaleHugeMultiplier = 9
local ScaleLargeMultiplier = 4 		--misc. outlier values
local ScaleMediumMultiplier = 2.2 	--grass, bushes, etc. (2.2 so tall grass doesn't hit eyes on uphill climb)
local ScaleSmallestMultiplier = 1.5

local DensitySHADOWLowMultiplier = 0.95 --Caution: raising this will break some planets
local DensityDETAILLowestMultiplier = 0.9 --Caution: raising this will break some planets
local DensityGRASSLowestMultiplier = 0.4

local DensityPointSevenMultiplier = 0.7 --Caution: raising this will break some planets
local DensityPointEightMultiplier = 0.8 --Caution: raising this will break some planets

local MaxAngleLarge = 80 			--i.e. cactus, rocks
local MaxAngleSmall = 60 			--i.e. trees, largest objects
local MaxAngleDetailObjects = 90
local MaxAngleGrass = 180

local LargeObjectCoverageGrassAlwaysPlace = "AlwaysPlace"

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section below, modified by Lasagna (--*** = lasagna comments)----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--METADATA\SIMULATION\SOLARSYSTEM\BIOMES\*
local RadiusMultiplier = 3			--objects draw distance multiplier (limited by engine's hard-limit)
local RadiusMultiplierLow = 2 					--***float = errors
local LodDistancesMultiplierFarGrass = 2 --GRASS draw distance multiplier
local LodDistanceMultiplierDistantObjects = 2 	--***i.e. big rings/huge objects
local LodDistanceMultiplierLandmarks = 2 			--***i.e. trees/biome plants (unchanged rn)
local LodDistanceMultiplierLow = 1.5 				--***i.e. high detailobjects biomes, like toxic
local LodDistanceMultiplierLowest = 1.1 			--***i.e. HQ biomes that already have high LODD
local LodDistanceMultiplierHQUltraForest = 0.1    --***just hq forest
local CoverageMultiplier = 0.66			--object placement coverage multiplier (object density) --***needed to work

--GCGRAPHICSGLOBALS.GLOBAL
local ForceUncachedTerrain = "True"	--fix slow terrain textures loading (default = false)
local ShadowLengthMultiplier = 3	--shadows draw distance multiplier --***needed to work

--GCENVIRONMENTGLOBALS.GLOBAL
local LODAdjustMultiplier = 2		--inconsistent results
local RegionLODRadiusAdd = 3			--increases draw distance hard-limit, value above '3' caused crash
local PlanetLODMultiplier = 3		--planet lod distance multiplier

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section above, modified by Lasagna -------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

-- Density = {
	-- HighE				= 0.048,
	-- HighD				= 0.042,
	-- HighC				= 0.038,
	-- HighB				= 0.032,
	-- HighA				= 0.028,
	-- Mid					= 0.024,
	-- LowA				= 0.020,
	-- LowB				= 0.018,
	-- LowC				= 0.012,
	-- LowD				= 0.009,
	-- LowE				= 0.006,
	-- LowF				= 0.003,
	-- LowG				= 0.0015,
-- }

-- MaxAngle = {
	-- Inv					= 180,
	-- AvA					= 60,
	-- AvB					= 55,
	-- AvC					= 50,
	-- AvD					= 45,
	-- AvE					= 40,
	-- AvF					= 35,
-- }

-- Scale = {
	-- LargeE				= { 6, 9, },
	-- LargeD				= { 5, 8, },
	-- LargeCE				= { 4, 9, },
	-- LargeC				= { 4, 6, },
	-- LargeB				= { 3, 5, },
	-- LargeA				= { 2, 3, },
	-- NormalA				= { 1, 3, },
	-- Normal				= { 1, 2, },
	-- SmallA				= { 0.6, 1.4, },
-- }

-- Mod = {
	-- -----------------------------------------------------------------------------------------------------------------------------------------
	-- Template	= "Highest", --***Type in your preference here. Five options: Highest, High, Medium, Low, or Lowest. Capitalization matters
							 -- --the above changes FlatDensity, which AFAIK is how many props spawn on flat terrain (highest = highest density)
	-- -----------------------------------------------------------------------------------------------------------------------------------------
	-- DensityThreshold = {
		-- High			= Density.HighB,
		-- Mid				= Density.LowA,
		-- Low				= Density.LowC,
	-- },

	-- DensityModifier = {
		-- High			= 0.008,
		-- Mid				= 0.004,
		-- Low				= 0.001,
	-- },

	-- Preset = {
		-- Lowest			= 4,
		-- Low				= 3,
		-- Medium			= 2,
		-- High			= 1,
		-- Highest			= 0,
	-- },
-- }
--------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------- ^ The above section is from Shaidak's Generation ^ ------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = 2. UNUSED FUNCTION = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------




-- --Function calls appear next to EXML_CHANGE_TABLE for all biomes. UNUSED.

-- local function BiomeModification(modelPath2,
					-- placement2, priority2, coverage2, flatDensity2, maxRotation2, minScale2, maxScale2) --minScale1
	
	-- ----------------------------------------------------------------------------------------------------------------------------------------------
	-- --The below section is from Shaidak's Generation (modified)-----------------------------------------------------------------------------------
	-- ----------------------------------------------------------------------------------------------------------------------------------------------
	-- local presetValue = Mod.Preset[Mod.Template]
	-- local densityModifier = 0
	-- local maxAngle2 = 50

	-- if flatDensity2 > Mod.DensityThreshold.High then
		-- densityModifier = Mod.DensityModifier.High * presetValue
	-- elseif flatDensity2 > Mod.DensityThreshold.Mid then
		-- densityModifier = Mod.DensityModifier.Mid * presetValue
	-- elseif flatDensity2 > Mod.DensityThreshold.Low then
		-- densityModifier = Mod.DensityModifier.Low * presetValue
	-- end

	-- flatDensity2 = flatDensity2 - densityModifier
	
	
	-- if maxScale2 <= Scale.Normal[2] then
		-- maxAngle2 = MaxAngle.AvA
	-- elseif maxScale2 <= Scale.LargeA[2] then
		-- maxAngle2 = MaxAngle.AvB
	-- elseif maxScale2 <= Scale.LargeC[2] then
		-- maxAngle2 = MaxAngle.AvC
	-- else
		-- maxAngle2 = MaxAngle.AvD
	-- end
	

	
	-- biomeModifier =
	-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["VALUE_MATCH"] 		= "", 
							-- ["INTEGER_TO_FLOAT"] = "FORCE",
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"SlopeMultiplier",	0.0001}, --will affect lowest planet quality setting
								-- {"SlopeDensity",	flatDensity2},			--i.e. 0
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["VALUE_MATCH"] 		= "", 
							-- --["INTEGER_TO_FLOAT"] = "FORCE",
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Seed",	0},
								-- {"AltId",	""},
								-- {"ProceduralTexture",	"TkProceduralTextureChosenOptionList.xml"},
								-- {"UseSeedValue",	"False"},
								-- {"LargeObjectCoverage",	"DoNotPlaceClose"},
								-- {"OverlapStyle",	"None"},
								-- {"MinHeight",	-1},
								-- {"MaxHeight",	128},
								-- {"RelativeToSeaLevel",	"True"},
								-- {"MinAngle",	0},
								-- {"MinRegionRadius",	0},
								-- {"MaxRegionRadius",	3},
								-- {"MaxImposterRadius",	99}, --will affect lowest planet quality setting
								-- {"FadeInStartDistance",		0},
								-- {"FadeInEndDistance",		0},
								-- {"FadeInOffsetDistance",	0},
								-- {"FadeOutOffsetDistance",	0},
								-- {"MatchGroundColour",	"False"},
								-- {"GroundColourIndex",	"Auto"},
								-- {"AlignToNormal",	"False"},
								-- {"MinScaleY",	1},
								-- {"MaxScaleY",	1},
								-- {"SlopeScaling",	1},
								-- {"AutoCollision",	"False"},
								-- {"CollideWithPlayer",	"True"},
								-- {"CollideWithPlayerVehicle",	"True"},
								-- {"DestroyedByPlayerVehicle",	"True"},
								-- {"DestroyedByPlayerShip",	"True"},
								-- {"DestroyedByTerrainEdit",	"True"},
								-- {"InvisibleToCamera",	"True"},
								-- {"CreaturesCanEat",	"False"},
								-- {"ShearWindStrength",	0},
								-- {"DestroyedByVehicleEffect",	"VEHICLECRASH"},
								-- {"Filename",						modelPath2}, 			--i.e. "MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN"
								-- {"Placement",						placement2}, 			--i.e. "FLORACLUMP"
								-- {"PlacementPriority",				priority2}, 			--i.e. "Normal"
								-- {"Coverage",						coverage2}, 			--i.e. 0.2
								-- {"FlatDensity",						flatDensity2}, 			--i.e. 0.5
								-- {"MaxAngle",						maxAngle2}, 			--i.e. 60
								-- {"MaxXZRotation",					maxRotation2}, 					--i.e. 0
								-- {"PatchEdgeScaling",				0}, 		--i.e. 0.1
								-- {"MinScale",						minScale2}, 			--i.e. 0.4
								-- {"MaxScale",						maxScale2}, 			--i.e. 0.6
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["VALUE_MATCH"] 		= "", 
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+1",     --one line down
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	0}
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+2",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	20} --All these = *2
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+3",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	60}
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+4",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	150} 
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+5",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	500}
							-- }
						-- },
						
						
						
						-- --{
							-- --["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks","GcObjectSpawnData.xml"},
							-- --["REMOVE"] 				= "SECTION",
						-- --},
	-- }
-- return biomeModifier
-- end


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = 3. USED FUNCTIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
function AddGrass()
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
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
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
        <Property name="MaxAngle" value="90" />
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.75" />
        <Property name="MaxScale" value="2.47" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="1" />
          <Property name="FlatDensity" value="0.14" />
          <Property name="SlopeDensity" value="0.14" />
          <Property name="SlopeMultiplier" value="2.5" />
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="18" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.14" />
            <Property name="SlopeDensity" value="0.14" />
            <Property name="SlopeMultiplier" value="2.5" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="63" />
            <Property name="FadeOutEndDistance" value="81" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="1" />
            <Property name="FlatDensity" value="0.14" />
            <Property name="SlopeDensity" value="0.14" />
            <Property name="SlopeMultiplier" value="2.5" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="18" />
            <Property name="FadeOutStartDistance" value="126" />
            <Property name="FadeOutEndDistance" value="144" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

--Thes two function (from Env_Maxima & Minima)modifies vanilla files (unpacked & copied after every major update to CUSTOMBIOMES folder)
local function BiomesOneTwoThreeModifier(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STANDARD",},
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks",},
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						--REPLACE:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"},
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						--MULTIPLY:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							--REPLACE (to correct non-lush/frozen planets density)
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",			    2.47},
								{"Coverage",			    1},
								{"FlatDensity",			    0.14},
								{"SlopeDensity",			0.14},
								{"SlopeMultiplier",			1.25},
							}
						},
						--LODDISTANCES:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BLANKETCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"SPARSECLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BLANKETCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"SPARSECLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BLANKETCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"SPARSECLUMP" }
							-- }
						-- },
						-- --FOREST -> FLORACLUMP
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "FOREST",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "FOREST",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "FOREST",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- --ROCKCLUMP -> FLORACLUMP
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "ROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "ROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "ROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						
						-- --GRASSCLUMP -> FLORACLUMP
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "GRASSCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "GRASSCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "GRASSCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						
						-- --BARRENROCKCLUMP -> FLORACLUMP
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							-- ["REPLACE_TYPE"] 		= "ALL", 
							-- ["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {						
								-- { "Placement",	"FLORACLUMP" }
							-- }
						-- },
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE LANDMARKS TO DISTANTOBJECTS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						-- --If DistanceObjects section is closed, replace it to make it open
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], [[    <Property name="DistantObjects">]] },
							-- }	
						-- },
						
					-- --THEN DO:
					
						-- --If DistanceObjects was open already (and had a closing </Property>), deletes closing line (above "Landmarks")
						-- -- {
							-- -- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- -- ["LINE_OFFSET"] 		= "-1",     --one line up
							-- -- ["REPLACE_TYPE"] 		= "RAW",
							-- -- ["VALUE_CHANGE_TABLE"] 	= 
							-- -- {
								-- -- { [[    </Property>]], [[]] },
							-- -- }	
						-- -- },
					
					-- --THEN DO:
					
						-- --If Landmarks section is open, remove it so DistanceObjects takes over that section
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",},
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks">]], [[]] },
							-- }	
						-- },
						
						-- --Not possible: DistanceObjects == closed && Landmarks == closed
						-- --Not possible: DistanceObjects == open && Landmarks == closed
						
						-- --Add closed Landmarks line after DistantObjects, otherwise error:
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects"},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] 	= [[    <Property name="Landmarks" />]]
						-- },
	}
return biomeModifier
end

local function BiomesOneTwoThreeModifierUnderwaterCave(DensityCustom1, DensityCustom2, DensityCustom3, DensityCustom4)
	local biomeModifier =
	{
						{
							["MATH_OPERATION"] 		= "*", --8 = HQTREE17, --9 = HQTREE10 --10 = HQTREE63
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --8 = HUGEPLATFORMROCK-barren-, --20 = HUGESPIKEROCK,
							["VALUE_MATCH"] 		= "4.1", --5 = FERNLARGEALT-swamp-, HQTREEREF-swamp-
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_CHANGE_TABLE"] 	= --6 = --YUKKA-swamp-, FERNLIGHT-swamp-
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --CACTUSSML, SMALLSHROOMCLUSTER-swamp-, 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**GRAVELPATCHSNOWBLEND, GRAVELPATCHSANDBLEND
							["VALUE_MATCH"] 		= "4", --LARGESNOWBLENDROCK, LARGESANDBLENDROCK, MEDIUMBOULDER01-toxicinfested-
							["VALUE_CHANGE_TABLE"] 	=     --FUNGALTREE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.8",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.7",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.6",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMBLUESHROOM-toxicinfested-
							["VALUE_MATCH"] 		= "3.5", --GRAVELPATCHSNOWBLEND**
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.4",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.3", --MANGROVELARGEFULL
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	DensityCustom1 }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.2",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "3.1",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGEVOLCANO, LARGESHARDINACTIVE02-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --DEADTREE-swamp-, LARGEMOSSROCK-swamp-
							["VALUE_MATCH"] 		= "3", --3 = HEROPINE, LARGESNOWBLENDROCK, LARGESANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	=  --MEDIUMBOULDER02-toxicinfested-, SMALLTENDRIL-toxicinfested-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier } --v1.8: changed from small, caused giant rocks on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.9",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.8", --MANGROVELARGE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectsmid-
							["VALUE_MATCH"] 		= "2.7", --SKINNYPINE, RADIOACTIVETREE
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.6", --FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FUNGALTREE
							["VALUE_MATCH"] 		= "2.5", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2.4", --LARGEROCK-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --HQTREEREF-lushobjectslow-
							["VALUE_MATCH"] 		= "2.3", --STARJOINT, MEDIUMDEADTREE01-lava-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleHugeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --SMALLJOINT
							["VALUE_MATCH"] 		= "2.2", --2.2 = TALLPINE, HQTREEREF-lushobjectsmed-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --PROCSHAPE1-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --TOXICGRASS-radioactive-
							["VALUE_MATCH"] 		= "2.1", --RADIOACTIVETREE, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	=      --MEDIUMROCK-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMSHROOM-swamp-, MEDIUMSPIRE-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, LARGEROCK, GROUNDREVEALROCK01
							["VALUE_MATCH"] 		= "2", --MEDIUMSNOWBLENDROCK, MEDIUMSANDBLENDROCK, FROZENGRASSLARGE, BEAMSTONE
							["VALUE_CHANGE_TABLE"] 	=    --SMALLERODEPLANT-toxicinfested-, SMALLBOULDER-""-, BUBBLELUSHGRASS-""-
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "1.9", --MEDIUMPLANT-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  --SMALLPLANT-lushobjectslow-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEPLANT, **MEDIUMROCK
							["VALUE_MATCH"] 		= "1.8", --LARGETREEBARE, **MEDIUMPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --Changed in v1.8 - caused huge flowers everywhere
							}
						},
						{
							["MATH_OPERATION"] 		= "*",  
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.75", --SPRIGBUSH-barrenhqobjectsfull-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --HQFLOWERCACTUS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGETUBEROCK-radioactive-, LARGESPIKEROCK--radioactive-
							["VALUE_MATCH"] 		= "1.7", --**MEDIUMBUSH, FUNGALTREE-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --SMALLFLOWERS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FERNLIGHT, **LARGEROCK, LARGEPLANT-lushobjectslow-
							["VALUE_MATCH"] 		= "1.6", --**MEDIUMBUSH, GROUNDFLOWER-barren-, **SMALLROCK
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGESNOWBLENDROCK, MEDIUMPLANT, **SCRUBBUSH, NEWCROSSGRASS-lushobjectsmid-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --**MEDIUMROCK, --YARROW-flower-, MEDIUMSTEAMER--radioactive-
							["VALUE_MATCH"] 		= "1.5", --1.5=GRASS, GRASSCLUMP, **NEWCROSSGRASS
							["VALUE_CHANGE_TABLE"] 	= --HUGEBEAM, **LARGEROCK, LARGESANDBLENDROCK, FRAGMENTS, TOXICGRASS-toxicinfested-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", 
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "1.43", --TENDRIL-toxic-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleLargeMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --MEDIUMJELLYPLANT, SCRUBBUSH, **MEDIUMBUSH
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --MEDIUMROCKS, LARGEROCK-laval-, CURVEDROCK-radioactive-
							["VALUE_MATCH"] 		= "1.4", --**MOUNTAINROCK_1, LARGEICEROCK_1, LARGEROCKSTACK_1
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --FERNLIGHT, LAVAGEMS, VOLUMEBUSH-lava-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --YARROW-flower-, MEDIUMJELLYPLANT-radioactive-
							["VALUE_MATCH"] 		= "1.3", --SCABIOUS-flower-, **SCRUBGRASS, 
							["VALUE_CHANGE_TABLE"] 	=   --MEDIUMROCK-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --NEWSCRIBGRASS-barrenhqobjectsfull-
							["VALUE_MATCH"] 		= "1.25", --SINGLEJOINT-weird-
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleMediumMultiplier } --v1.8 - changed from medium, caused huge grass on barren planets
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --LARGETREEBARE, MEDIUMROCK, MEDIUMGROWTHS-radioactive-
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --FROZENBUSHYGRASS, **SCRUBGRASS, SMALLBOULDER
							["VALUE_MATCH"] 		= "1.2", --MEDIUMBOULDER02, **SMALLROCK, **BUTTERCUP
							["VALUE_CHANGE_TABLE"] 	=    --TALLGRASSBILLBOARD-toxicinfested-, SPONGE-toxic-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --LARGEROCK-lushobjectslow-
							["VALUE_MATCH"] 		= "1.15", --**MEDIUMROCK, SMALLPLANT
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "MaxScale",	ScaleSmallestMultiplier }
							}
						},
						{
							["MATH_OPERATION"] 		= "*", --1.1 = SCABIOUS-flower-, FERN, SNOWCLUMP, SMALLSNOWCLUMPS, SMALLROCK, SMALLROCKCLUMP, MOSSHUT, LAVACLUMP, LAVAGEMS
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL", --1 = TALLGRASSBILLBOARD, CURVEDMEDIUM-radioactive-, MEDIUMBOULDER02, **SMALLROCK
							["VALUE_MATCH"] 		= "1.1",--0.5 = LEAFDROPLET-lava-
							["VALUE_MATCH_OPTIONS"] = "<=",--0.6 = TALLGRASSBILLBOARD, MEDIUMJELLYPLANT-radioactive-
							["VALUE_CHANGE_TABLE"] 	=      --0.8 = MOUNTAINROCK_1, **TALLGRASSBILLBOARD, SCRUBGRASS, GROUNDFLOWER--radioactive-
							{						
								{ "MaxScale",	ScaleMediumMultiplier }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- b. COVERAGE/DENSITY CHANGES ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom2},
								{"FlatDensity", DensityCustom2},
								{"SlopeDensity",	DensityCustom2},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityMediumMultiplier},
								{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom3},
								{"FlatDensity", DensityCustom3},
								{"SlopeDensity",	DensityCustom3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	DensityCustom4},
								{"FlatDensity", DensityCustom4},
								{"SlopeDensity",	DensityLowMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- c. DESTROYED BY SHIP/MAX ANGLE/ETC -----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleSmall},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
								{"MinRegionRadius",			"0"}, ----IR:
								{"FadeInStartDistance",		"0"},
								{"FadeInEndDistance",		"0"},
								{"FadeInOffsetDistance",	"0"},
								{"FadeOutOffsetDistance",	"0"}  ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["VALUE_MATCH"] 		= "", 
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"DestroyedByPlayerShip",	DestroyedByPlayerShip},
								{"MaxAngle",				MaxAngleLarge},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- d. REGION/IMPOSTER/FADE OUT ------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] 		= "9999",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			RadiusMultiplier}, ----IR:
								{"MaxImposterRadius",		RadiusMultiplier},
								{"FadeOutStartDistance",	RadiusMultiplier},
								{"FadeOutEndDistance",		RadiusMultiplier}, ----
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"Coverage",	DensityMediumMultiplier},
								--{"FlatDensity", DensityMediumMultiplier},
								--{"SlopeDensity",	DensityMediumMultiplier},
							}	
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- e. LOD DISTANCES/ULTRA INVISIBLE BUG FIX: (code originally by InsaneRuffles *** = lasagna comments) ------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",    	--multiply the value at the offset by LodDistanceMultiplierDistantObjects
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierDistantObjects}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistanceMultiplierLandmarks}
							}
						},
						--REPLACE:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchEdgeScaling",		"0"},
								--{"Placement",				"GRASS"},
								{"MaxAngle",				90},
								{"LargeObjectCoverage",		"AlwaysPlace"},
							}
						},
						--MULTIPLY:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRegionRadius",			1.8},
								{"MaxImposterRadius",		1.8},
								{"FadeOutStartDistance",	1.8},
								{"FadeOutEndDistance",		1.8},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							--REPLACE (to correct non-lush/frozen planets density)
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxScale",			    2.47},
								{"Coverage",			    1},
								{"FlatDensity",			    0.14},
								{"SlopeDensity",			0.14},
								{"SlopeMultiplier",			1.25},
							}
						},
						--LODDISTANCES:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	LodDistancesMultiplierFarGrass}
							}
						},
						--REMOVE BIGGEST CORAL ROCK IN THE GAME:
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "",
							["REMOVE"] = "SECTION",
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- f. PLACEMENT/PLACEMENT PRIORITY --------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						--BLANKETCLUMP -> SPARSECLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BLANKETCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--FOREST -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "FOREST",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						--ROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "ROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--GRASSCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "GRASSCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						
						--BARRENROCKCLUMP -> FLORACLUMP
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DistantObjects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "BARRENROCKCLUMP",
							["VALUE_CHANGE_TABLE"] 	= 
							{						
								{ "Placement",	"FLORACLUMP" }
							}
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- g. CHANGE OBJECTS TO LANDMARKS --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						
						--If Landmarks section is closed, replace it to make it open
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Landmarks" />]], [[    <Property name="Landmarks">]] },
							}	
						},
					
					--THEN DO:
					
						--If Objects section is open, remove it so Landmarks takes over that section
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects",},
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ [[    <Property name="Objects">]], [[]] },
							}	
						},
						
						--Add closed Objects line after Landmarks, otherwise error:
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] 	= [[    <Property name="Objects" />]]
						},
-------------------------------------------------------------------------------------------------------------------------------------------------
-- h. CHANGE UNDERWATER TO ABOVE WATER --------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{						
								{ "MinHeight",	minHeightAboveWater },
							}
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{						
								{ "MaxHeight",	maxHeightAboveWater },
							}
						},
	}
return biomeModifier
end







--







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
["MOD_FILENAME"] 			= "LASAGNA_CustomBiomes_Med_v3.2.pak",
["MOD_AUTHOR"]				= "AGhostlyPepper (aka Lasagna) - with InsaneRuffles code & unused Shaidak's Generation code",
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
						"MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE03.SCENE.MBIN",
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.008),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
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
							["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPINK.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEDARKRED.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.13),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.02),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEGREEN.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.08)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREECYAN.SCENE.MBIN", 60, 1, 7, 12, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.06)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREERED.SCENE.MBIN", 60, 1, 8, 12, 0.18, 0.1),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEBLUE.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.1)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPURPLE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.12),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.009)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.009),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE02.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.1),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE03.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.02),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.09),
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 10, 1, 1.5, 90, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 30, 1, 9, 180, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 30, 1, 12, 10, 0.18, 0.09),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\INAIR\FLOATINGGASBAGS.SCENE.MBIN", 30, 20, 50, 10, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\LAVA\SMALLPROPS\SMALLCOMET01.SCENE.MBIN", 30, 1, 11, 10, 0.18, 0.06),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\LIGHTNINGROCK.SCENE.MBIN", 30, 10, 40, 10, 0.18, 0.04)..
							BiomeExtension("MODELS\PLANETS\BIOMES\COMMON\PLANTS\MONSTERPLANT.SCENE.MBIN", 30, 2, 11, 40, 0.18, 0.07),
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
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
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = AddGrass(),
						},
					},
				},
				--Custom biomes - vanilla v1 --Large
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL.MBIN",
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID.MBIN",
						"CUSTOMBIOMES\GHOSTLYFROZENPILLAROBJECTS.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplierBig, DensityMediumMultiplierBig, DensityMediumMultiplierBig, DensityLowMultiplierBig)
				},
				--Custom biomes - vanilla v2 --Small
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSFULL2.MBIN",
						"CUSTOMBIOMES\GHOSTLYFROZENOBJECTSMID2.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSFULL2.MBIN",
						"CUSTOMBIOMES\GHOSTLYLUSHOBJECTSMID2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifier(ScaleHugeMultiplierSmall, DensityMediumMultiplierSmall, DensityLowestMultiplierSmall, DensityMedLowMultiplierSmall)
				},
				--Custom biomes - vanilla v3 --Small underwater & cave (seperated because all props are in objects section)
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLYCAVEBIOMEFULL.MBIN",
						"CUSTOMBIOMES\GHOSTLYUNDERWATERGASBAGS.MBIN",
						"CUSTOMBIOMES\GHOSTLYUNDERWATERCRYSTALS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= BiomesOneTwoThreeModifierUnderwaterCave(ScaleHugeMultiplierBig, DensityMediumMultiplierSmall, DensityLowestMultiplierSmall, DensityMedLowMultiplierSmall),
				},
				
						
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE