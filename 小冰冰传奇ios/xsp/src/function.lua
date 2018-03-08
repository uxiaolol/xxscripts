require "data_2048_1536"
require "Utilities"

function 任务()
	while 1 do

		if MulColor(弹窗界面.船长) then
			click(x,y)
		elseif MulColor(弹窗界面.船长确定) then
			click(x,y)
		elseif MulColor(游戏主界面.手指查看) then	
			click(409,1241)
		elseif MulColor(游戏主界面.手指购买) then
			click(399,838)
		elseif MulColor(游戏主界面.手指确定) then
			click(1301,1256)
		elseif MulColor(游戏主界面.手指查看奶酪) then
			click(1013,1240)
		elseif MulColor(游戏主界面.手指购买奶酪) then
			click(992,852)			
		elseif MulColor(游戏主界面.左上返回) and MulColor(游戏主界面.手指左上返回) then
			click(182,288)
		elseif MulColor(游戏主界面.手指战役) then
			click(532,874)
		elseif MulColor(游戏主界面.阵法召唤) and MulColor(游戏主界面.阵法红点) then
			click(981,938)
		elseif MulColor(对话界面.左边跳过) or MulColor(对话界面.右边跳过) then
			click(x,y)
		elseif MulColor(战斗界面.第四个释放技能) then
			click(1324,1131)
		elseif MulColor(战斗界面.第二个释放技能) then	
			click(707,1117)
		elseif MulColor(战斗界面.第一个释放技能) then	
			click(409,1124)			
		elseif MulColor(战斗界面.第三个释放技能) then	
			click(954,1053)		
		elseif MulColor(关卡界面.第一章) and MulColor(关卡界面.第一关) then	
			sysLog("剧情完毕")
			break		end
	end
end

function 关卡()
	while 1 do
		if (MulColor(游戏主界面.六百钻) or (MulColor(游戏主界面.五百五钻) and MulColor(游戏主界面.五十钻)) )and MulColor(游戏主界面.添加体力) then
			click(x,y)mSleep(1000)
		elseif MulColor(弹窗界面.体力确定) then
			click(x,y)
		--elseif MulColor(关卡界面.第一章) and MulColor(关卡界面.第一关) then	
			--click(x,y)

		elseif MulColor(关卡界面.全部) and MulColor(关卡界面.手指开战) then
			click(1817,1219)
		elseif MulColor(关卡界面.全军) and MulColor(关卡界面.手指战斗) then
			click(1717,1095)
		elseif MulColor(关卡界面.宝箱) and MulColor(关卡界面.手指下一波敌人) then
			click(1723,716)
		elseif MulColor(关卡界面.全部) and MulColor(关卡界面.手指英雄a) then
			click(439,365)
		elseif MulColor(关卡界面.全部) and MulColor(关卡界面.手指英雄b) then
			click(692,358)
		elseif MulColor(关卡界面.全部) and MulColor(关卡界面.手指英雄c) then
			click(858,336)
		elseif MulColor(关卡界面.宝箱) and MulColor(关卡界面.前进) then
			click(x,y)
		elseif MulColor(关卡界面.宝箱) and MulColor(关卡界面.怒气) then
			click(x,y-200)
		elseif MulColor(关卡界面.第一章) and MulColor(关卡界面.手指菜单) then
			click(1938,291)
		elseif MulColor(关卡界面.菜单展开) and MulColor(关卡界面.每日活动) then
			click(x,y)
		elseif MulColor(关卡界面.领取奖励) then
			click(x,y)
		elseif MulColor(弹窗界面.领奖确定) then
			click(x,y)
		elseif MulColor(关卡界面.战斗结束) then
			click(1746,1051)
		elseif MulColor(关卡界面.关闭每日) then
			click(x,y)
		end
	end
end