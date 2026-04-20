NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Xeno Ability Mixer",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Mariti",
["MOD_CONTRIBUTORS"] = "Babscoole",
["NMS_VERSION"]     = "6.33",
["MOD_DESCRIPTION"] = "Adds all abilities to all slots",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\GAMETABLES\PETBATTLER\PETBATTLERMOVESETSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
			{
				["SPECIAL_KEY_WORDS"] = {"Slot1", "GcPetBattlerMoveSlotOptions"},
				["PRECEDING_KEY_WORDS"] = {"AllowedMoveTemplates"},
				["ADD_OPTION"] = "ADDendSECTION",
				["ADD"] = 
[[
				<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="9">
						<Property name="Template" value="BARRAGE_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="10">
						<Property name="Template" value="ATTACK_DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="11">
						<Property name="Template" value="ATTACK_DOT_NORM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="12">
						<Property name="Template" value="ATTACK_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="13">
						<Property name="Template" value="AFF_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="14">
						<Property name="Template" value="MULTI_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.750000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="15">
						<Property name="Template" value="RAMP_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.700000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="16">
						<Property name="Template" value="AFF_SPEED_THEM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="17">
						<Property name="Template" value="AFF_SPEED_ME" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="18">
						<Property name="Template" value="DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="19">
						<Property name="Template" value="DELAY_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="20">
						<Property name="Template" value="ENRAGE_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="21">
						<Property name="Template" value="ENRAGE_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="22">
						<Property name="Template" value="ENRAGE_HOT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="23">
						<Property name="Template" value="ATTACK_SELFDOT" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="24">
						<Property name="Template" value="ATTACK_BOTH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="25">
						<Property name="Template" value="DOT_BOMB" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="26">
						<Property name="Template" value="HOSTILE_DISPEL" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="27">
						<Property name="Template" value="CHARGEUP_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="28">
						<Property name="Template" value="CHARGEUP_BUFF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="29">
						<Property name="Template" value="DELAY_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="30">
						<Property name="Template" value="SELF_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="31">
						<Property name="Template" value="SELF_HOT" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="32">
						<Property name="Template" value="SELF_DISPEL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="33">
						<Property name="Template" value="SELF_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="34">
						<Property name="Template" value="SELF_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="35">
						<Property name="Template" value="SELF_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="36">
						<Property name="Template" value="FULL_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="37">
						<Property name="Template" value="FULL_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="38">
						<Property name="Template" value="FULL_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="39">
						<Property name="Template" value="SPEED_UP" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="40">
						<Property name="Template" value="DONT_TOUCH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="41">
						<Property name="Template" value="BURROW" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="42">
						<Property name="Template" value="STUN" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="43">
						<Property name="Template" value="CHANGE_AFFINITY" />
						<Property name="CooldownMin" value="5" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="44">
						<Property name="Template" value="BUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="45">
						<Property name="Template" value="BUFF_SPEED" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="46">
						<Property name="Template" value="BUFF_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="47">
						<Property name="Template" value="BUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="48">
						<Property name="Template" value="BUFF_DODGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="49">
						<Property name="Template" value="DEBUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="50">
						<Property name="Template" value="DEBUFF_DEF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="51">
						<Property name="Template" value="DEBUFF_DAM_ACC" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="52">
						<Property name="Template" value="DEBUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="53">
						<Property name="Template" value="SELF_RESET_CD" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="54">
						<Property name="Template" value="SACRIFICE_DAM" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="55">
						<Property name="Template" value="SACRIFICE_DEF" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="56">
						<Property name="Template" value="REVIVE" />
						<Property name="CooldownMin" value="6" />
						<Property name="CooldownMax" value="6" />
						<Property name="Weighting" value="0.200000" />
					</Property>
]]
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Slot2", "GcPetBattlerMoveSlotOptions"},
				["PRECEDING_KEY_WORDS"] = {"AllowedMoveTemplates"},
				["ADD_OPTION"] = "ADDendSECTION",
				["ADD"] = 
[[
				<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="9">
						<Property name="Template" value="ATTACK_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="3.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="10">
						<Property name="Template" value="ATTACK_NORM" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="11">
						<Property name="Template" value="ATTACK_COLD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="12">
						<Property name="Template" value="ATTACK_HOT" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="13">
						<Property name="Template" value="ATTACK_DUST" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="14">
						<Property name="Template" value="ATTACK_LUSH" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="15">
						<Property name="Template" value="ATTACK_WEIRD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="16">
						<Property name="Template" value="ATTACK_RAD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="17">
						<Property name="Template" value="ATTACK_TOX" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="18">
						<Property name="Template" value="DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="19">
						<Property name="Template" value="DELAY_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="20">
						<Property name="Template" value="ENRAGE_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="21">
						<Property name="Template" value="ENRAGE_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="22">
						<Property name="Template" value="ENRAGE_HOT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="23">
						<Property name="Template" value="ATTACK_SELFDOT" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="24">
						<Property name="Template" value="ATTACK_BOTH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="25">
						<Property name="Template" value="DOT_BOMB" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="26">
						<Property name="Template" value="HOSTILE_DISPEL" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="27">
						<Property name="Template" value="CHARGEUP_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="28">
						<Property name="Template" value="CHARGEUP_BUFF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="29">
						<Property name="Template" value="DELAY_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="30">
						<Property name="Template" value="SELF_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="31">
						<Property name="Template" value="SELF_HOT" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="32">
						<Property name="Template" value="SELF_DISPEL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="33">
						<Property name="Template" value="SELF_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="34">
						<Property name="Template" value="SELF_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="35">
						<Property name="Template" value="SELF_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="36">
						<Property name="Template" value="FULL_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="37">
						<Property name="Template" value="FULL_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="38">
						<Property name="Template" value="FULL_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="39">
						<Property name="Template" value="SPEED_UP" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="40">
						<Property name="Template" value="DONT_TOUCH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="41">
						<Property name="Template" value="BURROW" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="42">
						<Property name="Template" value="STUN" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="43">
						<Property name="Template" value="CHANGE_AFFINITY" />
						<Property name="CooldownMin" value="5" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="44">
						<Property name="Template" value="BUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="45">
						<Property name="Template" value="BUFF_SPEED" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="46">
						<Property name="Template" value="BUFF_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="47">
						<Property name="Template" value="BUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="48">
						<Property name="Template" value="BUFF_DODGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="49">
						<Property name="Template" value="DEBUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="50">
						<Property name="Template" value="DEBUFF_DEF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="51">
						<Property name="Template" value="DEBUFF_DAM_ACC" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="52">
						<Property name="Template" value="DEBUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="53">
						<Property name="Template" value="SELF_RESET_CD" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="54">
						<Property name="Template" value="SACRIFICE_DAM" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="55">
						<Property name="Template" value="SACRIFICE_DEF" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="56">
						<Property name="Template" value="REVIVE" />
						<Property name="CooldownMin" value="6" />
						<Property name="CooldownMax" value="6" />
						<Property name="Weighting" value="0.200000" />
					</Property>
]]
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Slot3", "GcPetBattlerMoveSlotOptions"},
				["PRECEDING_KEY_WORDS"] = {"AllowedMoveTemplates"},
				["ADD_OPTION"] = "ADDendSECTION",
				["ADD"] = 
[[
				<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="11">
						<Property name="Template" value="ATTACK_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="3.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="12">
						<Property name="Template" value="ATTACK_NORM" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="13">
						<Property name="Template" value="ATTACK_COLD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="14">
						<Property name="Template" value="ATTACK_HOT" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="15">
						<Property name="Template" value="ATTACK_DUST" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="16">
						<Property name="Template" value="ATTACK_LUSH" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="17">
						<Property name="Template" value="ATTACK_WEIRD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="18">
						<Property name="Template" value="ATTACK_RAD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="19">
						<Property name="Template" value="ATTACK_TOX" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="20">
						<Property name="Template" value="BARRAGE_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="21">
						<Property name="Template" value="ATTACK_DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="22">
						<Property name="Template" value="ATTACK_DOT_NORM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="23">
						<Property name="Template" value="ATTACK_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="24">
						<Property name="Template" value="AFF_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="25">
						<Property name="Template" value="MULTI_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.750000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="26">
						<Property name="Template" value="RAMP_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.700000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="27">
						<Property name="Template" value="AFF_SPEED_THEM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="28">
						<Property name="Template" value="AFF_SPEED_ME" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="29">
						<Property name="Template" value="DELAY_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="30">
						<Property name="Template" value="SELF_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="31">
						<Property name="Template" value="SELF_HOT" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="32">
						<Property name="Template" value="SELF_DISPEL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="33">
						<Property name="Template" value="SELF_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="34">
						<Property name="Template" value="SELF_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="35">
						<Property name="Template" value="SELF_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="36">
						<Property name="Template" value="FULL_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="37">
						<Property name="Template" value="FULL_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="38">
						<Property name="Template" value="FULL_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="39">
						<Property name="Template" value="SPEED_UP" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="40">
						<Property name="Template" value="DONT_TOUCH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="41">
						<Property name="Template" value="BURROW" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="42">
						<Property name="Template" value="STUN" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="43">
						<Property name="Template" value="CHANGE_AFFINITY" />
						<Property name="CooldownMin" value="5" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="44">
						<Property name="Template" value="BUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="45">
						<Property name="Template" value="BUFF_SPEED" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="46">
						<Property name="Template" value="BUFF_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="47">
						<Property name="Template" value="BUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="48">
						<Property name="Template" value="BUFF_DODGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="49">
						<Property name="Template" value="DEBUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="50">
						<Property name="Template" value="DEBUFF_DEF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="51">
						<Property name="Template" value="DEBUFF_DAM_ACC" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="52">
						<Property name="Template" value="DEBUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="53">
						<Property name="Template" value="SELF_RESET_CD" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="54">
						<Property name="Template" value="SACRIFICE_DAM" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="55">
						<Property name="Template" value="SACRIFICE_DEF" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="56">
						<Property name="Template" value="REVIVE" />
						<Property name="CooldownMin" value="6" />
						<Property name="CooldownMax" value="6" />
						<Property name="Weighting" value="0.200000" />
					</Property>
]]
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Slot4", "GcPetBattlerMoveSlotOptions"},
				["PRECEDING_KEY_WORDS"] = {"AllowedMoveTemplates"},
				["ADD_OPTION"] = "ADDendSECTION",
				["ADD"] = 
[[
				<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="10">
						<Property name="Template" value="ATTACK_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="3.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="11">
						<Property name="Template" value="ATTACK_NORM" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="12">
						<Property name="Template" value="ATTACK_COLD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="13">
						<Property name="Template" value="ATTACK_HOT" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="14">
						<Property name="Template" value="ATTACK_DUST" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="15">
						<Property name="Template" value="ATTACK_LUSH" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="16">
						<Property name="Template" value="ATTACK_WEIRD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="17">
						<Property name="Template" value="ATTACK_RAD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="18">
						<Property name="Template" value="ATTACK_TOX" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="19">
						<Property name="Template" value="BARRAGE_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="20">
						<Property name="Template" value="ATTACK_DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="21">
						<Property name="Template" value="ATTACK_DOT_NORM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="22">
						<Property name="Template" value="ATTACK_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="23">
						<Property name="Template" value="AFF_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="24">
						<Property name="Template" value="MULTI_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.750000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="25">
						<Property name="Template" value="RAMP_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.700000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="26">
						<Property name="Template" value="AFF_SPEED_THEM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="27">
						<Property name="Template" value="AFF_SPEED_ME" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="28">
						<Property name="Template" value="DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="29">
						<Property name="Template" value="DELAY_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="30">
						<Property name="Template" value="ENRAGE_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="31">
						<Property name="Template" value="ENRAGE_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="32">
						<Property name="Template" value="ENRAGE_HOT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="33">
						<Property name="Template" value="ATTACK_SELFDOT" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="34">
						<Property name="Template" value="ATTACK_BOTH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="35">
						<Property name="Template" value="DOT_BOMB" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="36">
						<Property name="Template" value="HOSTILE_DISPEL" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="37">
						<Property name="Template" value="CHARGEUP_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="38">
						<Property name="Template" value="CHARGEUP_BUFF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="39">
						<Property name="Template" value="SPEED_UP" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="40">
						<Property name="Template" value="DONT_TOUCH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="41">
						<Property name="Template" value="BURROW" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="42">
						<Property name="Template" value="STUN" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="43">
						<Property name="Template" value="CHANGE_AFFINITY" />
						<Property name="CooldownMin" value="5" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="44">
						<Property name="Template" value="BUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="45">
						<Property name="Template" value="BUFF_SPEED" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.150000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="46">
						<Property name="Template" value="BUFF_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="47">
						<Property name="Template" value="BUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="48">
						<Property name="Template" value="BUFF_DODGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="49">
						<Property name="Template" value="DEBUFF_ACCURACY" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="50">
						<Property name="Template" value="DEBUFF_DEF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="51">
						<Property name="Template" value="DEBUFF_DAM_ACC" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="52">
						<Property name="Template" value="DEBUFF_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.250000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="53">
						<Property name="Template" value="SELF_RESET_CD" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="54">
						<Property name="Template" value="SACRIFICE_DAM" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="55">
						<Property name="Template" value="SACRIFICE_DEF" />
						<Property name="CooldownMin" value="4" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="56">
						<Property name="Template" value="REVIVE" />
						<Property name="CooldownMin" value="6" />
						<Property name="CooldownMax" value="6" />
						<Property name="Weighting" value="0.200000" />
					</Property>
]]
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Slot5", "GcPetBattlerMoveSlotOptions"},
				["PRECEDING_KEY_WORDS"] = {"AllowedMoveTemplates"},
				["ADD_OPTION"] = "ADDendSECTION",
				["ADD"] = 
[[
				<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="18">
						<Property name="Template" value="ATTACK_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="3.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="19">
						<Property name="Template" value="ATTACK_NORM" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.500000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="20">
						<Property name="Template" value="ATTACK_COLD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="21">
						<Property name="Template" value="ATTACK_HOT" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="22">
						<Property name="Template" value="ATTACK_DUST" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="23">
						<Property name="Template" value="ATTACK_LUSH" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="24">
						<Property name="Template" value="ATTACK_WEIRD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="25">
						<Property name="Template" value="ATTACK_RAD" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="26">
						<Property name="Template" value="ATTACK_TOX" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="0" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="27">
						<Property name="Template" value="BARRAGE_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="28">
						<Property name="Template" value="ATTACK_DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="29">
						<Property name="Template" value="ATTACK_DOT_NORM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.200000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="30">
						<Property name="Template" value="ATTACK_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.100000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="31">
						<Property name="Template" value="AFF_WILD" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="32">
						<Property name="Template" value="MULTI_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.750000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="33">
						<Property name="Template" value="RAMP_AFF" />
						<Property name="CooldownMin" value="0" />
						<Property name="CooldownMax" value="1" />
						<Property name="Weighting" value="0.700000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="34">
						<Property name="Template" value="AFF_SPEED_THEM" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="35">
						<Property name="Template" value="AFF_SPEED_ME" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.300000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="36">
						<Property name="Template" value="DOT_AFF" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="37">
						<Property name="Template" value="DELAY_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="38">
						<Property name="Template" value="ENRAGE_CRIT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="39">
						<Property name="Template" value="ENRAGE_DAMAGE" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="40">
						<Property name="Template" value="ENRAGE_HOT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="41">
						<Property name="Template" value="ATTACK_SELFDOT" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="42">
						<Property name="Template" value="ATTACK_BOTH" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="43">
						<Property name="Template" value="DOT_BOMB" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="44">
						<Property name="Template" value="HOSTILE_DISPEL" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="45">
						<Property name="Template" value="CHARGEUP_AFF" />
						<Property name="CooldownMin" value="3" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="46">
						<Property name="Template" value="CHARGEUP_BUFF" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="47">
						<Property name="Template" value="DELAY_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="48">
						<Property name="Template" value="SELF_HEAL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="3" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="49">
						<Property name="Template" value="SELF_HOT" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="4" />
						<Property name="Weighting" value="1.000000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="50">
						<Property name="Template" value="SELF_DISPEL" />
						<Property name="CooldownMin" value="1" />
						<Property name="CooldownMax" value="2" />
						<Property name="Weighting" value="0.660000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="51">
						<Property name="Template" value="SELF_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="52">
						<Property name="Template" value="SELF_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="53">
						<Property name="Template" value="SELF_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="54">
						<Property name="Template" value="FULL_ABSORB" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="55">
						<Property name="Template" value="FULL_SHIELD" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
					<Property name="AllowedMoveTemplates" value="GcPetBattlerMoveSlotOption" _index="56">
						<Property name="Template" value="FULL_REFLECT" />
						<Property name="CooldownMin" value="2" />
						<Property name="CooldownMax" value="5" />
						<Property name="Weighting" value="0.330000" />
					</Property>
]]
			},
          }
        }
      }
    }
  }
}