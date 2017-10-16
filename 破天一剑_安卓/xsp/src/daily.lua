require "data_720_1280"
require "Utilities"

function 帮会任务()
	toast("帮会任务")
	while 1 do
		if MulColor(主界面.左跳过) or MulColor(主界面.右跳过) then
			click(x,y)mSleep(1000)
		elseif MulColor(主界面.开始巡逻) then
			click(x,y)
		elseif MulColor(主界面.帮会任务可交) then
			click(x,y)			
		elseif MulColor(主界面.购买武器) then
			click(x,y)
		elseif MulColor(商店界面.购买) then
			click(x,y)mSleep(1000)
			if MulColor(商店界面.关闭商店) then
				click(x,y)
			end

		--elseif MulColor(主界面.帮会任务) then
			--click(x,y+50)
		elseif MulColor(主界面.任务) then
			click(x,y)
		elseif MulColor(任务界面.帮会任务未选中) then
			click(x+10,y)
		elseif MulColor(任务界面.帮会任务选中) and MulColor(任务界面.开始任务) then
			click(x,y)
		elseif MulColor(任务界面.帮会任务选中) and MulColor(任务界面.寻路) then
			click(x,y)mSleep(1000)
			local tt = os.time()
			while 1 do
				if MulColor(主界面.背包)==false then
					break
				elseif MulColor(主界面.开始巡逻) then
					click(x,y)
				elseif os.difftime(os.time(),tt) > 90 then
					break
				end
			end
		elseif MulColor(任务界面.跑环完成) and MulColor(任务界面.帮会任务选中) then
			if MulColor(商店界面.关闭商店) then
				click(x,y)mSleep(1000)
			end
			break

		end
	end
end

function 无名试炼()
	toast("无名试炼")
	local _join = 0
	local _isok = 0
	local _wz = nil
	while 1 do
		if MulColor(主界面.副本挑战) then
			click(x,y)
		elseif _isok==1 and MulColor(主界面.背包) then
			break
		elseif _isok == 1 and MulColor(商店界面.关闭商店) then
			click(x,y)
		elseif _isok==0 and _join==0 and MulColor(主界面.任务) then
			click(1213,35)
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球未选中) then
			click(x+50,y)
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球选中) and MulColor(地图界面.人极星) then
			click(623,219)
			_wz = "rjx"
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球选中) and MulColor(地图界面.午灵星) then
			click(856,242)	
			_wz = "wlx"
		elseif _wz == "rjx" and MulColor(地图界面.传送点) and MulColor(地图界面.NPC) then
			click(x,y)
		elseif _wz == "rjx" and MulColor(地图界面.传送点)==false and MulColor(地图界面.NPC) then
			clickMove(374,604,365,235,20)
		elseif _wz == "rjx" and MulColor(地图界面.无名_汉罗山庄) then
			click(x,y)
			
		elseif _wz == "wlx"	and MulColor(地图界面.传送点) and MulColor(地图界面.NPC) then
			click(x,y)
		elseif _wz == "wlx" and MulColor(地图界面.午灵长老) then
			click(x,y)
		elseif MulColor(挑战界面.无名试炼) then
			click(x,y)
		elseif MulColor(挑战界面.无名挑战_0)==false and MulColor(挑战界面.挑战按钮_无名) then
			click(x,y)
			_join = 1
		elseif MulColor(挑战界面.无名挑战_0) then
			_isok = 1
		elseif _join == 1 and MulColor(主界面.挂机) then
			click(x,y)
		elseif MulColor(死亡界面.原地复活) then
			click(x,y)
		elseif MulColor(战斗结束.点击继续) then
			click(x,y)
			_join = 0
		end
	end
end

function 星寇宝藏()
	toast("星寇宝藏")
	local _join = 0
	local _isok = 0
	local _wz = nil
	while 1 do
		if MulColor(主界面.副本挑战) then
			click(x,y)
		elseif _isok==1 and MulColor(主界面.背包) then
			break
		elseif _isok == 1 and MulColor(商店界面.关闭商店) then
			click(x,y)
		elseif _isok==0 and _join==0 and MulColor(主界面.任务) then
			click(1213,35)
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球未选中) then
			click(x+50,y)
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球选中) and MulColor(地图界面.人极星) then
			click(623,219)
			_wz = "rjx"
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球选中) and MulColor(地图界面.午灵星) then
			click(856,242)	
			_wz = "wlx"
		elseif _wz == "rjx" and MulColor(地图界面.传送点) and MulColor(地图界面.NPC) then
			click(x,y)
		elseif _wz == "rjx" and MulColor(地图界面.传送点)==false and MulColor(地图界面.NPC) then
			clickMove(374,604,365,235,20)
		elseif _wz == "rjx" and MulColor(地图界面.无名_汉罗山庄) then
			click(x,y)
			
		elseif _wz == "wlx"	and MulColor(地图界面.传送点) and MulColor(地图界面.NPC) then
			click(x,y)
		elseif _wz == "wlx" and MulColor(地图界面.午灵长老) then
			click(x,y)
		elseif MulColor(挑战界面.星寇宝藏) then
			click(x,y)
		elseif MulColor(挑战界面.无名挑战_0)==false and MulColor(挑战界面.挑战按钮_无名) then
			click(x,y)
			_join = 1
		elseif MulColor(挑战界面.无名挑战_0) then
			_isok = 1
		elseif _join == 1 and MulColor(主界面.挂机) then
			click(x,y)
		elseif MulColor(死亡界面.原地复活) then
			click(x,y)
		elseif MulColor(战斗结束.点击继续) then
			click(x,y)
			_join = 0
		end
	end
