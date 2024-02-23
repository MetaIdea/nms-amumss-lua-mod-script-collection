------------------------------------------------------
local desc = [[
  Increase exocraft inventory size
  Vykeen monolith accepts Effigy instead of dagger
  cheaper pet slots
]]----------------------------------------------------

local function AddConsumableItem(x)
	return [[
	<Property value="GcConsumableItem.xml">
		<Property name="ID" value="]]..x.id..[["/>
		<Property name="RewardID" value="]]..x.reward..[["/>
		<Property name="ButtonLocID" value="UI_CONSUME"/>
		<Property name="ButtonSubLocID" value="]]..(x.hovt or '')..[["/>
		<Property name="CloseInventoryWhenUsed" value="]]..(x.closeinv and 'True' or 'False')..[["/>
		<Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
			<Property name="AkEvent" value="INVALID_EVENT"/>
		</Property>
		<Property name="RewardFailedLocID" value="INTRCT_NOROOM_L"/>
		<Property name="DestroyItemWhenConsumed" value="]]..(x.dest or 'True')..[["/>
	</Property>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE CONSUMABLE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|CONSUMABLEs replace rewards|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
			--	chewy wires
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_V_ROBOT'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'HEALTH_MAJOR'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
			{
			--	sievert beans (cooked gamma root)
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_RADFARM'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'TEST_REWARD_09'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
			{
			--	wheat testing
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_P_ALL1'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'R_ROGUE_TECH'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Table',
				ADD 				=
					AddConsumableItem({id='HEXCORE', reward='RS_QUICKSILV_T'})
					-- ..
					-- AddConsumableItem({id='WHALE_BEACON', reward='WHALE_SINGING', closeinv=true})
			}
		}
	}
}}}}
