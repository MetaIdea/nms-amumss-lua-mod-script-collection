-------------------------------------------------------------------------------------
local mod_desc = [[
  cockpitA re-center trails
  cockpit_A back & tail fins decals fix
  cockpitA move guns below body to match interior
  cockpitD guns placed on body (instead of joint)
  Decals placement tweaks.
  lod fixes
]]-----------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.01
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate unrelated (instead of nested) mxml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
local function ProcessOnenAll(items, acton)
	-- first key = 1 means multiple entries
	if next(items) == 1 then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

--	=> Build a single -or list of TkSceneNodeData classes
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  ntype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  pxlud = [optional] PlatformExclusion
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
local function ScNode(nodes)
	--	returns a jenkins hash from a string (by lyravega)
	local function jenkinsHash(input)
		local hash = 0
		local t_chars = {string.byte(input:upper(), 1, #input)}

		for i = 1, #input do
			hash = (hash + t_chars[i]) & 0xffffffff
			hash = (hash + (hash << 10)) & 0xffffffff
			hash = (hash ~ (hash >> 6)) & 0xffffffff
		end
		hash = (hash + (hash << 3)) & 0xffffffff
		hash = (hash ~ (hash >> 11)) & 0xffffffff
		hash = (hash + (hash << 15)) & 0xffffffff
		return tostring(hash)
	end
	--	Build a TkSceneNodeData class
	local function sceneNode(props)
		local T	= {
			meta	= {name='Children', value='TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {name='Transform', value='TkTransformData'},
			TransX	= (props.form.tx or props.form[1]) or nil,
			TransY	= (props.form.ty or props.form[2]) or nil,
			TransZ	= (props.form.tz or props.form[3]) or nil,
			RotX	= (props.form.rx or props.form[4]) or nil,
			RotY	= (props.form.ry or props.form[5]) or nil,
			RotZ	= (props.form.rz or props.form[6]) or nil,
			ScaleX	= (props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sy or props.form[8]) or 1,
			ScaleZ	= (props.form.sz or props.form[9]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attribute to scenegraph
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = 'TRUE'
			end
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= val
				}
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end

--	=> Translates a 0xFF hex section from a longer string to 0-1.0 percentage
--	@param hex: hex string (case insensitive [A-z0-9])
--	@param i: the hex pair's index
local function Hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

--	=> Builds light TkSceneNodeData sections.
--	receives a table, or a table of tables, with the following (optional) parameters
--	  name= 'n9',	fov= 360,	v=	0,
--	  i=	30000,	f= 'q',		fr=	2,
--	  r=	1,		g=	1,		b=	1,
--	  c=	'7E450A' (color as hex - overwrites rgb)
--	  tx=	0,		ty=	0,		tz=	0,
--	  rx=	0,		ry=	0,		rz=	0,
--	  sx=	1,		sy=	1,		sz=	1
--	  mt=	MATERIALS/LIGHT.MATERIAL.MBIN
local function ScLight(lights)
	local function lightNode(lgt)
		if lgt.c then
			lgt.c = lgt.c:sub(#lgt.c > 6 and 3 or 1, #lgt.c) -- remove alpha if present
			for i, col in ipairs({'r', 'g', 'b'}) do
				lgt[col] = Hex2Percent(lgt.c, i)
			end
		end
		return {
			name	= lgt.name or 'n9',
			ntype	= 'LIGHT',
			form	= lgt,
			attr	= {
				FOV			= lgt.fov or 360,
				FALLOFF		= (lgt.f and lgt.f:sub(1,1) == 'l') and 'linear' or 'quadratic',
				FALLOFF_RATE= lgt.fr or 2,
				INTENSITY	= lgt.i  or 30000,
				COL_R		= lgt.r  or 1,
				COL_G		= lgt.g  or 1,
				COL_B		= lgt.b  or 1,
				VOLUMETRIC	= lgt.v  or nil,
				COOKIE_IDX	= -1,
				MATERIAL	= lgt.mt or 'MATERIALS/LIGHT.MATERIAL.MBIN'
			}
		}
	end
	-----------------------------------------------------------------
	if lights then
		-- first key=1 means a list of light nodes
		if next(lights) == 1 then
			local T = {}
			for _,l in pairs(lights) do
				T[#T+1] = lightNode(l)
			end
			return ScNode(T)
		end
	end
	return ScNode(lightNode(lights))
end
---------------------------------------------------------------------------------

local science = {
	interior =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR.SCENE.MBIN',      		skip=true},
	lamp =		{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/ACCESSORIES/LAMP.SCENE.MBIN',						skip=true},
	cockpit_a =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN',			add=true},
	cockbck_a =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/BACK/COCKPITABACKB.SCENE.MBIN',	add=true},
	cockpit_b =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITB/COCKPITB.SCENE.MBIN',    		add=true,	lod1=true},
	cockpit_c =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITC/COCKPITC.SCENE.MBIN',    		add=true},
	cockpit_d =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITD/COCKPITD.SCENE.MBIN',    		add=true},
	wing_al	=	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSA/WINGSA_LEFT.SCENE.MBIN',      		add=true},
	wing_ar =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSA/WINGSA_RIGHT.SCENE.MBIN',      		add=true},
	wing_bl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSB/WINGSBLEFT.SCENE.MBIN',      		add=true},
	wing_br =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSB/WINGSBRIGHT.SCENE.MBIN',      		add=true},
	wing_cl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSC/WINGCLEFT.SCENE.MBIN',      			add=true},
	wing_cr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSC/WINGCRIGHT.SCENE.MBIN',      		add=true},
	wing_dl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSD/WINGDLEFT.SCENE.MBIN',      			add=true},
	wing_dr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSD/WINGDRIGHT.SCENE.MBIN',      		add=true},
	wing_el =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSE/WINGELEFT.SCENE.MBIN',      			add=true},
	wing_er =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSE/WINGERIGHT.SCENE.MBIN',      		add=true},
	wing_fl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSF/WINGFLEFT.SCENE.MBIN',      			add=true},
	wing_fr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSF/WINGFRIGHT.SCENE.MBIN',      		add=true},
	wing_gl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSG/WINGGLEFT.SCENE.MBIN',      			add=true},
	wing_gr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSG/WINGGRIGHT.SCENE.MBIN',      		add=true},
	wing_hl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSH/WINGHLEFT.SCENE.MBIN',      			add=true},
	wing_hr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSH/WINGHRIGHT.SCENE.MBIN',      		add=true},
	wing_il =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGILEFT.SCENE.MBIN',  				add=true},
	wing_ir =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGIRIGHT.SCENE.MBIN',  			add=true},
	wing_jl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSJ/WINGJLEFT.SCENE.MBIN',  				add=true,	lod1=true},
	wing_jr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSJ/WINGJRIGHT.SCENE.MBIN',  			add=true,	lod1=true},
	wing_kl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSK/WINGKLEFT.SCENE.MBIN',  				add=true},
	wing_kr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSK/WINGKRIGHT.SCENE.MBIN',  			add=true},
	wing_ll =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSL/WINGSL_LEFT.SCENE.MBIN',  			add=true},
	wing_lr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSL/WINGSL_RIGHT.SCENE.MBIN',  			add=true},
	wing_ml =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSM/WINGSM_L.SCENE.MBIN',  				add=true},
	wing_mr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSM/WINGSM_R.SCENE.MBIN',  				add=true},
	wing_tl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGTOPJOINT/WINGTOPJOINT_LEFT.SCENE.MBIN',	add=true},
	wing_tr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGTOPJOINT/WINGTOPJOINT_RIGHT.SCENE.MBIN',add=true},
	s_wing_al =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSA/SUBWINGSA_LEFT.SCENE.MBIN', 	add=true},
	s_wing_ar =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSA/SUBWINGSA_RIGHT.SCENE.MBIN', 	add=true},
	s_wing_bl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSB/SUBWINGSB_LEFT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_br =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSB/SUBWINGSB_RIGHT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_cl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSC/SUBWINGSC_LEFT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_cr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSC/SUBWINGSC_RIGHT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_dl =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSD/SUBWINGSD_LEFT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_dr =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSD/SUBWINGSD_RIGHT.SCENE.MBIN', 	add=true,	lod1=true},
	s_wing_el =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSE/SUBWINGE_L.SCENE.MBIN', 		add=true},
	s_wing_er =	{src='MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SUBWINGS/SUBWINGSE/SUBWINGE_R.SCENE.MBIN', 		add=true},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Scientific Restoration.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '6.02',
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|sci interior light|
		MBIN_FILE_SOURCE	= science.interior.src,
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				ADD					= ToMxml(ScLight({name='Light08', i=7000, ty=-0.6, tz=1.5, c='FF98A6F2'}))
			}
		}
	},
	{--	|wingA_L add trail|
		MBIN_FILE_SOURCE	= science.wing_al.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'WingALeft'},
				PRECEDING_KEY_WORDS	= 'Children',
				ADD					= ToMxml(ScNode({name='Trail', ntype='LOCATOR', form={8.55, 0, -0.458, 0, 180}}))
			}
		}
	},
	{--	|wingA_R add trail|
		MBIN_FILE_SOURCE	= science.wing_ar.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'WingALeft'},
				PRECEDING_KEY_WORDS	= 'Children',
				ADD					= ToMxml(ScNode({name='Trail', ntype='LOCATOR', form={-8.55, 0, -0.4, 0, 180}}))
			}
		}
	},
	{--	|Scientific cockpitD re-alignments|
		MBIN_FILE_SOURCE	= science.cockpit_d.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref[34]'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-0.9},
					{'TransY',		2.5},
					{'TransZ',		-0.6},
					{'RotZ',		-90},
					{'ScaleX', 		0.8},
					{'ScaleY', 		0.8},
					{'ScaleZ', 		0.8}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref4'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.9},
					{'RotZ',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'Trail.-'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		1.8692},	-- 2.069246
					{'TransZ',		-2.019},	-- -2.51901
					{'RotX',		0}			-- 30.782648
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Number_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-38.173},
					{'RotY',		0}
				}
			}
		}
	},
	{--	|Scientific cockpitA alignments|
		MBIN_FILE_SOURCE	= science.cockpit_a.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref[12]'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-0.32},
					{'TransY',		0.952},
					{'TransZ',		-0.48},
					{'RotZ',		-18},
					{'ScaleX', 		0.7},
					{'ScaleY', 		0.7},
					{'ScaleZ', 		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref2'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.32},
					{'RotZ',		18}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.055},
					{'TransY',		1.5},
					{'RotX',		0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail1'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.055},
					{'TransY',		1.5},
					{'RotX',		0}
				}
			}
		}
	},
	{--	|Scientific cockpitA back decals| fix
		MBIN_FILE_SOURCE	= science.cockbck_a.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', '_logo[12]_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		3.26},	-- 2.65596
					{'TransZ',		-4.72},	-- -3.72796
				}
			}
		}
	},
	{--	|Scientific subwing_E logo| fix
		MBIN_FILE_SOURCE	= {
			science.s_wing_el.src,
			science.s_wing_er.src,
		},
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ', 		0.6}
				}
			}
		}
	},
	{-- |wing_I decals| fix
		MBIN_FILE_SOURCE	= science.wing_il.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo[12]_A[12]'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.1},
					{'RotX',		90},
					{'RotY',		90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	},
	{-- |wing_I decals| fix
		MBIN_FILE_SOURCE	= science.wing_ir.src,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo[12]_A[12]'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.1},
					{'RotX',		-90},
					{'RotY',		90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	}
}},
	{
		MBIN_CHANGE_TABLE = (
			function()
				T = {}
				for _,part in pairs(science) do
					if not part.skip then
						local inx = #T+1
						T[inx] = {
							MBIN_FILE_SOURCE	= part.src,
							MXML_CHANGE_TABLE	= {
								{
									SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
									VALUE_CHANGE_TABLE 	= {
										{'Value',		4}
									}
								}
							}
						}
						local mct = T[inx].MXML_CHANGE_TABLE
						if not part.lod1 then
							mct[#mct+1] = {
								SPECIAL_KEY_WORDS 	= {'Name', 'LODDIST[1-3]'},
								REMOVE				= 'Section'
							}
						end
						if part.add then
							mct[#mct+1] = {
								SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
								ADD_OPTION			= 'AddAfterSection',
								ADD 				= ToMxml({
									meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
									Name	= 'ATTACHMENT',
									Value	= 'MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN'
								})
							}
						end
					end
				end
				return T
			end
		)()
	}
}}