end

--人极星 万骨岛
--午灵星 暗结界
--午灵星 驰骋之原
--巳灵星 灵蛇平原
--巳灵星 毒蛇沙漠


function 野外挂机(param)
	toast("野外挂机")
	local _isok = 0
	local _cnt = 0
	while 1 do
		if _cnt >= 5 and MulColor(商店界面.关闭商店) then
			click(x,y)			
		elseif _isok==0 and _cnt >=5 and MulColor(主界面.挂机) then
			click(x,y)
			_cnt = 0
			_isok = 1	
		elseif _isok == 0 and MulColor(主界面.任务) then
			click(1213,35)	
		elseif MulColor(地图界面.地图) and MulColor(地图界面.星球未选中) then
			click(x+50,y)
		--elseif MulColor(地图界面.地图) and MulColor(地图界面.星球选中) then
			--click(623,219)	
		elseif param == "暗结界鹏翼怪" and MulColor(地图界面.星球选中) then
			click(454,256)
		elseif param == "暗结界青铜驼奴" and MulColor(地图界面.星球选中) then
			click(454,256)
		elseif param == "暗结界蛰尾飞狐" and MulColor(地图界面.星球选中) then
			click(454,256)
		elseif param == "驰骋之原雄骥" and MulColor(地图界面.星球选中) then
			click(649,411)
		elseif param == "驰骋之原铜角飞狐" and MulColor(地图界面.星球选中) then
			click(649,411)
		elseif param == "驰骋之原猛骠" and MulColor(地图界面.星球选中) then
			click(649,411)
		elseif param == "蛇灵平原飞翼蛇" and 	MulColor(地图界面.星球选中) then
			click(590,369)
		elseif param == "蛇灵平原赤练魔将" and 	MulColor(地图界面.星球选中) then
			click(590,369)
		elseif param == "蛇灵平原青蛇魔将" and 	MulColor(地图界面.星球选中) then
			click(590,369)	
		elseif param == "毒蛇沙漠狂蟒战士" and 	MulColor(地图界面.星球选中) then
			click(651,545)
		elseif param == "毒蛇沙漠猎杀者" and 	MulColor(地图界面.星球选中) then
			click(651,545)
		elseif (param == "暗结界鹏翼怪" or param=="暗结界青铜驼奴" or param == "暗结界蛰尾飞狐"	) and MulColor(地图界面.暗结界) and MulColor(地图界面.传送点) and MulColor(地图界面.怪物) then
			click(x,y)			
		elseif (param == "驰骋之原雄骥" or param=="驰骋之原铜角飞狐" or param == "驰骋之原猛骠"	) and MulColor(地图界面.驰骋之原) and MulColor(地图界面.传送点) and MulColor(地图界面.怪物) then
			click(x,y)

		elseif MulColor(地图界面.驰骋之原) and MulColor(地图界面.传送点)==false then
			if param == "驰骋之原雄骥" then
				click(298,221)
			elseif param == "驰骋之原铜角飞狐" then
				click(297,273)
			elseif param == "驰骋之原猛骠" then
				click(291,326)
			end
			_cnt = _cnt + 1
			
			mSleep(4000)
		elseif MulColor(地图界面.暗结界) and MulColor(地图界面.传送点)==false then
			if param == "暗结界鹏翼怪" then
				click(298,221)
			elseif param == "暗结界青铜驼奴" then
				click(297,273)
			elseif param == "暗结界蛰尾飞狐" then
				click(291,326)
			end
			_cnt = _cnt + 1
			
			mSleep(1000)

		elseif MulColor(死亡界面.原地复活) then
			click(370,598)
			_isok = 0
		end	
	end
end

function 神墓()
	toast("神墓")
end