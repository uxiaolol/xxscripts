require "Utilities"
require "iphone6s"

function 欧罗巴1_6(team)
	id = createHUD()
	local count = 1
	local _tx = 0
	while 1 do
		showHUD(id,string.format("群660835498 普通欧罗巴-6,%s,第%d次",team,count),25,"0xffff0000","0xffffffff",0,336,0,600,45)
		if MulColor(主界面.出发) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.欧罗巴) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.欧罗巴)==false then
			clickMove(240,90,704,92,10)
		elseif MulColor(关卡界面.普通) and MulColor(关卡界面.探险) then
			click(x,y)mSleep(2000)
			_tx = 1
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.地图最小)==false and MulColor(欧罗巴6.地图缩小) then	
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.最小召唤点) then
			click(302,603)
		elseif MulColor(套餐界面.召唤) then
			召唤(team)
		elseif MulColor(弹窗.治疗确定) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.开始) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第一天) and MulColor(欧罗巴6.点2) then
			click(526,500)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第一天) and MulColor(欧罗巴6.点1) and MulColor(欧罗巴6.c) then	
			click(751,388)
		elseif MulColor(欧罗巴6.晴天) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天) and MulColor(欧罗巴6.点2) and MulColor(欧罗巴6.花草) then		
			click(975,275)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天) and MulColor(欧罗巴6.点2) and MulColor(欧罗巴6.boss) then		
			click(1147,355)			
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(欧罗巴6.结束) then
			mSleep(2000)
			if MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(欧罗巴6.结束) then click(x,y) end
		elseif MulColor(弹窗.战斗结算) or MulColor(弹窗.食灵对话) then
			click(x,y)
		elseif MulColor(弹窗.关卡结算) then
			click(x,y)
			if _tx == 1 then
				count = count + 1
				_tx = 0
			end
		elseif MulColor(弹窗.去整理) then
			食灵回收()
		end
	end
end

function 美利坚1_6(team)
	id = createHUD()
	local count = 1
	local _tx = 0
	while 1 do
		showHUD(id,string.format("群660835498 普通美利坚-6,%s,第%d次",team,count),25,"0xffff0000","0xffffffff",0,336,0,600,45)
		if MulColor(主界面.出发) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.美利坚) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.美利坚)==false then
			clickMove(240,90,704,92,10)
		elseif MulColor(关卡界面.普通) and MulColor(关卡界面.探险) then
			click(x,y)mSleep(2000)
			_tx = 1
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.地图最小)==false and MulColor(欧罗巴6.地图缩小) then	
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and (MulColor(美利坚6.最小召唤点) or MulColor(美利坚6.最小召唤点6s))and (MulColor(美利坚6.部署) or MulColor(美利坚6.部署6s)) then
			click(364,532)			
		elseif MulColor(套餐界面.召唤) then
			召唤(team)
		elseif MulColor(弹窗.治疗确定) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(欧罗巴6.结束) then
			mSleep(2000)
			if MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(欧罗巴6.结束) then click(x,y) end			
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.开始) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第一天) and MulColor(欧罗巴6.点2) and MulColor(美利坚6.第一步) then
			click(500,608)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第一天) and MulColor(欧罗巴6.点1) and MulColor(美利坚6.第二步) then
			click(645,536)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第一天) and MulColor(欧罗巴6.点1) and MulColor(美利坚6.第一步亮) and MulColor(美利坚6.第三步) then	
			click(786,604)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点3) and MulColor(美利坚6.第四步) then
			click(846,510)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点3) and MulColor(美利坚6.第五步) then
			click(985,437)		
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点2) and MulColor(美利坚6.第六步) then
			click(844,374)	
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点1) and MulColor(美利坚6.第七步6s) then
			click(1064,328)		
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点1) and MulColor(美利坚6.第七步) then
			click(987,302)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点1) and MulColor(美利坚6.第八步6s)then
			click(927,258)mSleep(1000)
			if MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.第二天)	and MulColor(美利坚6.点1) and MulColor(美利坚6.第八步) then
				click(846,230)
			end
		elseif MulColor(欧罗巴6.日历) and MulColor(美利坚6.第三天)	and MulColor(美利坚6.点5) and MulColor(美利坚6.第九步6s)then	
			click(1064,177)mSleep(1000)
		elseif MulColor(欧罗巴6.日历) and MulColor(美利坚6.第三天)	and MulColor(美利坚6.点5) and MulColor(美利坚6.第九步) then	
			click(984,157)
		elseif MulColor(欧罗巴6.日历) and MulColor(美利坚6.第三天)	and MulColor(美利坚6.点4) and MulColor(美利坚6.第十步6s)then	
			click(924,107)				
		elseif MulColor(欧罗巴6.日历) and MulColor(美利坚6.第三天)	and MulColor(美利坚6.点4) and MulColor(美利坚6.第十步)then		
			click(844,97)
		elseif MulColor(欧罗巴6.日历) and MulColor(美利坚6.第三天)	and MulColor(美利坚6.点3) and MulColor(美利坚6.十一步) then
			click(284,280)
		elseif MulColor(美利坚6.新道路) then
			click(x,y)
		elseif MulColor(弹窗.战斗结算) or MulColor(弹窗.食灵对话) then
			click(x,y)
		elseif MulColor(弹窗.关卡结算) then
			click(x,y)
			if _tx == 1 then
				count = count + 1
				_tx = 0
			end
		elseif MulColor(弹窗.去整理) then
			食灵回收()			
		end
	end
