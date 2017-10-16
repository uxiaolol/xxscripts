require "daily"
init(0,1)
mSleep(1000)

local ui = require "G_ui"
local w_,h_ = getScreenSize() --w < h


if w_~= 720 and w_~=1280 then
	dialog("设备分辨率不正确",5)
	lua_exit() 
end
local h = w_
local w = h_

ui:new(w,h)

local p = ui:newPage("通用设置v0.0.1")
p:newLine()
p:addLebel(2,1,"功能选项") 
p:newLine()
local b = p:newBox(10,0.5)
b:addCheckBoxGroup(8,7,"任务","0@1@2@3","帮会任务","无名试炼","星寇宝藏") --,"多账号登录"
p:newLine()
p:addLebel(2,1,"挂机设置:") 
p:addComboBox(3,1,"挂机点","0","不挂机","暗结界鹏翼怪","暗结界青铜驼奴","暗结界蛰尾飞狐","驰骋之原雄骥","驰骋之原铜角飞狐","驰骋之原猛骠")
p:newLine()

local ret,result = ui:show()
if ret == 0 then lua_exit() end
--print(result)

if result.任务.帮会任务 == true then
	帮会任务()
end

if result.任务.星寇宝藏 == true then
	星寇宝藏()
end

if result.任务.无名试炼 == true then
	无名试炼()
end

if result.挂机点 ~= "不挂机" then
	野外挂机(result.挂机点)
end

