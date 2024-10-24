--#region DUPE SCENE

-- Take a scene and dupe it along with its entity and any additionally pointed entities through sub-methods<br>
-- Assumes that the scene has an entity of the same name in the 'ENTITIES\' folder
function lyr:dupeScene()
	local data, commands = {source = {}, destination = {}, extra = {alias = {}}, directives = {}}, {}

	-- `name`: The name of the scene file to be duped along with its entity, both can be accessed through keys in the return table<br>
	-- `folder`: The folder path to where the scene file resides in, defaults to 'LYR\SCENES\' if nil<br>
	function commands:sourceScene(name, folder, discardSource)
		folder = folder or [[LYR\SCENES\]]
		name = name:gsub([[.SCENE.MBIN]], "")

		data.source.sceneFolder = folder
		data.source.entityFolder = folder..name..[[\ENTITIES\]]
		data.source.scenePath = folder..name..".SCENE.MBIN"
		data.source.entityPath = folder..name..[[\ENTITIES\]]..name..[[.ENTITY.MBIN]]

		if discardSource then lyr.cleanUp[name] = {data.source.scenePath, data.source.entityPath} end

		return self
	end

	-- `name`: A custom scene and entity name to be used, both can be accessed through keys in the return table<br>
	-- `folder`: A custom folder name to store the all the duped files in, defaults to 'LYR\SCENES\' if nil<br>
	function commands:destinationScene(name, folder)
		folder = folder or [[LYR\SCENES\]]
		name = name:gsub([[.SCENE.MBIN]], "")

		data.destination.sceneFolder = folder
		data.destination.entityFolder = folder..name..[[\ENTITIES\]]
		data.destination.scenePath = folder..name..".SCENE.MBIN"
		data.destination.entityPath = folder..name..[[\ENTITIES\]]..name..[[.ENTITY.MBIN]]

		return self
	end

	-- `alias`: Is used as a key to access the duped entity path from the return table<br>
	-- `sourceName`: Points to any additional entities with this name in the same entity folder to copy<br>
	-- `destinationName`: A custom name or leave it nil, defaults to `sourceName` if nil<br>
	-- `remove`: Set to `true` to remove the source entity file after use<br>
	function commands:extraEntities(alias, sourceName, destinationName, discardSource)
		sourceName = sourceName:gsub([[.ENTITY.MBIN]], "")
		destinationName = destinationName and destinationName:gsub([[.ENTITY.MBIN]], "") or sourceName

		data.extra[alias] = {}
		data.extra[alias].entitySource = data.source.entityFolder..sourceName..[[.ENTITY.MBIN]]
		data.extra[alias].entityDestination = data.destination.entityFolder..destinationName..[[.ENTITY.MBIN]]
		data.extra.alias[alias] = data.extra[alias].entityDestination

		if discardSource then lyr.cleanUp[sourceName] = {data.extra[alias].entitySource} end

		return self
	end

	-- `...` is the scene and entity names to clean up in one directive, cleans every source file up if `nil`<br>
	-- <br>Use `nil` with care, make sure the cleaned up files won't be used any further, or specify what to clean up by passing args
	function commands:cleanUp(...)
		local cleanUpArray = {}

		if ... then
			local toCleanUp = {...}
			for i = 1, #toCleanUp do
				if lyr.cleanUp[toCleanUp[i]] then
					cleanUpArray[#cleanUpArray+1] = toCleanUp[i][1]
					cleanUpArray[#cleanUpArray+1] = toCleanUp[i][2] and toCleanUp[i][2] or nil

					lyr.cleanUp = {}
				end
			end
		else
			for cleanUpAlias, cleanUpTable in next, lyr.cleanUp do
				cleanUpArray[#cleanUpArray+1] = cleanUpTable[1]
				cleanUpArray[#cleanUpArray+1] = cleanUpTable[2] and cleanUpTable[2] or nil

				lyr.cleanUp[cleanUpAlias] = nil
			end
		end

		data.directives[#data.directives+1] = {
			mbinPaths = cleanUpArray,
			discardMbin = true
		}

		return data.directives
	end

	-- Processes the previous commands and returns a table with directives and paths for the duped files<br>
	function commands:finalize()
		data.directives[#data.directives+1] = {
			mbinPaths = {
				{data.source.scenePath, data.destination.scenePath},
				{data.source.entityPath, data.destination.entityPath},
			}
		}

		data.directives[#data.directives+1] = {
			mbinPaths = data.destination.scenePath,
			{
				specialKeyWords = {lyr.ignore, data.source.entityPath},
				match = {value = data.source.entityPath},
				fields = {
					Value = data.destination.entityPath
				}
			}
		}

		for extraEntityAlias, extraEntityPaths in next, data.extra do if extraEntityAlias ~= "alias" then
			data.directives[#data.directives+1] = {
				mbinPaths = {{extraEntityPaths.entitySource, extraEntityPaths.entityDestination}}
			}

			data.directives[#data.directives+1] = {
				mbinPaths = data.destination.scenePath,
				{
					specialKeyWords = {lyr.ignore, extraEntityPaths.entitySource},
					match = {value = extraEntityPaths.entitySource},
					fields = {
						Value = extraEntityPaths.entityDestination
					}
				}
			}
		end end

		return {
			directives = data.directives,
			entity = data.destination.entityPath,
			scene = data.destination.scenePath,
			extra = data.extra.alias
		}
	end

	return commands
end

--#endregion
-- END OF DUPE SCENE