end

function 和风岛1_6(team)	
	id = createHUD()
	local count = 1
	local _tx = 0
	while 1 do
		showHUD(id,string.format("群660835498 和风岛-6,%s,第%d次",team,count),25,"0xffff0000","0xffffffff",0,336,0,600,45)
		if MulColor(主界面.出发) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.和风岛) then
			click(x,y)
		elseif MulColor(探险界面.探险) and MulColor(探险界面.和风岛)==false then
			clickMove(240,90,704,92,10)
		elseif MulColor(关卡界面.普通) and MulColor(关卡界面.探险) then
			click(x,y)mSleep(2000)
			_tx = 1
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.地图最小)==false and MulColor(欧罗巴6.地图缩小) then	
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.最小召唤点) and (MulColor(美利坚6.部署) )then
			click(285,693)	
		elseif MulColor(套餐界面.召唤) then
			召唤(team)
		elseif MulColor(弹窗.治疗确定) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.开始) then
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(欧罗巴6.结束) then
			mSleep(2000)
			if MulColor(欧罗巴6.日历) and MulColor(欧罗巴6.点0) and MulColor(和风岛6.点2)==false and MulColor(欧罗巴6.结束) then click(x,y) end
			
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第一天) and MulColor(和风岛6.点2) and MulColor(和风岛6.第一步) then
			click(512,591)
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第一天) and MulColor(和风岛6.点1) and MulColor(欧罗巴6.结束) then	
			click(x,y)
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第二天) and MulColor(和风岛6.点2) and MulColor(和风岛6.第二步) then
			click(732,479)		
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第二天) and MulColor(和风岛6.点1) and MulColor(和风岛6.第三步) then
			click(958,355)				
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第三天) and MulColor(和风岛6.点2)  then
			click(733,252)
		elseif MulColor(欧罗巴6.日历) and MulColor(和风岛6.第三天) and MulColor(和风岛6.点1) and MulColor(和风岛6.第五步) then
			click(508,363)			
		elseif MulColor(和风岛6.小心防备) then
			click(x,y)mSleep(1000)
		elseif MulColor(弹窗.战斗结算) or MulColor(弹窗.食灵对话) then
			click(x,y)mSleep(2000)
		elseif MulColor(弹窗.关卡结算) then
			click(x,y)
			if _tx == 1 then
				count = count + 1
				_tx = 0
			end
		elseif MulColor(弹窗.去整理) then
			食灵回收()			
		end
	end
end

function 次元小屋1_2(team)

end

