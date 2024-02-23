--[[-----------------------------------------
 add overhead tail fin to wing_K
-------------------------------------------]]

local Wing_K_Tail = [[
	<Property name="Children">
		<Property value="TkSceneNodeData.xml">
			<Property name="Name" value="_Acc_A7"/>
			<Property name="NameHash" value="3930948992"/>
			<Property name="Type" value="REFERENCE"/>
			<Property name="Transform" value="TkTransformData.xml">
				<Property name="TransX" value="0"/>
				<Property name="TransY" value="2.411147"/>
				<Property name="TransZ" value="0.017394"/>
				<Property name="RotX" value="0"/>
				<Property name="RotY" value="0"/>
				<Property name="RotZ" value="0"/>
				<Property name="ScaleX" value="0.82"/>
				<Property name="ScaleY" value="0.74"/>
				<Property name="ScaleZ" value="1.08"/>
			</Property>
			<Property name="Attributes">
				<Property value="TkSceneNodeAttributeData.xml">
					<Property name="Name" value="SCENEGRAPH"/>
					<Property name="AltID" value=""/>
					<Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA.SCENE.MBIN"/>
				</Property>
			</Property>
			<Property name="Children"/>
		</Property>
	</Property>
]]

local Wing_K_Tail_Desc = [[
	<Property name="Children">
		<Property value="TkModelDescriptorList.xml">
			<Property name="List">
				<Property value="TkResourceDescriptorList.xml">
					<Property name="TypeId" value="_ACC_" />
					<Property name="Descriptors">
						<Property value="TkResourceDescriptorData.xml">
							<Property name="Id" value="_ACC_A7" />
							<Property name="Name" value="_Acc_A7" />
							<Property name="ReferencePaths">
								<Property value="NMSString0x80.xml">
									<Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA.SCENE.MBIN" />
								</Property>
							</Property>
							<Property name="Chance" value="0" />
							<Property name="Children" />
						</Property>
						<Property value="TkResourceDescriptorData.xml">
							<Property name="Id" value="_ACC_NONE" />
							<Property name="Name" value="_Acc_None" />
							<Property name="ReferencePaths" />
							<Property name="Chance" value="0" />
							<Property name="Children" />
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 10 WING_K tail fin.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Wings_K'},
				PRECEDING_KEY_WORDS	= 'Children',
				REMOVE				= 'LINE'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Wings_K'},
				ADD 				= Wing_K_Tail
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Wings_K'},
				LINE_OFFSET			= 7,
				REMOVE				= 'LINE'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Wings_K'},
				ADD 				= Wing_K_Tail_Desc
			}
		}
	}
}}}}
