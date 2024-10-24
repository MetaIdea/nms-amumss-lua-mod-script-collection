--#region DUPE BUILDING

function lyr:dupeBuilding()
	local commands = {}
	local data = {base = {}, new = {}, extra = {}, customize = {unlock = {}, text = {}, buildableOn = {}}, _flags = {}}
	local _return = {scenes = {}, entities = {}, extra = {}}

	---Method that processes base/source object id and paths<br><br>
	---@param baseId string Id of the source object
	---@param baseSceneName string Name of the source scene mbin file, adds '.SCENE.MBIN'
	---@param baseSceneFolder string|nil Path of the source scene folder / optional, default: 'LYR/SCENES/'
	function commands:copyFrom(baseId, baseSceneName, baseSceneFolder)
		baseSceneFolder = baseSceneFolder or [[LYR\SCENES\]]
		baseSceneName = baseSceneName:gsub([[.SCENE.MBIN]], "")

		data.base.id = baseId
		data.base._id = "_"..baseId
		data.base.unlockId = baseId
		data.base.sceneFolder = baseSceneFolder
		data.base.entityFolder = baseSceneFolder..baseSceneName..[[\ENTITIES\]]
		data.base.scenePath = baseSceneFolder..baseSceneName..".SCENE.MBIN"
		data.base.entityPath = baseSceneFolder..baseSceneName..[[\ENTITIES\]]..baseSceneName..[[.ENTITY.MBIN]]
		data.base.placementScenePath = baseSceneFolder..baseSceneName.."_PLACEMENT.SCENE.MBIN"
		data.base.placementEntityPath = baseSceneFolder..baseSceneName..[[_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN]]

		return self
	end

	---Method that processes new/destination object id and paths<br><br>
	---@param newId string New id for the destination object
	---@param newSceneName string New scene mbin name for the destination object, adds '.SCENE.MBIN'
	---@param newSceneFolder string|nil New scene folder path for the destination object / optional, default: 'LYR/SCENES/'
	function commands:pasteTo(newId, newSceneName, newSceneFolder)
		newSceneFolder = newSceneFolder or [[LYR\SCENES\]]
		newSceneName = newSceneName:gsub([[.SCENE.MBIN]], "")

		data.new.id = newId
		data.new._id = "_"..newId
		data.new.unlockId = newId
		data.new.sceneFolder = newSceneFolder
		data.new.entityFolder = newSceneFolder..newSceneName..[[\ENTITIES\]]
		data.new.scenePath = newSceneFolder..newSceneName..".SCENE.MBIN"
		data.new.entityPath = newSceneFolder..newSceneName..[[\ENTITIES\]]..newSceneName..[[.ENTITY.MBIN]]
		data.new.placementScenePath = newSceneFolder..newSceneName.."_PLACEMENT.SCENE.MBIN"
		data.new.placementEntityPath = newSceneFolder..newSceneName..[[_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN]]

		_return.scenes.newEntityScene = data.new.scenePath
		_return.scenes.newPlacementScene = data.new.placementScenePath
		_return.entities.newEntityPath = data.new.entityPath
		_return.entities.newPlacementEntityPath = data.new.placementEntityPath

		return self
	end

	---Method that adds directives to process extra entity files in the same source scene root folder. 
	---Extra entities will have their mbins duplicated and the destination scene mbin will point to these
	---duplicated entities instead<br><br>Will throw an error if used before `copyFrom(...)` or `pasteTo(...)`<br><br>
	---@param extraEntityAlias string Duplicated entity paths are stored in the `done().entities.extra` table with these keys
	---@param extraEntityBaseName string Name of the source entity file to be duplicated, no folder path, adds '.ENTITY.MBIN'
	---@param extraEntityNewName string|nil Name of the destination entity file, no folder path, adds '.ENTITY.MBIN' / optional, default: `@param extraEntityBaseName`
	---@param discardSource boolean|nil `true` discards the source entity file / optional, default: `nil`/`false` (no effect)
	function commands:dupeExtraEntities(extraEntityAlias, extraEntityBaseName, extraEntityNewName, discardSource)
		extraEntityBaseName = extraEntityBaseName:gsub([[.ENTITY.MBIN]], "")
		extraEntityNewName = extraEntityNewName and extraEntityNewName:gsub([[.ENTITY.MBIN]], "") or extraEntityBaseName

		data.extra[extraEntityAlias] = {}
		data.extra[extraEntityAlias].entitySource = data.base.entityFolder..extraEntityBaseName..[[.ENTITY.MBIN]]
		data.extra[extraEntityAlias].entityDestination = data.new.entityFolder..extraEntityNewName..[[.ENTITY.MBIN]]
		data.extra[extraEntityAlias].discardSource = discardSource

		_return.extra[extraEntityAlias] = data.extra[extraEntityAlias].entityDestination

		return self
	end

	---Method that returns a selection of sub-methods for customization
	function commands:customize()
		local options = {}

		function options:unlock()
			local unlockOptions = {}

			function unlockOptions:useOtherTreeNode(targetNodeId) data.base.unlockId = targetNodeId; return self end
			function unlockOptions:cost(unlockCost) data.customize.unlock.cost = unlockCost; data._flags.pt = true; return self end
			function unlockOptions:isAlreadyUnlocked() data.customize.unlock.isAlreadyUnlocked = true; return commands end
			function unlockOptions:isChild() data.customize.unlock.isChild = true; return commands end
			function unlockOptions:isSibling() data.customize.unlock.isSibling = true; return commands end

			return unlockOptions
		end
		function options:icon(iconPath) data.customize.icon = iconPath; data._flags.pt = true; return commands end
		function options:text(name, subtitle, description) data.customize.text = {name = name, subtitle = subtitle, description = description}; data._flags.pt = true; return commands end
		function options:buildableOn()
			local buildableOnOptions = {}

			function buildableOnOptions:planetBase(isAllowed) data.customize.buildableOn.planetBase = isAllowed; data._flags.bbot = true; return commands end
			function buildableOnOptions:freighter(isAllowed) data.customize.buildableOn.freighter = isAllowed; data._flags.bbot = true; return commands end

			return buildableOnOptions
		end

		return options
	end

	---Method that is used as the last command, returns a table that holds change table directives 
	---and a few keys that can be used in place of scene and entity mbin path values
	function commands:done()
		local directives = {}

		-- #region DUPLICATE SECTIONS: duplicate all relevant table entries and point to new scenes where necessary
		-- uses 'commands:copyFrom(...)', 'commands:pasteTo(...)'
		-- duplicate sections in multiple mbins where the section has a value with 'data.base.id' then overwrite one with 'data.new.id'
		directives[#directives+1] = {
			mbinPaths = {
				[[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
				[[METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN]],
				[[METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN]],
				[[METADATA\REALITY\CATALOGUEBUILDING.MBIN]],
				-- [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
				[[METADATA\GAMESTATE\DIFFICULTYCONFIG.EXML]],
			},
			{
				specialKeyWords = {lyr.ignore, data.base.id},
				copySection = true
			},
			{
				editSection = true,
				specialKeyWords = {lyr.ignore, data.base.id},
				match = {value = data.base.id},
				fields = {
					[lyr.ignore] = data.new.id
				}
			},
			{
				specialKeyWords = {lyr.ignore, data.base.id},
				pasteSectionAfter = true
			}
		}

		--extra directive for BASEBUILDINGOBJECTSTABLE; point to the new placement scene 'data.new.placementScenePath'
		directives[#directives+1] = {
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					Filename = data.new.placementScenePath
				}
			}
		}

		--duplicate sections in multiple mbins where the section has a value with 'data.base._id' then overwrite one with 'data.new._id'
		directives[#directives+1] = {
			mbinPaths = {
				[[METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN]],
				[[METADATA\REALITY\TABLES\BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN]],
			},
			{
				specialKeyWords = {lyr.ignore, data.base._id},
				copySection = "lyr_tempSection"
			},
			{
				specialKeyWords = {lyr.ignore, data.base._id},
				pasteSectionAfter = "lyr_tempSection"
			},
			{
				specialKeyWords = {lyr.ignore, data.base._id},
				match = {value = data.base._id},
				fields = {
					[lyr.ignore] = data.new._id
				}
			}
		}

		--extra directive for BASEBUILDINGPARTSTABLE; point to the new scene 'data.new.scenePath'
		directives[#directives+1] = {
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr.ignore, data.new._id},
				fields = {
					Filename = data.new.scenePath
				}
			}
		}

		--special directives for UNLOCKABLEITEMTREES, duplicate sections as a sibling or a children, prune duplicated children
		directives[#directives+1] = {
			mbinPaths = [[METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN]],
			{
				specialKeyWords = {lyr.ignore, data.base.unlockId},
				copySection = true
			},
			{
				editSection = true,
				pkw = "Children",
				purgeSection = true
			},
			{
				editSection = true,
				fields = {
					Unlockable = data.new.unlockId
				}
			},
			{
				specialKeyWords = {lyr.ignore, data.base.unlockId},
				precedingKeyWords = data.customize.unlock.isChild and "Children" or nil,
				pasteSection = data.customize.unlock.isChild and true or nil,
				pasteSectionAfter = not data.customize.unlock.isChild and true or nil
			}
		}

		directives[#directives+1] = {
			mbinPaths = [[METADATA\GAMESTATE\DEFAULTSAVEDATA.EXML]],
			{
				pkw1st = "KnownProducts",
				skw = {"Value", lyr.ignore},
				copySection = true
			},
			{
				editSection = true,
				fields = {
					Value = data.new.id
				}
			},
			{
				pkw = "KnownProducts",
				pasteSection = true
			}
		}

		--extra optional directives for customization
		directives[#directives+1] = data._flags.pt and {
			mbinPaths = [[METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN]],
			data.customize.text.name ~= nil and {
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					Name = data.customize.text.name:upper(),
					NameLower = data.customize.text.name,
				}
			},
			data.customize.text.subtitle ~= nil and {
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					Subtitle = data.customize.text.subtitle,
				}
			},
			data.customize.text.description ~= nil and {
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					Description = data.customize.text.description,
				}
			},
			data.customize.icon ~= nil and {
				specialKeyWords = {lyr.ignore, data.new.id, [[<Property name="Icon" value="TkTextureResource.xml">]]},
				fields = {
					Filename = data.customize.icon,
				}
			},
			data.customize.unlock.cost ~= nil and {
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					RecipeCost = data.customize.unlock.cost,
				}
			}
		}

		directives[#directives+1] = data._flags.bbot and {
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr.ignore, data.new.id},
				fields = {
					BuildableOnPlanetBase = data.customize.buildableOn.planetBase,
					BuildableOnFreighter = data.customize.buildableOn.freighter
				}
			}
		}
		--#endregion
		-- END OF DUPLICATE SECTIONS

		--#region DUPLICATE MBINS: duplicate all relevant scene and entity files and point to new entities from the scenes
		--uses 'commands:copyFrom(...)', 'commands:pasteTo(...)' and optionally 'commands:cleanUp(...)'
		--duplicate all of the entity, placement entity, scene and placement scene mbins, remove them if they're set for removal
		directives[#directives+1] = {
			mbinPaths = {
				{data.base.scenePath, data.new.scenePath},
				{data.base.entityPath, data.new.entityPath},
				{data.base.placementScenePath, data.new.placementScenePath},
				{data.base.placementEntityPath, data.new.placementEntityPath},
			}
		}

		--update the entity path in the new scene mbin
		directives[#directives+1] = {
			mbinPaths = data.new.scenePath,
			{
				specialKeyWords = {lyr.ignore, data.base.entityPath},
				match = {value = data.base.entityPath},
				fields = {
					Value = data.new.entityPath
				}
			}
		}

		--update the placement entity id in the new placement entity mbin
		directives[#directives+1] = {
			mbinPaths = data.new.placementEntityPath,
			{
				specialKeyWords = {lyr.ignore, data.base._id},
				match = {value = data.base._id},
				fields = {
					[lyr.ignore] = data.new._id
				}
			}
		}

		--update the placement entity path in the placement scene mbin
		directives[#directives+1] = {
			mbinPaths = data.new.placementScenePath,
			{
				specialKeyWords = {lyr.ignore, data.base.placementEntityPath},
				match = {value = data.base.placementEntityPath},
				fields = {
					Value = data.new.placementEntityPath
				}
			}
		}
		--#endregion
		-- END OF DUPLICATE MBINS

		--#region EXTRA ENTITY REPLACEMENTS
		--uses 'commands:replaceExtraEntities(...)'
		--for every extra specified entity, duplicate the mbins and point to the new entities from the scene mbin
		for _, extraEntityPaths in next, data.extra do
			directives[#directives+1] = {
				mbinPaths = {{extraEntityPaths.entitySource, extraEntityPaths.entityDestination, extraEntityPaths.discardSource}}
			}

			directives[#directives+1] = {
				mbinPaths = data.new.scenePath,
				{
					specialKeyWords = {lyr.ignore, extraEntityPaths.entitySource},
					match = {value = extraEntityPaths.entitySource},
					fields = {
						Value = extraEntityPaths.entityDestination
					}
				}
			}
		end
		--#endregion
		-- END OF EXTRA ENTITY REPLACEMENTS

		--#region RETURN TABLE
		--holds the change table and some relevant keys that can be used further as scene and entity values
		return {
			directives = directives,
			scenes = {
				newScenePath = _return.scenes.newEntityScene,
				newPlacementScenePath = _return.scenes.newPlacementScene
			},
			entities = {
				newEntityPath = _return.entities.newEntityPath,
				newPlacementEntityPath = _return.entities.newPlacementEntityPath,
				extra = _return.extra
			}
		}
		--#endregion
		-- END OF RETURN TABLE
	end

	return commands
end

--#endregion
-- END OF DUPE BUILDING