function 强化()
	local xzsl = 0
	local tjsl = 0
	local isok = 0
	local tab = {{110,206},{341,209},{563,203},{774,204},{990,208}}
	while 1 do
		if isok==1 and MulColor(主界面.出发) then
			break
		elseif isok == 1 and MulColor(食灵.主菜单) then
			click(x,y)mSleep(1000)			
		elseif MulColor(食灵.整理) then
			click(x,y)
		elseif MulColor(食灵.食灵强化未选中) then
			click(x,y)
		elseif MulColor(食灵.食灵强化选中) and MulColor(食灵.添加食灵) then
			click(x,y)
		elseif xzsl==0 and MulColor(食灵.食灵列表) then
			local index = math.random(1,5)
			click(tab[index][1],tab[index][2])
		elseif tjsl > 0 and MulColor(食灵.食灵列表) and MulColor(食灵.第一排星星) then
			click(x,y)mSleep(500)
		elseif MulColor(食灵.选择中1) and MulColor(食灵.确定) then
			click(x,y)
		elseif MulColor(食灵.食灵强化选中) and MulColor(食灵.添加食灵)== false and MulColor(食灵.选择食灵) then
			click(x,y)
			tjsl = tjsl + 1
			xzsl = xzsl + 1
		elseif MulColor(食灵.食灵强化选中) and MulColor(食灵.选择食灵) ==false and MulColor(食灵.强化) then
			click(x,y)mSleep(2000)
		elseif MulColor(食灵.属性提升) then
			click(675,600)mSleep(1000)
			isok = 1
		end
	end	
end

function 食灵回收()
	local isok = 0
	local tj = 0
	while 1 do
		if MulColor(弹窗.去整理) then
			click(x,y)
		elseif isok==1 and MulColor(主界面.厨房) then
			break
		elseif isok==1 and MulColor(食灵界面.主菜单)	then
			click(x,y)
		elseif MulColor(食灵界面.食灵) and MulColor(食灵界面.主菜单) then
			click(x,y)
		elseif MulColor(主界面.厨房) then
			click(x,y)
		elseif isok==0 and MulColor(厨房界面.厨房) and MulColor(厨房界面.添加食灵) then
			click(x,y)
			tj = 1
		elseif MulColor(厨房界面.厨房) and MulColor(厨房界面.烹饪制作) then
			click(62,217)
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) and MulColor(厨房界面.二星1) then
			click(x,y)mSleep(500)
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) and MulColor(厨房界面.二星2) then
			click(x,y)mSleep(500)
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) and MulColor(厨房界面.二星3) then
			click(x,y)mSleep(500)
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) and MulColor(厨房界面.二星4) then
			click(x,y)mSleep(500)
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) and MulColor(厨房界面.二星5) then
			click(x,y)mSleep(500)			
		elseif MulColor(厨房界面.主菜单)	and MulColor(厨房界面.确定) then
			click(x,y)mSleep(500)
		elseif MulColor(厨房界面.厨房) and MulColor(厨房界面.添加食灵)==false and MulColor(厨房界面.回收) then
			click(x,y)
		elseif MulColor(厨房界面.恭喜获得) then
			click(29,22)
			isok = 1
		end
	end
end

function 召唤(team)
		if team == "套餐1" and MulColor(套餐界面.套餐1)==false and (MulColor(套餐界面.召唤)) then	
			click(72,105)
		elseif team == "套餐1" and MulColor(套餐界面.套餐1) and (MulColor(套餐界面.召唤)) then
			战前准备()
		elseif team == "套餐2" and MulColor(套餐界面.套餐2)==false and (MulColor(套餐界面.召唤)) then
			click(69,183)
		elseif team == "套餐2" and MulColor(套餐界面.套餐2) and (MulColor(套餐界面.召唤)) then			
			战前准备()
		elseif team == "套餐3" and MulColor(套餐界面.套餐3)==false and (MulColor(套餐界面.召唤)) then
			click(69,258)
		elseif team == "套餐3" and MulColor(套餐界面.套餐3) and (MulColor(套餐界面.召唤)) then
			战前准备()
		elseif team == "套餐4" and MulColor(套餐界面.套餐4)==false and (MulColor(套餐界面.召唤)) then
			click(62,338)
		elseif team == "套餐4" and MulColor(套餐界面.套餐4) and (MulColor(套餐界面.召唤)) then	
			战前准备()
		end	
end

function 战前准备()
	if MulColor(套餐界面.战前补给) then
		click(x,y)
		local tt = os.time()
		while os.difftime(os.time(),tt) < 4  do
			if MulColor(套餐界面.快速治疗) then
				break
			end
		end
	end
	if MulColor(套餐界面.快速治疗) then
		click(x,y)mSleep(1000)
	end
	
	if MulColor(弹窗.治疗确定) then
		click(881,505)mSleep(1000)
	end
	if MulColor(套餐界面.召唤) then
		click(x,y)
	end
end

