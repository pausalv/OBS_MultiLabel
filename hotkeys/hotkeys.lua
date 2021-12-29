--[[
      OBS Studio Lua script : Control the switches of the lower thirds with hotkeys
      Author: NoeAL
      Version: 0.2
      Released: 2020-09-28
--]]


local obs = obslua
local debug
local hk = {}

local hotkeyPunt1 = 0
local hotkeyPunt2 = 0
local hotkeyPunt3 = 0
local hotkeyPunt4 = 0
local hotkeyPunt5 = 0
local hotkeyPunt6 = 0
local hotkeyPunt7 = 0
local hotkeyPunt8 = 0
local hotkeyPunt9 = 0
local hotkeyPunt10 = 0
local hotkeyPunt11 = 0
local hotkeyPunt12 = 0
local hotkeyPunt13 = 0
local hotkeyPunt14 = 0
local hotkeyPunt15 = 0

-- if you are extending the script, you can add more hotkeys here
-- then add actions in the 'onHotKey' function further below
local hotkeys = {
	PUNT1 = "Punt 1",
	PUNT2 = "Punt 2",
	PUNT3 = "Punt 3",
	PUNT4 = "Punt 4",
	PUNT5 = "Punt 5",
	PUNT6 = "Punt 6",
	PUNT7 = "Punt 7",
	PUNT8 = "Punt 8",
	PUNT9 = "Punt 9",
	PUNT10 = "Punt 10",
	PUNT11 = "Punt 11",
	PUNT12 = "Punt 12",
	PUNT13 = "Punt 13",
	PUNT14 = "Punt 14",
	PUNT15 = "Punt 15",
}

-- add any custom actions here
local function onHotKey(action)
	--obs.timer_remove(rotate)
	if debug then obs.script_log(obs.LOG_INFO, string.format("Hotkey : %s", action)) end

	if action == "PUNT1" then
		if hotkeyPunt1 == 0 then
			hotkeyPunt1 = 1
		else
			hotkeyPunt1 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT2" then
		if hotkeyPunt2 == 0 then
			hotkeyPunt2 = 1
		else
			hotkeyPunt2 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT3" then
		if hotkeyPunt3 == 0 then
			hotkeyPunt3 = 1
		else
			hotkeyPunt3 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT4" then
		if hotkeyPunt4 == 0 then
			hotkeyPunt4 = 1
		else
			hotkeyPunt4 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT5" then
		if hotkeyPunt5 == 0 then
			hotkeyPunt5 = 1
		else
			hotkeyPunt5 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT6" then
		if hotkeyPunt6 == 0 then
			hotkeyPunt6 = 1
		else
			hotkeyPunt6 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT7" then
		if hotkeyPunt7 == 0 then
			hotkeyPunt7 = 1
		else
			hotkeyPunt7 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT8" then
		if hotkeyPunt8 == 0 then
			hotkeyPunt8 = 1
		else
			hotkeyPunt8 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT9" then
		if hotkeyPunt9 == 0 then
			hotkeyPunt9 = 1
		else
			hotkeyPunt9 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT10" then
		if hotkeyPunt10 == 0 then
			hotkeyPunt10 = 1
		else
			hotkeyPunt10 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT11" then
		if hotkeyPunt11 == 0 then
			hotkeyPunt11 = 1
		else
			hotkeyPunt11 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT12" then
		if hotkeyPunt12 == 0 then
			hotkeyPunt12 = 1
		else
			hotkeyPunt12 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT13" then
		if hotkeyPunt13 == 0 then
			hotkeyPunt13 = 1
		else
			hotkeyPunt13 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT14" then
		if hotkeyPunt14 == 0 then
			hotkeyPunt14 = 1
		else
			hotkeyPunt14 = 0
		end
		update_hotkeys_js()
	elseif action == "PUNT15" then
		if hotkeyPunt15 == 0 then
			hotkeyPunt15 = 1
		else
			hotkeyPunt15 = 0
		end
		update_hotkeys_js()
	end
end


-- write settings to js file
function update_hotkeys_js()
    if debug then obs.script_log(obs.LOG_INFO, string.format("Final update_hotkeys_js()")) end
	local output = assert(io.open(script_path() .. '../common/js/hotkeys.js', "w"))
    output:write('hotkeyPunt1 = '.. hotkeyPunt1 .. ';\n')
	output:write('hotkeyPunt2 = '.. hotkeyPunt2 .. ';\n')
	output:write('hotkeyPunt3 = '.. hotkeyPunt3 .. ';\n')
	output:write('hotkeyPunt4 = '.. hotkeyPunt4 .. ';\n')
	output:write('hotkeyPunt5 = '.. hotkeyPunt5 .. ';\n')
	output:write('hotkeyPunt6 = '.. hotkeyPunt6 .. ';\n')
	output:write('hotkeyPunt7 = '.. hotkeyPunt7 .. ';\n')
	output:write('hotkeyPunt8 = '.. hotkeyPunt8 .. ';\n')
	output:write('hotkeyPunt9 = '.. hotkeyPunt9 .. ';\n')
	output:write('hotkeyPunt10 = '.. hotkeyPunt10 .. ';\n')
	output:write('hotkeyPunt11 = '.. hotkeyPunt11 .. ';\n')
	output:write('hotkeyPunt12 = '.. hotkeyPunt12 .. ';\n')
	output:write('hotkeyPunt13 = '.. hotkeyPunt13 .. ';\n')
	output:write('hotkeyPunt14 = '.. hotkeyPunt14 .. ';\n')
	output:write('hotkeyPunt15 = '.. hotkeyPunt15 .. ';\n')
	output:close()
	if debug then obs.script_log(obs.LOG_INFO, string.format("Final update_hotkeys_js()")) end
end

----------------------------------------------------------

-- called on startup
function script_load(settings)
	function pairsByKeys (t, f)
		local a = {}
		for n in pairs(t) do table.insert(a, n) end
		table.sort(a, f)
		local i = 0
		local iter = function ()
		  i = i + 1
		  if a[i] == nil then return nil
		  else return a[i], t[a[i]]
		  end
		end
		return iter
	end	

	for name, line in pairsByKeys(hotkeys) do
		hk[name] = obs.obs_hotkey_register_frontend(name, line, function(pressed) if pressed then onHotKey(name) end end)
		local hotkeyArray = obs.obs_data_get_array(settings, name)
		obs.obs_hotkey_load(hk[name], hotkeyArray)
		obs.obs_data_array_release(hotkeyArray)
	end	
	update_hotkeys_js()
end


-- called on unload
function script_unload()
end


-- called when settings changed
function script_update(settings)
	debug = obs.obs_data_get_bool(settings, "debug")
end


-- return description shown to user
function script_description()
	return "Control the switches of the lower thirds with hotkeys"
end


-- define properties that user can change
function script_properties()
	local props = obs.obs_properties_create()
	obs.obs_properties_add_bool(props, "debug", "Debug")
	return props
end


-- set default values
function script_defaults(settings)
	obs.obs_data_set_default_bool(settings, "debug", false)
end


-- save additional data not set by user
function script_save(settings)
	for k, v in pairs(hotkeys) do
		local hotkeyArray = obs.obs_hotkey_save(hk[k])
		obs.obs_data_set_array(settings, k, hotkeyArray)
		obs.obs_data_array_release(hotkeyArray)
	end
end