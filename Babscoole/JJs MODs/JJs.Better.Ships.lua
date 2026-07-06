NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "JJs.Better.Ships.V.5.3",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.45",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Poor", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "0.000000"},
                {"B", "34.000000"},
                {"A", "33.000000"},
                {"S", "33.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Average", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "0.000000"},
                {"B", "33.000000"},
                {"A", "34.000000"},
                {"S", "33.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Wealthy", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "0.000000"},
                {"B", "33.000000"},
                {"A", "33.000000"},
                {"S", "34.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "0.000000"},
                {"B", "33.000000"},
                {"A", "33.000000"},
                {"S", "34.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpIn", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER"},
              ["PRECEDING_KEY_WORDS"] = {"StartTime"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpIn", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["PRECEDING_KEY_WORDS"] = {"StartTime"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "4.000000"},
                {"Y", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_SMALL"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpIn", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_SMALL"},
              ["PRECEDING_KEY_WORDS"] = {"StartTime"},
              ["SECTION_ACTIVE"] = {0,2},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_TINY"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpIn", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_TINY"},
              ["PRECEDING_KEY_WORDS"] = {"StartTime"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_SMALL"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "4.000000"},
                {"Y", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_TINY"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AIShipRole",       "CapitalFreighter"},
                {"MinRange",         "8000.000000"},
                {"AttackDefinition", "FREIGHTER_CAP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FREIGHTER_CAP"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["PRECEDING_KEY_WORDS"] = {"Spread"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "3000.000000"},
                {"Y", "3000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "3.000000"},
                {"Y", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["PRECEDING_KEY_WORDS"] = {"StartTime"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "4.000000"},
                {"Y", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AttackDefinition", "FRIGATE"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AIShipRole",       "Freighter"},
                {"MinRange",         "5000.000000"},
                {"AttackDefinition", "FREIGHTER"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ShipModels"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="ALIEN2">
			<Property name="Id" value="ALIEN2" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Dropship" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="FIGHTER2">
			<Property name="Id" value="FIGHTER2" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Shuttle" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="SAILSHIP2">
			<Property name="Id" value="SAILSHIP2" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Fighter" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="ROYAL2">
			<Property name="Id" value="ROYAL2" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Scientific" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="FIGHTERGOLD">
			<Property name="Id" value="FIGHTERGOLD" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="VRSPEEDER">
			<Property name="Id" value="VRSPEEDER" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/VRSPEEDER.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="ROBOT2">
			<Property name="Id" value="ROBOT2" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Fighter" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="WRACER">
			<Property name="Id" value="WRACER" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/WRACER.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="WRACERSE">
			<Property name="Id" value="WRACERSE" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/WRACERSE.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="SPOOK">
			<Property name="Id" value="SPOOK" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/SPOOKSHIP.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
		<Property name="ShipModels" value="GcAISpaceshipModelData" _id="ALIEN3">
			<Property name="Id" value="ALIEN3" />
			<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOFIGHTER.SCENE.MBIN" />
			<Property name="Class" value="GcSpaceshipClasses">
				<Property name="ShipClass" value="Sail" />
			</Property>
			<Property name="AIRole" value="GcAISpaceshipRoles">
				<Property name="AIShipRole" value="Standard" />
			</Property>
			<Property name="FrigateClass" value="GcFrigateClass">
				<Property name="FrigateClass" value="Combat" />
			</Property>
		</Property>
]]
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian", "Spaceships"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Spaceships" value="ALIEN2" _index="23" />
				<Property name="Spaceships" value="FIGHTER2" _index="24" />
				<Property name="Spaceships" value="SAILSHIP2" _index="25" />
				<Property name="Spaceships" value="ROYAL2" _index="26" />
				<Property name="Spaceships" value="FIGHTERGOLD" _index="27" />
				<Property name="Spaceships" value="VRSPEEDER" _index="28" />
				<Property name="Spaceships" value="ROBOT2" _index="29" />
				<Property name="Spaceships" value="WRACER" _index="30" />
				<Property name="Spaceships" value="WRACERSE" _index="31" />
				<Property name="Spaceships" value="SPOOK" _index="32" />
				<Property name="Spaceships" value="ALIEN3" _index="33" />
]]
            },
          }
        },
      }
    }
  }
}