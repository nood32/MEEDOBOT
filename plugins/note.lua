
--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--
local function run(msg,matches)
local takween = "ipex"..msg.from.id
if matches[1] == "اضف مذكرة" then
redis:set(takween,matches[2])
delete_msg(msg.id, ok_cb, false)
local reply = "🙂مرحباً "..msg.from.first_name.."\n".."\n تم حفظ مذكرتك بنجاح ✅ \n \n █ ██ █ ███ █ ██ █ ██ \n \n 📪/المذكرة لكي ارسل اليك مذكرتك \n 📪/حذف المذكرة لكي اخذف مذكرتك  "
return reply_msg(msg.id, reply, ok_cb, false)
end
if matches[1] == "حذف المذكرة" then
redis:del(takween)
local reply = "👻مرحباً "..msg.from.first_name.."\n تم حذف 📥 مذكرتك بنحاح 👍\n \n To Creat New Note /setnote <Your note>"
return reply_msg(msg.id, reply, ok_cb, false)
end
if matches[1] == "المذكرة" then
local note = "🏃🏻مرحباً "..msg.from.first_name.."\n 📥 مذكرتك هية \n \n "..redis:get(takween)
local id = msg.from.id
send_large_msg("user#id"..msg.from.id,note)
local reply = "🏃🏻مرحباً "..msg.from.first_name.."\n تم ارسال مذكرتك 📥 الئ الخاص 📪 \n \n 🏃🏻لكن اذ لم تصلك المذكرة 🙁 أرسل الي في الخاص اي شي  🙈 \n أو انشاء مذكرتك عن طريق (اضف مذكرة) وشكراً 😌🌸 "
return reply_msg(msg.id, reply, ok_cb, false)
end
end

return {
    patterns = {
        "^(اضف مذكرة) (.+)$",
        "^(حذف مذكرة)$",
        "^(المذكرة)$"
    },
    run = run
}

--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--
