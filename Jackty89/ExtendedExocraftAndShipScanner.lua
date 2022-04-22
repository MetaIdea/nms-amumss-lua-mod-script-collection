ModName = "ExtendedExocraftAndShipScanner"

VehicleScanTablePath = "METADATA\\SIMULATION\\SCANNING\\VEHICLESCANTABLE.MBIN"
BuildingGlobalsPath = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

--Scanner lvl 0 = base scanner, lvl 1 = 1st uprgade, lvl 2 = 2nd uprgade
----Exocraft can now scan for TradePosts with scanner lvl2
AddCrashedShipExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="DISTRESS" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_DISTRESSSIGNAL_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN2" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.SHIP.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl0
AddCrashedFreighterExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="CRASHED_FREIGHTER" />
			</Property>
		</Property>
		<Property name="Name" value="UI_CORE_ACT2_STEP8_MARKER" />
		<Property name="RequiredTech" value="VEHICLE_SCAN" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.FREIGHTER.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl2
AddDistressedNPCExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="DISTRESS_NPC" />
			</Property>
		</Property>
		<Property name="Name" value="Distressed NPC" />
		<Property name="RequiredTech" value="VEHICLE_SCAN1" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.REPAIR.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl2
AddFactoryExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="FACTORY" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_FACTORY_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN2" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.COLLECT.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddHarvesterExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="HARVESTER" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_HARVESTER_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN1" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.WHEAT.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddObservatoryExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="OBSERVATORY" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_OBSERVATORY_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN1" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.PLANET.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddRadioTowerExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="RADIOTOWER" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_RADIOTOWER_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN1" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.SCAN.DDS" />
		</Property>
	</Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl0
AddSettlementExoCraft =
  [[
	<Property value="GcVehicleScanTableEntry.xml">
		<Property name="ScanList">
			<Property value="NMSString0x20.xml">
				<Property name="Value" value="SHOP" />
			</Property>
		</Property>
		<Property name="Name" value="BUILDING_SHOP_L" />
		<Property name="RequiredTech" value="VEHICLE_SCAN" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.CONSTRUCTION.DDS" />
		</Property>
	</Property>
]]

AddedScanEventsExoCraft =
  AddCrashedShipExoCraft ..
  AddCrashedFreighterExoCraft ..
  AddDistressedNPCExoCraft ..
  AddFactoryExoCraft ..
  AddHarvesterExoCraft .. 
  AddObservatoryExoCraft .. 
  AddRadioTowerExoCraft .. 
  AddSettlementExoCraft

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = ModName .. ".pak",
  ["MOD_DESCRIPTION"] = "",
  ["MOD_AUTHOR"] = "Jackty89",
  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = VehicleScanTablePath,
          ["EXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"VehicleScanTable"},
              ["LINE_OFFSET"] = "+0",
              ["ADD"] = AddedScanEventsExoCraft
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = BuildingGlobalsPath,
          ["EXML_CHANGE_TABLE"] = {
            {
              ["VALUE_CHANGE_TABLE"] = {
                {"UnknownBuildingRange", "10000"},
                {"MaxIconRange", "10000"},
                {"MinShipScanBuildings", "1"},
                {"MaxShipScanBuildings", "5"}
              }
            }
          }
        }
      }
    }
  }
}
