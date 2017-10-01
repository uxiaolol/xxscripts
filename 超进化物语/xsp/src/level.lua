require "Utilities"
require "data_1280_720"

function 登录()
	while 1 do
		if MulColor(登录界面.关闭公告) then
			click(x,y)
		elseif MulColor(登录界面.进入游戏) then
			click(x,y)
		elseif MulColor(游戏界面.跳过) then
			click(x,y)
		--选择月夕之后进入游戏
		elseif MulColor(游戏界面.月夕) and MulColor(游戏界面.骰子) then
			click(574,632)
		--在人物界面选择月夕	
		elseif MulColor(游戏界面.骰子) then
			click(66,330)
		end
	end
end

function 升级()
	while 1 do
		if MulColor(游戏界面.对话) then
			click(x,y)
		elseif MulColor(游戏界面.光圈冒险) then
			click(x,y)
		elseif MulColor(冒险界面.关卡一) then
			click(x,y)
		elseif MulColor(冒险界面.关卡二) then
			click(x,y)
		elseif MulColor(冒险界面.关卡三) then
			click(x,y)
		elseif MulColor(冒险界面.关卡四) then
			click(x,y)
		elseif MulColor(冒险界面.关卡五) then
			click(x,y)	
		elseif MulColor(冒险界面.关卡六) then
			click(x,y)	
		elseif MulColor(冒险界面.关卡七) then
			click(x,y)		
		elseif MulColor(冒险界面.光圈金矿) then
			click(144,249)			
		elseif MulColor(冒险界面.关卡八) then
			click(x,y)		
		elseif MulColor(冒险界面.关卡九) then
			click(x,y)			
		elseif MulColor(冒险界面.关卡十) then
			click(x,y)	
		elseif MulColor(冒险界面.关卡十一) then
			click(x,y)			
		elseif MulColor(冒险界面.光圈怪物) then
			click(601,410)
		elseif MulColor(冒险界面.光圈怪物二) then
			click(256,199)
		--引导排阵
		elseif MulColor(冒险界面.引导排阵) then
			click(x,y)
		elseif MulColor(冒险界面.光圈排阵) then
			click(967,602)
		elseif MulColor(冒险界面.光圈排阵1) then
			click(988,601)
		elseif MulColor(冒险界面.战斗) then
			click(x,y)
		elseif MulColor(冒险界面.解锁) then
			click(647,634) 		--结算确定	
		elseif MulColor(冒险界面.再虐一遍) then
			click(963,633)
		--光圈怪物二
		elseif MulColor(冒险界面.可上阵二) then
			click(258,204)
		elseif MulColor(冒险界面.可上阵三) then
			click(346,204)
		elseif MulColor(冒险界面.光圈返回) then
			click(1209,38)
		elseif MulColor(冒险界面.等级提升灰色) then
			click(x,y)
		elseif MulColor(冒险界面.等级提升) then
			click(611,630)
		elseif MulColor(冒险界面.光圈怪兽) then
			click(435,110)
		elseif MulColor(冒险界面.光圈纹章) then
			click(1144,428)
		elseif MulColor(冒险界面.光圈纹章详细) or MulColor(冒险界面.光圈纹章详细1) then
			click(568,445)
		elseif MulColor(冒险界面.镶嵌按钮)  then
			click(x,y) mSleep(1000)
			if MulColor(冒险界面.合成按钮) then
				click(x,y)
			end
		elseif MulColor(冒险界面.光圈纹章孔一) then
			click(589,264)
		elseif MulColor(冒险界面.关闭怪物介绍) then
			click(x,y)
		elseif MulColor(冒险界面.金币合成) then
			click(x,y) 
		elseif MulColor(冒险界面.合成确定) or MulColor(冒险界面.合成完毕) then
			click(x,y)
		elseif MulColor(冒险界面.拿点零花钱) then
			click(x,y)
		elseif MulColor(冒险界面.光圈浴火重生) then
			click(x,y)
		elseif MulColor(冒险界面.光圈基因突破) then
			click(1032,645)
		elseif MulColor(冒险界面.基因突破) then
			click(x,y)
		elseif MulColor(冒险界面.突破确定) then
			click(x,y)
		elseif MulColor(冒险界面.光圈造物台) then
			click(157,637)
		elseif MulColor(冒险界面.光环一起哈皮) then
			click(220,501)
		elseif MulColor(冒险界面.光环材料造物) then
			click(603,634)
		elseif MulColor(冒险界面.造一次) then
			click(x,y)
		elseif MulColor(冒险界面.造物结果) then
			click(x,y)
		elseif MulColor(冒险界面.光圈怪兽1) then
			click(153,635)
		elseif MulColor(冒险界面.光圈怪兽进化) then
			click(1029,555)
		elseif MulColor(冒险界面.光圈进化) then
			click(x,y)
		elseif MulColor(冒险界面.进化成功) then
			click(629,620)
		elseif MulColor(冒险界面.手指互换) then
			clickMove(842,408,718,406,20)
		elseif MulColor(冒险界面.光圈怪物二1) then
			click(261,203)
		elseif MulColor(冒险界面.光圈羊腿) then
			click(860,554)
		elseif MulColor(冒险界面.光圈智者) then
			click(94,21)
		elseif MulColor(冒险界面.关闭智者) then
			click(x,y)
		end
	end
end