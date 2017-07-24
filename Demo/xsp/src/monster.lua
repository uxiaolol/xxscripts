require "Utilities"
require "data_720_1280"


function 主线任务()
	while true do
		if MulColor(手指指引.手指菜单) then
			click(53,587)
		elseif MulColor(手指指引.打开功能菜单) then
			click(56,598)
		elseif MulColor(手指指引.手指副本)	then
			click(261,670)
		elseif MulColor(手指指引.手指四大天王) then
			click(858,309)
		elseif MulColor(手指指引.打开精灵界面)==false and MulColor(手指指引.进入扭蛋商城) then
			click(923,660)
		elseif MulColor(手指指引.金币扭蛋) then
			click(372,581)
		elseif MulColor(手指指引.精灵面板) ==false and MulColor(手指指引.水晶扭蛋) then
			click(733,584)
		elseif MulColor(手指指引.金币扭蛋结果确定) then
			click(x,y)
		elseif MulColor(手指指引.精灵按钮界面) then
			click(1144,652)
		elseif MulColor(手指指引.打开精灵界面) then
			click(1133,650)	mSleep(1000)
			if MulColor(主界面.主线任务) then
				click(x,y)
			end
		elseif MulColor(主界面.主线任务) then
			click(x-100,y)
		elseif MulColor(对话界面.完成任务按钮)	then
			click(x,y)
		elseif MulColor(对话界面.对话跳过按钮)	then
			click(x,y)
		elseif MulColor(战斗胜利界面.战斗胜利) then
			click(x,y)
		elseif MulColor(战斗胜利界面.等级升至)	then
			click(x,y)
		elseif MulColor(精灵获取界面.关闭) then
			click(x,y)
		elseif MulColor(手指指引.关闭扭蛋界面) then
			click(1195,49)
		elseif MulColor(手指指引.计算机按钮) then
			click(1136,643)
		elseif MulColor(手指指引.选择精灵) then
			click(772,248)
		elseif MulColor(手指指引.点击加入队伍) then
			click(825,541)
		elseif MulColor(手指指引.关闭养成界面) then
			click(1209,47)
		elseif MulColor(对话界面.对话栏黄色箭头) then
			click(x,y)
		elseif MulColor(手指指引.全部技能) then
			click(659,557)
		elseif MulColor(手指指引.精灵面板) then
			click(819,559)
		elseif MulColor(手指指引.切回战斗面板) then
			click(664,562)
		elseif MulColor(手指指引.点击加速按钮) then
			click(54,132)
		elseif MulColor(手指指引.发动猛攻) then
			click(658,650)
		elseif MulColor(手指指引.点击跟随) then
			click(626,154)
		elseif MulColor(手指指引.继续冒险吧) then
			click(1210,47)
		elseif MulColor(手指指引.点击升阶) then
			click(116,373)
		elseif MulColor(手指指引.点击升阶确定) then
			click(1114,369)
		elseif MulColor(手指指引.进阶成功继续冒险) then
			click(1216,49)
		end
	end
end