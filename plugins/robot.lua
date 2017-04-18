
--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--
local function is_channel_disabled( receiver )
	if not _config.disabled_channels then
		return false
	end

	if _config.disabled_channels[receiver] == nil then
		return false
	end

  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
	if not _config.disabled_channels then
	   _config.disabled_channels = {}
	end

	if _config.disabled_channels[receiver] == nil then
	return 'الـبـوت بـالـتـاكـيـد تـم ✅ تـشـغـيـله فـي الـمـجـمـوعـه 👥  \n 👨‍✈️ المطور : @meedo1133'
	end
	
	_config.disabled_channels[receiver] = false

	save_config()
	return "تــم ✅ تـشـغـيـل الـبـوت فــي الـمـجـمـوعـه  \n 👨‍✈️ المطور : @meedo1133 👥"
end

local function disable_channel( receiver )
	if not _config.disabled_channels then
       _config.disabled_channels = {}
	end
	
	_config.disabled_channels[receiver] = true

	save_config()
	return "تــم ✅ اطـفـاء الـبـوت فـي الـمــجـمـوعـه 👥 راجع المطور  \n 👨‍✈️ المطور : @meedo1133 "
end

local function pre_process(msg)
	local receiver = get_receiver(msg)
	
	-- If sender is moderator then re-enable the channel
	--if is_sudo(msg) then
	if is_momod(msg) then
	  if msg.text == "تشغيل البوت" then
	    enable_channel(receiver)
	  end
	end

  if is_channel_disabled(receiver) then
  	msg.text = ""
  end

	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	-- Enable a channel
	if matches[1] == 'تشغيل البوت'  then
		return enable_channel(receiver)
	end
	-- Disable a channel
	if matches[1] == 'اطفاء البوت' then
		return disable_channel(receiver)
	end
end

return {
	description = "Plugin to manage Bot.", 
	usage = {
		"Bot on: enable BOT In a Group",
		"Bot off: disable Bot In a Group" },
	patterns = {
		"^(تشغيل البوت)",
		"^(اطفاء البوت)", 
		"^[#!/](تشغيل البوت)",
		"^[#!/](اطفاء البوت)"
	}, 
	run = run,
	privileged = true,
	--moderated = true,
	pre_process = pre_process
}

--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--
