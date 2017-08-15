require "Utilities"
require "data_6s"


function 冒险()
	while true do
		if MulColor(主界面.体力图标) and MulColor(主界面.冒险按钮) then
			click(x,y)
		elseif MulColor(冒险界面.训练冒险) then
			click(x,y)
		elseif MulColor(关卡界面.体力消耗) or MulColor(关卡界面.体力消耗_1)then
			click(x,y)
		elseif MulColor(游戏类型.单人) then
			click(x,y)
		elseif MulColor(帮手界面.更换角色) then
			click(650,759)
		elseif MulColor(选择编队.出击按钮) then
			click(x,y)
		elseif MulColor(战斗场景.HP) then
			
			clickMove(129,804,343,456,20)
			mSleep(2000)
		elseif MulColor(关卡界面.训练冒险) then
			click(89,426)
			mSleep(1000)
			
		elseif MulColor(奖励.特别奖励) or MulColor(奖励.初次通关) then
			click(x,y)
			
		end
		
		if MulColor(提示按钮.必杀弹射) then
			click(x,y)
		elseif MulColor(提示按钮.多人联机) then
			click(x,y)
		elseif MulColor(提示按钮.好友信息) then
			click(x,y)
		elseif MulColor(扭蛋结果.背景) then
			click(x,y)
		end
	end
end