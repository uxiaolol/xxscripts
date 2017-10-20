local ui = require "G_ui"
--ui_ref = true
init("0",1)
local w_,h_ = getScreenSize() --w < h
local h = w_
local w = h_
--主ui界面

ui:new(w,h)

  local p = ui:newPage("通用设置")
  p:newLine()
  p:addLebel(2,1,"功能选项:") 
  p:addComboBox(2.5,1,"总功能","0","做全部任务","只抢红包")
  
  p:newLine()
  local b = p:newBox(10,0.5)
  b:addCheckBoxGroup(8,7,"通用","0@1@2@3","自动抢红包","保持前台","领取奖励") --,"多账号登录"
  p:newLine()
  p:addLebel(2,1,"抢红包设置:") 
  p:addComboBox(2.5,1,"抢红包","0","省电模式","一般模式","极速模式")

local p = ui:newPage("单人任务")
local creat_renwu_ui = function(text,n)
  p:addCheckBoxGroup_single(2.5,1,text,"0",text)
  --p:newLine()
  p:addLebel(0.8,1,"顺序:")
  p:addComboBox(1.1,1,text.."顺序",tostring(n),"1","2","3","4","5","6","7","8","9","10")
end

  p:newLine()
  p:addLebel(2,1,"单人设置:") 
  local b = p:newBox(10,0.5)
  b:addCheckBoxGroup(8,7,"单人设置","0@1@2@3","自动退队")
  p:newLine()
  p:addLebel(2,1,"主线选项:") 
  p:newLine()
  creat_renwu_ui("主线任务",0) p:addLebel(0.3,1,"") creat_renwu_ui("菊爆大队",1)
  p:newLine()
  p:addLebel(2,1,"日常选项:") 
  p:newLine()
  creat_renwu_ui("职业任务",2) p:addLebel(0.3,1,"") creat_renwu_ui("特殊职业",3)
  p:newLine()
  creat_renwu_ui("考古任务",4) p:addLebel(0.3,1,"") creat_renwu_ui("挖宝",5)
  p:newLine()
  creat_renwu_ui("公会任务",6) p:addLebel(0.3,1,"") creat_renwu_ui("冰封王座",7)
  p:newLine()
  creat_renwu_ui("暗夜马戏团",8)
  p:addLebel(0.3,1,"")
  p:addLebel(2.3,1,"探索战斗次数:") p:addComboBox(1.1,1,"探索战斗次数","2","1","2","3","4","5","10","15","20") p:addLebel(0.8,1,"次")
p = ui:newPage("组队任务")
  p:newLine()
  p:addLebel(3,1,"日常副本选项:") 
  p:newLine()
  creat_renwu_ui("日常副本",9)
  local b = p:newBox(10,0.5)
  b:addCheckBoxGroup(8,7,"日常副本设置","0@1@2@3","自动组队","自动领双","踢离线")
  p:newLine()
  p:addLebel(2.5,1,"最少队伍人数:") p:addComboBox(1,1,"日常副本人数","2","3","4","5") p:addLebel(0.8,1,"人")

local ret,result = ui:show()

if ret == 0 then lua_exit() end
print(result)