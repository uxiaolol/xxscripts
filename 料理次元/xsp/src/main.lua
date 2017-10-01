require "level"

init(0,1)
mSleep(1000)

local ui = require "G_ui"
init("0",1)
local w_,h_ = getScreenSize() --w < h
local h = w_
local w = h_
ui:new(w,h)
local p = ui:newPage("通用设置v0.0.8")
p:newLine()
p:addLebel(2,1,"感谢G_UI") 
p:newLine()
p:addLebel(2,1,"关卡选择:") 
p:addComboBox(2,1,"关卡","0","欧罗巴-6","美利坚-6","和风岛-6","次元小屋-6")
  
p:newLine()
p:addLebel(2,1,"套餐选择:") 
p:addComboBox(2,1,"套餐","0","套餐1","套餐2","套餐3","套餐4")
p:newLine()

p:newLine()
p:addLebel(2,1,"寄售选择:") 
p:addComboBox(2,1,"寄售","0","寄售","自己用")
p:newLine()
local ret,result = ui:show()
if ret == 0 then lua_exit() end

--print(result)
if result.关卡 == "欧罗巴-6" then
	欧罗巴1_6(result.套餐,result.寄售)
elseif result.关卡 == "美利坚-6" then 
	美利坚1_6(result.套餐,result.寄售)
elseif result.关卡 == "和风岛-6" then 	
	和风岛1_6(result.套餐,result.寄售)
elseif result.关卡 == "次元小屋-6" then
	次元小屋1_6(result.套餐,result.寄售)
	
end



