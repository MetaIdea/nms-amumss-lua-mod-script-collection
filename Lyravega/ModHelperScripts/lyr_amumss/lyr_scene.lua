--#region SCENE TOOLS

dofile('lyr_amumss/lyr_scene/lyr_dupeBuilding.lua')
dofile('lyr_amumss/lyr_scene/lyr_dupeScene.lua')

local __eq = function(self, other) for k, v in next, self do if other[k] ~= v then return false end end; return true end
local __sub = function(self, other) local t = {}; for k, v in next, self do if type(v) ~= "table" and other[k] ~= v then t[k] = v end end; return t end
local __bnot = function(self) local t = {}; for k, v in next, self do if type(v) ~= "table" then t[k] = v end end; return t end
local __shl; __shl = function(self, other) for k, v in next, other do self[k] = type(v) == "table" and __shl(v) or v end; return self end
local __shr; __shr = function(self, other) for k, v in next, self do other[k] = type(v) == "table" and __shr(v) or v end; return other end

---@alias VariableSizeString string
---@alias NMSString0x10 string
---@alias SByte integer
---@alias UInt32 integer

---@alias transformTable {TransX:nil|number, TransY:nil|number, TransZ:nil|number, RotX:nil|number, RotY:nil|number, RotZ:nil|number, ScaleX:nil|number, ScaleY:nil|number, ScaleZ:nil|number}

---@class TkSceneNodeAttributeData
---@field Name NMSString0x10
---@field Value VariableSizeString
TkSceneNodeAttributeData = {}; setmetatable(TkSceneNodeAttributeData, {__index = TkSceneNodeAttributeData, __eq = __eq, __sub = __sub, __bnot = __bnot, __shl = __shl, __shr = __shr})

---@param Name nil|NMSString0x10
---@param Value nil|VariableSizeString
---@return TkSceneNodeAttributeData
function TkSceneNodeAttributeData:new(Name, Value)
	---@type TkSceneNodeAttributeData
	local t = {
		Name = Name or "lyr_attName",
		Value = Value or "lyr_attVal",
	}

	return setmetatable(t, getmetatable(self))
end

---@class TkTransformData
---@field TransX number
---@field TransY number
---@field TransZ number
---@field RotX number
---@field RotY number
---@field RotZ number
---@field ScaleX number
---@field ScaleY number
---@field ScaleZ number
TkTransformData = {}; setmetatable(TkTransformData, {__index = TkTransformData, __eq = __eq, __sub = __sub, __bnot = __bnot, __shl = __shl, __shr = __shr})

---@param transformTable nil|transformTable
---@return TkTransformData
function TkTransformData:new(transformTable)
	---@type TkTransformData
	local t = transformTable and {
		TransX = transformTable.TransX ~= nil and transformTable.TransX or 0,
		TransY = transformTable.TransY ~= nil and transformTable.TransY or 0,
		TransZ = transformTable.TransZ ~= nil and transformTable.TransZ or 0,
		RotX = transformTable.RotX ~= nil and transformTable.RotX or 0,
		RotY = transformTable.RotY ~= nil and transformTable.RotY or 0,
		RotZ = transformTable.RotZ ~= nil and transformTable.RotZ or 0,
		ScaleX = transformTable.ScaleX ~= nil and transformTable.ScaleX or 1,
		ScaleY = transformTable.ScaleY ~= nil and transformTable.ScaleY or 1,
		ScaleZ = transformTable.ScaleZ ~= nil and transformTable.ScaleZ or 1,
	} or {
		TransX = 0,
		TransY = 0,
		TransZ = 0,
		RotX = 0,
		RotY = 0,
		RotZ = 0,
		ScaleX = 1,
		ScaleY = 1,
		ScaleZ = 1,
	}

	return setmetatable(t, getmetatable(self))
end

---@class TkSceneNodeData
---@field Name VariableSizeString
---@field NameHash UInt32
---@field Type NMSString0x10
---@field Transform TkTransformData
---@field PlatformExclusion SByte
---@field Attributes TkSceneNodeAttributeData[]
---@field Children TkSceneNodeData[]
TkSceneNodeData = {}; setmetatable(TkSceneNodeData, {__index = TkSceneNodeData, __eq = __eq, __sub = __sub, __bnot = __bnot, __shl = __shl, __shr = __shr})

