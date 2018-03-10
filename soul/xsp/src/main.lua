require "soul_function"
init ("0",0)
mSleep(2000)
local ret,result = showUI("ui.json");

if ret == 0 then lua_exit() end



匹配(result.Edit1,result.Edit2,result.Edit3)

