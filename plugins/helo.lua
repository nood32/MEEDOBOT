--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--
do
    
local function mohammedboss(msg,matches)
       if matches[1] == "chat_add_user"  then 
     local text = 'اهلا 😊👋 بك عزيزي في المجموعة 👥🔕'..'\n'..'\n'
     ..'المعلومات 📋 الخاصة بك 🔷'..'\n'
    ..'📌 اسمك :  '..msg.action.user.print_name..'\n'
    ..'📌 معرفك : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'💭 الايدي : '..msg.action.user.id..'\n'
    ..'📱رقم الهاتف : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 اسم المجموعة : '..msg.to.title..'\n'
    ..'💭 ايدي المجموعة : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'✝ ضافك : '..msg.from.print_name..'\n'
    ..'✝ معرفة : @'..(msg.from.username or "لا يوجد")..'\n'
..' ايدية 🆔 : '..msg.from.id..'\n'
    ..'📱 رقم هاتفةة : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مطور البوت : @meedo1133'..'\n'
    ..'🤖 معرف البوت : 'msg.to.username''..'\n'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
        local text = 'اهلا 😊👋 بك عزيزي في المجموعة 👥🔕'..'\n'..'\n'
     ..'المعلومات 📋 الخاصة بك 🔷'..'\n'
    ..'📌 اسمك :  '..msg.from.print_name..'\n'
    ..'📌 معرفك : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'💭 الايدي : '..msg.from.id..'\n'
    ..'📱رقم الهاتف : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 اسم المجموعة : '..msg.to.title..'\n'
    ..'💭 ايدي المجموعة : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 الوقت : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مطور البوت : @meedo1133'..'\n'
    ..'🤖 معرف البوت : 'msg.to.username''..'\n'..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_del_user" then
        local text = 'الـلـه ويـاك يـا عـزيـزي 😁\n '..msg.action.user.first_name..'\n' ..'|🗣| مــعــرفــك | @'..(msg.action.user.username or "لا يوجد")..'\n' ..'|🎐| ايــديــك | '..msg.action.user.id..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = run,
}
end
--[[
✄╔═╗╔═╗─────╔═══╗──╔══╗──╔════╗dev:@meedo1133
✄║║╚╝║║─────╚╗╔╗║──║╔╗║──║╔╗╔╗║dev:@hema1133
✄║╔╗╔╗╠══╦══╗║║║╠══╣╚╝╚╦═╩╣║║╚╝cha:@meedoyemen
✄║║║║║║║═╣║═╣║║║║╔╗║╔═╗║╔╗║║║  fbk:@mmalhossainy 
✄║║║║║║║═╣║═╬╝╚╝║╚╝║╚═╝║╚╝║║║  gml:meedoyemen@gmail.com
✄╚╝╚╝╚╩══╩══╩═══╩══╩═══╩══╝╚╝  inst:@meedoyemen
]]--