---@param Name nil|VariableSizeString
---@param Type nil|NMSString0x10
---@param Transform nil|TkTransformData
---@param PlatformExclusion nil|SByte
---@param Attributes nil|TkSceneNodeAttributeData[]
---@param Children nil|TkSceneNodeData[]
---@return TkSceneNodeData
function TkSceneNodeData:new(Name, Type, Transform, PlatformExclusion, Attributes, Children)
	---@type TkSceneNodeData
	local t = {
		Name = Name or "lyr_nodeName",
		NameHash = Name and lyr:generateJenkinsHash(Name) or 0,
		Type = Type or "lyr_nodeType",
		Transform = Transform or TkTransformData:new(),
		PlatformExclusion = PlatformExclusion or 0,
		Attributes = Attributes or {},
		Children = Children or {},
	}

	return setmetatable(t, getmetatable(self))
end

---@param o TkSceneNodeAttributeData
function TkSceneNodeData:addAttribute(o)
	self.Attributes[#self.Attributes+1] = o
end

---@param o TkSceneNodeData
function TkSceneNodeData:addChild(o)
	self.Children[#self.Children+1] = o
end

local templates = {lastNode = nil}
templates.attribute = {
	init = false,
	data = TkSceneNodeAttributeData:new(),
	section = "lyr_templates_attribute",
}
templates.attribute.directive = {
	mbinPaths = [[MODELS\COMMON\UTILS\SPAWNERS\FAKEOUTPOST.SCENE.EXML]],
	comment = "Generating attribute template",
	{
		pkw = [[<Property value="TkSceneNodeAttributeData.xml">]],
		copySection = templates.attribute.section
	},
	{
		editSection = templates.attribute.section,
		fields = templates.attribute.data
	}
}
templates.node = {
	init = false,
	data = TkSceneNodeData:new(),
	section = "lyr_templates_node"
}
templates.node.directive = {
	mbinPaths = [[MODELS\COMMON\UTILS\SPAWNERS\FAKEOUTPOST.SCENE.EXML]],	-- a random, small scene
	comment = "Generating node template",
	--#region NODE TEMPLATE
	{
		pkw = [[<Property value="TkSceneNodeData.xml">]],	-- a random child node
		copySection = templates.node.section,
	},
	{
		editSection = templates.node.section,
		fields = ~templates.node.data	-- yes, yes I did
	},
	{
		editSection = templates.node.section,
		pkw = "Transform",
		fields = templates.node.data.Transform
	},
	{
		editSection = templates.node.section,
		pkw = "Children",
		purgeHeader = true
	},
	{
		editSection = templates.node.section,
		pkw = "Attributes",
		purgeHeader = true
	}
}

---@param mbinPath string
---@param ... string
function lyr:sceneTools(mbinPath, ...)
	local directives = setmetatable({mergeTweaks = true}, {__add = function(_t, t) for i=1, #t do _t[#_t+1] = t[i] end return _t end})
	local commands = {}
	mbinPath = ... and {mbinPath, ...} or mbinPath

	if not templates.attribute.init or not templates.node.init then
		templates.attribute.init = true
		templates.node.init = true

		directives = directives + {templates.attribute.directive}
		directives = directives + {templates.node.directive}
	end

	directives[#directives+1] = {mbinPaths = mbinPath}
	local directive = directives[#directives]	-- no need for additional subtables since mbinPaths stays the same, see commented directive lines below

	function commands:insertAttribute(parentNodeName)
		parentNodeName = parentNodeName or templates.lastNode; templates.lastNode = parentNodeName
		local attributeCommands = {}

		---@param attributeData TkSceneNodeAttributeData
		local _insertAttribute = function(attributeData)
			-- local directive = {mbinPaths = mbinPath}

			directive[#directive+1] = {
				pkw = "Attributes",
				skw = parentNodeName and {"Name", parentNodeName} or nil,
				-- pasteSectionBottom = templates.attribute.section
				pasteSection = templates.attribute.section
			}
			directive[#directive+1] = {
				skw = {"Name", templates.attribute.data.Name},
				match = {value = "lyr", option = "~=", type = "STRING"},
				fields = attributeData - templates.attribute.data
			}

			-- directives = directives + {directive}
		end

		---@param entityPath string
		function attributeCommands:attachment(entityPath)
			_insertAttribute(TkSceneNodeAttributeData:new("ATTACHMENT", lyr:replaceEXML(entityPath))); return commands
		end

		---@param referenceMbinPath string
		function attributeCommands:scenegraph(referenceMbinPath)
			_insertAttribute(TkSceneNodeAttributeData:new("SCENEGRAPH", lyr:replaceEXML(referenceMbinPath))); return commands
		end

		---@param embed boolean
		function attributeCommands:embedgeometry(embed)
			_insertAttribute(TkSceneNodeAttributeData:new("SCENEGRAPH", embed == true and "TRUE" or "FALSE")); return commands
		end

		---@param type "Sphere"|"Box"
		function attributeCommands:type(type)
			_insertAttribute(TkSceneNodeAttributeData:new("TYPE", type)); return commands
		end

		---@param radius number
		function attributeCommands:radius(radius)
			_insertAttribute(TkSceneNodeAttributeData:new("RADIUS", tostring(radius))); return commands
		end

		---@param width number
		function attributeCommands:width(width)
			_insertAttribute(TkSceneNodeAttributeData:new("WIDTH", tostring(width))); return commands
		end

		---@param height number
		function attributeCommands:height(height)
			_insertAttribute(TkSceneNodeAttributeData:new("HEIGHT", tostring(height))); return commands
		end

		---@param depth number
		function attributeCommands:depth(depth)
			_insertAttribute(TkSceneNodeAttributeData:new("DEPTH", tostring(depth))); return commands
		end

		---@param attributeName string
		---@param attributeValue string|number
		function attributeCommands:custom(attributeName, attributeValue)
			_insertAttribute(TkSceneNodeAttributeData:new(attributeName, tostring(attributeValue))); return commands
		end

		function attributeCommands:done()
			return directives
		end

		return attributeCommands
	end

	---@param parentNodeName nil|string
	---@param nodeName nil|string
	---@param transform nil|TkTransformData|transformTable
	function commands:insertNode(parentNodeName, nodeName, transform)
		nodeName = nodeName or templates.lastNode; templates.lastNode = nodeName
		local nodeCommands = {}

		---@param nodeData TkSceneNodeData
		local _insertNode = function(nodeData)
			-- local directive = {mbinPaths = mbinPath}

			directive[#directive+1] = {
				editSection = templates.node.section,
				copySection = true
			}
			directive[#directive+1] = {
				editSection = true,
				fields = nodeData - templates.node.data
			}
			if nodeData.Transform ~= templates.node.data.Transform then
			directive[#directive+1] = {
				editSection = true,
				fields = nodeData.Transform - templates.node.data.Transform
			} end
			if #nodeData.Attributes > 0 then for i = 1, #nodeData.Attributes do
			directive[#directive+1] = {
				editSection = true,
				pkw = "Attributes",
				-- pasteSectionBottom = templates.attribute.section
				pasteSection = templates.attribute.section
			}
			directive[#directive+1] = {
				editSection = true,
				skw = {"Name", templates.attribute.data.Name},
				match = {value = "lyr", option = "~=", type = "STRING"},
				fields = nodeData.Attributes[i] - templates.attribute.data
			} end end
			directive[#directive+1] = {
				skw = parentNodeName and {"Name", parentNodeName} or nil,
				pkw = "Children",
				-- pasteSectionBottom = true
				pasteSection = true
			}

			-- directives = directives + {directive}
		end

		---@param referenceMbinPath string
		function nodeCommands:reference(referenceMbinPath)
			local nodeData = TkSceneNodeData:new(nodeName, "REFERENCE", TkTransformData:new(transform))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("SCENEGRAPH", lyr:replaceEXML(referenceMbinPath)))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("EMBEDGEOMETRY", "TRUE"))
			_insertNode(nodeData); return commands
		end

		function nodeCommands:locator()
			local nodeData = TkSceneNodeData:new(nodeName, "LOCATOR", TkTransformData:new(transform))
			_insertNode(nodeData); return commands
		end

		---@param entityPath string
		function nodeCommands:entityLocator(entityPath)
			local nodeData = TkSceneNodeData:new(nodeName, "LOCATOR", TkTransformData:new(transform))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("ATTACHMENT", lyr:replaceEXML(entityPath)))
			_insertNode(nodeData); return commands
		end

		---@param width number
		---@param height number
		---@param depth number
		function nodeCommands:boxCollision(width, height, depth)
			local nodeData = TkSceneNodeData:new(nodeName, "COLLISION", TkTransformData:new(transform))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("TYPE", "Box"))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("WIDTH", tostring(width)))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("HEIGHT", tostring(height)))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("DEPTH", tostring(depth)))
			_insertNode(nodeData); return commands
		end

		---@param radius number
		function nodeCommands:sphereCollision(radius)
			local nodeData = TkSceneNodeData:new(nodeName, "COLLISION", TkTransformData:new(transform))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("TYPE", "Sphere"))
			nodeData:addAttribute(TkSceneNodeAttributeData:new("RADIUS", tostring(radius)))
			_insertNode(nodeData); return commands
		end

		---@param nodeType string
		function nodeCommands:custom(nodeType)
			local nodeData = TkSceneNodeData:new(nodeName, nodeType, TkTransformData:new(transform))
			_insertNode(nodeData); return commands
		end

		function nodeCommands:done()
			return directives
		end

		return nodeCommands
	end

	function commands:done()
		return directives
	end

	return commands
end

--#endregion
-- END OF SCENE TOOLS