-----------------------------------------------------------
mod_desc = [[
  Adds procedural colors for the multitool and staff strap
  Adds procedural colors for the multitool glow parts
]]---------------------------------------------------------

proc_texture = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="TkProceduralTextureList">
  <Property name="Layers">
	<Property value="TkProceduralTextureLayer.xml">
	  <Property name="Name" value="%s"/>
	  <Property name="Probability" value="1"/>
	  <Property name="Textures">
		<Property value="TkProceduralTexture.xml">
		  <Property name="Palette" value="TkPaletteTexture.xml">
			<Property name="Palette" value="%s"/>
			<Property name="ColourAlt" value="%s"/>
		  </Property>
		  <Property name="Probability" value="1"/>
		  <Property name="Diffuse" value="%s"/>
		</Property>
	  </Property>
	</Property>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
	<Property value="TkProceduralTextureLayer.xml"/>
  </Property>
</Data>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Procedural Strapping.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.45',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= {
		{
			FILE_DESTINATION 	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.TEXTURE.EXML',
			FILE_CONTENT	 	= string.format(
				proc_texture,
				'BASE',
				'Paint',
				'Alternative2',
				'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.BASE.DDS'
			)
		},
		{
			FILE_DESTINATION 	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.TEXTURE.EXML',
			FILE_CONTENT	 	= string.format(
				proc_texture,
				'BASE',
				'Crystal',
				'Primary',
				'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.BASE.DDS'
			)
		},
		{
			EXTERNAL_FILE_SOURCE= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Weapon/MULTITOOLGLOW.BASE.DDS',
			FILE_DESTINATION	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.BASE.DDS'
		}
	}
}
