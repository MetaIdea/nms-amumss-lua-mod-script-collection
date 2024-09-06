NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= "GTech 233a Damaged Ship Test.pak",
MOD_DESCRIPTION	= "Changes to the Technology Table",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.3.3",
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {{
MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
EXML_CHANGE_TABLE = {

--Ship Damaged Slot Penalties
--Hull Fracture
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG1","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG1","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Armour_Shield_Strength" />
          </Property>
          <Property name="Bonus" value="0.1" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Rusted Circuits
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG2","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG2","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Armour_Shield_Strength" />
          </Property>
          <Property name="Bonus" value="0.9" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Shattered Bulwark
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG3","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG3","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Armour_Shield_Strength" />
          </Property>
          <Property name="Bonus" value="9" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Radiation Leak
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG4","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG4","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Maneuverability" />
          </Property>
          <Property name="Bonus" value="0.1" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Containment Failure
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG5","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG5","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Maneuverability" />
          </Property>
          <Property name="Bonus" value="1.9" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Damaged Gears
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG6","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG6","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Maneuverability" />
          </Property>
          <Property name="Bonus" value="9.9" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Hydraulics Damage
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG7","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG7","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
		  <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpSpeed" />
          </Property>
          <Property name="Bonus" value="0.1" />
          <Property name="Level" value="1" />
        </Property>
	  </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Exploded Panel
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG8","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG8","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpSpeed" />
          </Property>
          <Property name="Bonus" value="999" />
          <Property name="Level" value="1" />
        </Property>
	</Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Corroded Tanks
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG9","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG9","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpSpeed" />
          </Property>
          <Property name="Bonus" value="-999" />
          <Property name="Level" value="1" />
        </Property>
	</Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Burnt-Out Compressor
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG10","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG10","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpFuelSpending" />
          </Property>
          <Property name="Bonus" value="1.9" />
          <Property name="Level" value="1" />
        </Property>
	</Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Scorched Plating
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG11","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG11","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpFuelSpending" />
          </Property>
          <Property name="Bonus" value="0.1" />
          <Property name="Level" value="1" />
        </Property>
	</Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

--Melted Fuel Cell
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG12","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","SHIPSLOT_DMG12","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_PulseDrive_MiniJumpFuelSpending" />
          </Property>
          <Property name="Bonus" value="0.9" />
          <Property name="Level" value="1" />
        </Property>
	</Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},






--Multitool Damaged Slot Penalties
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG1","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG1","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG2","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG2","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG3","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG3","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG4","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG4","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG5","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG5","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG6","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG6","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG7","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG7","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG8","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG8","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG9","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG9","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG10","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG10","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},

	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG11","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG11","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},
	
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG12","StatsType","Unspecified"},
	LINE_OFFSET = "+2",
	REMOVE = "LINE"},
	{SPECIAL_KEY_WORDS = {"ID","WEAPSLOT_DMG12","StatsType","Unspecified"},
	ADD = [[		<Property name="StatBonuses">
        <Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="Bonus" value="-0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_Drain" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="1" />
        </Property>
		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_HeatTime" />
          </Property>
          <Property name="Bonus" value="-5" />
          <Property name="Level" value="1" />
        </Property>		
      </Property>]],
	REPLACE_TYPE = "ADDAFTERSECTION"},


}}}}}}