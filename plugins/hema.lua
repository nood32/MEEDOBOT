do 

local function run(msg, matches) 
 local sudo = 346991920
 local r = get_receiver(msg)
  send_large_msg(r, "هذا انفاسي وتاج 😍😍راسي والي برمجني واعاد نظامي اصبر ☹️🖐🏿 هسة اناديه اسوي له رساله للخاص  كرمال لعيونك  🌝🍷\n\n هيمـــــــــــــــــا يا قلب  😍")
  send_large_msg("user#id"..sudo, "🎴 حبيبي هناك شخص 👤 بحاجة اليك ☑\n\n ".."⛔ المعرف : @"..msg.from.username.."\n 🔋 الايدي : "..msg.from.id.."\n 📋 اسم المجموعة : "..msg.to.title.."\n 🆔 ايدي المجموعة : "..msg.from.id..'\n 🕚 الوقت : '..os.date(' %T*', os.time())..'\n 📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp))
end 

return { 
  patterns = { 
     "^(هيما)$" 
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
