require "Utilities"
dialog1 = {0x6B4947,0,2,0xE9D6D6,2,2,0x532F2C,4,2,0x481E1B,4,4,0x441C19,6,4,0x5B3532,6,2,0x4E2926,6,0,0x3F1B18}

xiaobai = {0xa80403,-2,2,0xae0302,-2,4,0xae0302,-2,7,0xae0302,0,8,0xae0302,1,11,0xae0302,4,10,0xae0302}

shenle = {0x83585d,0,2,0x754548,0,5,0xf7e3df,1,7,0xf5d3d1,3,7,0xf39596,3,4,0xa43d45,3,2,0x3e2929,5,4,0xbd8c8e}

quanshen = {0xd20702,0,2,0xec0601,0,4,0x583630,2,4,0x81818b,4,5,0xd3d4db,4,7,0xadb0b6,6,4,0xadb3b8,6,1,0xbf1510,6,-1,0xd52915}

--点击继续
dianjijixu = {0xe2dccb,0,2,0xe8e4d1,0,4,0xc8c1b0,3,4,0x8a8275,3,1,0x2a2016,4,2,0x231910,6,3,0xcfcab9,8,2,0xf0ebd9,8,0,0xf8f3e0}

--战斗胜利
zhandoushengli = {0xeb4636,0,2,0xeb4636,2,2,0xeb4636,2,4,0xeb4636,2,6,0xeb4636,4,6,0xeb4636,3,7,0xeb4636,1,3,0xeb4636}

--打开达摩奖励
dakaidamo = {0xb27e2f,0,2,0xb27c2d,-2,2,0xc28926,-2,4,0xce8a1e,0,4,0xb25721,0,6,0x9c2c14,2,4,0xa32417,2,7,0xaf1a17}

--达摩开启完毕
damowanbi = {0xfce173,1,3,0xdca541,1,1,0xf8dd71,2,5,0xf5d76b,5,5,0x938f82,5,1,0xb3aea3,3,-2,0x160707,7,1,0x130101,7,4,0xa3958c}

--战场上所有角色
zhanchangjuese = {0xff0000,0,3,0xff0000,0,6,0xff0000,3,8,0xfc0101,7,7,0xfe0000,8,5,0xff0000,8,2,0xff0000,6,-1,0xff0000}

--选择想要释放的技能
shifangjineng = {0xff0000,0,3,0xff0000,0,7,0xff0000,3,8,0xfe0000,5,3,0xff0000,5,-2,0xfa0202,9,-2,0xfd0000,10,2,0xff0000}

--选择技能释放目标
shifangmubiao = {0xff0000,0,3,0xff0000,0,6,0xff0000,0,9,0xff0000,5,8,0xff0000,8,8,0xff0000,8,-1,0xff0000,16,3,0xff0000}

--冷却时间
lengque = {0xff0000,0,3,0xff0000,0,6,0xe60709,0,12,0xff0000,6,12,0xff0000,10,11,0xff0000,10,5,0xff0000,10,1,0xff0000}

shoudong = {0xcfc4b0,1,1,0xc1b8a7,5,2,0x2a2016,8,5,0x23201b,6,7,0xb4afa2,5,5,0xcfc8b6,2,7,0xcdc6b4,1,8,0xcfc8b6}

guaiwuyi = {0x292d2a,0,2,0x929594,2,2,0xe1e1e1,2,5,0xabadac,2,8,0xa8aba9,0,9,0x2d2a23,0,6,0x2d2a23,1,12,0x2b312d,3,12,0xadafae}


dialog2 = {0xe8d4d3,0,2,0xffeaea,0,4,0xffecec,3,4,0x583330,5,4,0x4b231f,7,2,0x59322f,4,2,0x49201e,9,3,0xf6e5e5}

tiaoguo = {0x968f81,2,0,0xbcb5a5,3,0,0xc3bdad,3,2,0x231910,3,4,0x22180f,3,6,0x22180f,1,6,0x31261d,1,4,0xd3cdbc,1,3,0xa7a091}
kuaijin = {0xe2dccb,0,3,0xdfd9c8,0,6,0xf4eedc,0,8,0x867e71,2,8,0x251c13,2,6,0xebe6d4,2,3,0x31261d,2,0,0x2b2117,2,-2,0x251b12}

dialog3 = {0xdec9c8,0,2,0xf9e4e4,0,4,0xffebeb,2,4,0x9e7e7c,4,4,0x401816,6,4,0x3f1715,6,2,0x441c19,4,2,0x481e1b}
dialog4 = {0xe4d0cf,0,2,0xfeeaea,0,4,0xffecec,2,4,0x987775,4,4,0x4a231f,4,3,0x401816,5,3,0x431b18,6,5,0x451c19}
dialog5 = {0xdec9c8,0,2,0xffebeb,0,4,0xfeecec,2,4,0x805c5a,4,4,0x4b231f,4,2,0x471d1a,6,2,0x441c1a,6,4,0x491f1c}
dialog6 = {0x886563,0,2,0xfdeeee,0,3,0xf7e9e9,0,4,0xefdddd,1,5,0x67413e,2,5,0x461e1b,4,5,0x481e1b,4,3,0x441c19,2,3,0x502925}
dialog7 = {0xcbb2b0,0,2,0xfeecec,0,4,0xf5e3e3,2,4,0x6c4745,4,4,0x4a221e,4,5,0x471e1b,5,3,0x431b19,3,3,0x47201d,5,4,0x49201d}
dialog8 = {0xa88988,0,2,0xfeefef,2,2,0x64423f,2,4,0x56312e,4,4,0x4a221e,4,2,0x471d1a,6,2,0x59322f,6,4,0x562f2c,7,4,0xa38684}
dialog9 = {0xdac4c3,0,2,0xffecec,0,5,0xf1dfdf,3,5,0x441c19,5,5,0x481e1b,5,2,0x471e1b,3,2,0x512c29,3,3,0x4a221f}
dialog10 = {0x997876,0,2,0xfceeee,0,4,0xe2cfcf,3,4,0x4a221e,3,2,0x461c1a,5,2,0x431b18,5,5,0x441c19,6,5,0x461d1a}
dialog11 = {0xab8d8b,0,3,0xf8e8e8,0,5,0xceb6b6,3,5,0x471d1a,3,3,0x431b18,5,3,0x401816,5,5,0x451d1a,7,5,0x74504e,7,3,0xad9190}
dialog12 = {0xdfcac9,0,2,0xffebeb,0,5,0xeedbdb,3,5,0x441c19,3,3,0x4b2420,5,3,0x461e1a,5,5,0x471e1b,7,5,0x49211e}
dialog13={0xcbb4b3,0,3,0xffecec,0,6,0xe9d6d6,3,6,0x451c19,3,4,0x4a221f,5,4,0x441c19,5,6,0x461e1b,7,6,0x512927}
dialog14={0xa18280,0,2,0xffefef,0,4,0xf1dfdf,2,4,0x5b3735,4,4,0x4b231f,4,2,0x481e1b,2,2,0x6c4a48,5,2,0x451d1a,5,4,0x491f1c}
dialog15 = {0xb09290,0,2,0xfdeeee,0,4,0xebd7d7,2,4,0x583331,4,4,0x4a221e,4,2,0x471d1a,6,2,0x57312e,6,4,0x542d2a}
dialog16= {0x916f6d,0,2,0xfdeded,0,4,0xf1dfdf,2,4,0x55312e,4,4,0x4a221e,4,2,0x481e1b,6,2,0x593330,6,4,0x5b3431}
dialog17={0x7f5b59,0,2,0xefdede,0,4,0xdcc8c8,2,4,0x4d2724,4,4,0x49211d,4,2,0x471e1b,5,2,0x48211e,5,4,0x4b211e}
dialog18={0xd0b7b6,0,3,0xfceaea,0,5,0xdfcaca,2,5,0x532c29,4,5,0x471e1b,4,3,0x421a17,6,3,0x49211e,6,4,0x4d2421}
dialog19 = {0x714f4d,0,2,0xaa8d8b,-2,2,0xffebeb,-2,4,0xfeecec,1,4,0x4b2724,4,4,0x481e1b,4,2,0x441c19,5,2,0x633e3b}
dialog20  = {0x957472, 0,2,0xf4e5e5,0,4,0xd9c4c4,2,4,0x4b2623,4,4,0x4a211e,4,2,0x471d1a,6,2,0x6b4644,6,4,0x643f3c}
shouzhi = {0xf0d0bc,-2,1,0xeecfbc,-2,3,0xfae1cb,-2,6,0x6f4a42,0,6,0x29090c,1,7,0x3a1014,3,7,0x3f1116}

choukaqueding = {0x251b0e,0,3,0x181109,0,6,0x251b0e,1,6,0xb68546,4,6,0x1e160b,4,3,0x150f08,4,0,0x171109,2,2,0xeaac5b,2,5,0xefaf5d}

--灰色直角
zhijiao = {0xb6b3b7,0,3,0xb6b2b6,0,6,0xb6b2b6,2,7,0x9e999f,3,7,0x79727a,3,5,0x8d878e,3,3,0x928c91,1,1,0xb6b2b6,1,3,0xb6b2b6}

--刀剑
daojian = {0x9c7743,0,2,0xaf863d,0,5,0xaea09f,2,5,0xb2a29a,3,4,0xf9d763,4,3,0xdabb65,4,2,0x8e672c,6,5,0xedc95e}
daojian1 = {0xad884b,0,2,0x9c7743,0,5,0xba9448,0,8,0x9f98b4,2,8,0x9f98b4,2,5,0xe4bf58,3,3,0x9d7433,3,2,0xb28944}
--准备
zhunbei = {0xc97129,7,3,0xfff3d2,0,1,0xecc495,0,4,0xfae8c8,0,6,0xc9712b,2,6,0xd99d70,7,-2,0xcb7733,7,5,0xcb7836}

--第二次战斗三只怪
er_yi={0x4a4f4c,0,2,0xd3d4d4,0,4,0x404643,0,7,0x3f4441,0,10,0x454a47,1,10,0xdbdcdb,1,7,0xbfc1c0,1,4,0xc7c8c7}
er_er={0x292d29,0,2,0x909391,0,5,0x2b2c27,1,5,0x282e2b,1,8,0x292d2a,1,11,0x2b312e,3,11,0xe2e3e3,3,8,0xd4d5d5,3,5,0xcecfcf}
er_san={0x2b2c27,0,2,0x717573,0,5,0x2b2b26,1,7,0x2a2d29,2,8,0x878b89,2,10,0x999c9a,3,11,0xe3e4e4,4,9,0x686c6a}

--第三次猫女战斗
guaiwutouxiang = {0xa2a4a4,0,2,0x772c15,0,5,0x9e2b08,0,8,0x606161,2,8,0x852303,4,8,0x932301,4,5,0x9d2501,4,2,0xa23014,4,0,0x959896}

san_yi={0x2c322f,0,2,0xaeb0af,0,5,0x292e2a,0,8,0x2b2c27,0,10,0x2a2d28,2,10,0xdbdcdb,2,7,0xc3c5c4,2,4,0xc9cbca}
san_er={0x292d29,0,3,0xa6a9a8,0,6,0x292d29,0,8,0x2c2b25,1,9,0x383e3b,1,11,0x3d4240,3,11,0xc9cbca,3,8,0xbec0bf,3,6,0xbcbdbc}
san_san={0x282e2b,0,3,0xb2b4b3,0,6,0x2b2b26,1,8,0x2c322f,1,10,0x2e3431,3,10,0xdcdddd,3,7,0xd0d1d0,3,4,0xcecfcf,3,2,0xd1d3d2}
san_si={0x282e2b,0,3,0x9ea19f,0,6,0x2c2b25,0,8,0x2d2a24,1,10,0x292f2c,2,12,0x878b89,2,9,0xc2c4c3,3,6,0xd1d2d1,3,4,0xd1d2d1}


duihua = {0xfeecec,0,2,0xffebeb,0,4,0xffebeb,6,2,0x431b18,8,2,0x431b18,13,2,0xfde8e8,17,2,0xfde8e8,23,2,0x481e1b,28,2,0xfde9e9}
duihua1 = {0xffebeb,4,0,0xfff1f1,6,2,0xad9291,7,2,0x583533,12,2,0x674341,16,2,0xfde8e8,16,0,0xfde8e8,13,0,0xc3abaa,6,0,0xa98b8a}
eye = {0xfaffff,-1,2,0x948246,-1,4,0xecefe8,-1,7,0xf5fbfc,1,6,0xc5ba8e,1,9,0xf6f6f1,-2,10,0xd5d1b7,-1,12,0xd0c9af,1,5,0xb2a46c}

wen = {0xdbc8a4,0,2,0x806928,2,4,0x887133,1,6,0x775c0c,-1,6,0x6c5308,-1,8,0xe1cea9,-1,10,0xffefdd,1,10,0xffefdd,3,8,0xe9d6b7,3,10,0xffefdd}
wen1 = {0xffefdd,0,3,0x9b8345,2,3,0xf6e5cf,3,5,0xb7a47a,2,9,0xa28a4c,1,10,0xf1dfc4,-1,11,0xffefdd,0,9,0x9f8645,1,9,0xab9256}
function levelup()
	local cnt = 0
	--local failed=0
	local tt = os.time()
	jdwlLog("levelup")
	while true do
		
		if os.difftime(os.time(),tt) > 120 then
			kill()
			jdwlLog("levelup overtime")
			cnt = 0
			tt = os.time()
		end
		
		if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
			click(x,y)
		end	
		if MulcolorNoOffset(tiaoguo,94,798,471,809,485) or MulcolorNoOffset(kuaijin,94,1025,67,1038,88) then
			click(x,y)	
		elseif MulcolorNoOffset(duihua,90,3,205,1124,228) then
			click(x,y)
		elseif MulcolorNoOffset(duihua,90,3,256,1135,279) then
			click(x,y)		
		elseif MulcolorNoOffset(duihua,90,1,174,1135,197) then
			click(x,y)	
		elseif MulcolorNoOffset(duihua,90,3,347,1137,373) then
			click(x,y)	
		elseif MulcolorNoOffset(duihua,90,4,221,1137,247) then
			click(x,y)				
		elseif MulcolorNoOffset(duihua1,90,2,244,1136,266) then
			click(x,y)
		elseif MulcolorNoOffset(xiaobai,95,774,173,788,192) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(shenle,95,854,252,867,266) then
			click(x,y)
		elseif MulcolorNoOffset(quanshen,95,768,188,783,200) then
			click(x,y)
			
		--第一次战斗
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(guaiwuyi,94,626, 82, 639, 108) then
			
			click(701,171) --tt = os.time()
		--第二次战斗	
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(er_yi,94,467,98,481,120) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(560,184) --tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(er_er,94,657,54,671,78) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(742,161) --tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(er_san,94,774,150,785,171) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(846,236)	--tt = os.time()
			
		--第三次战斗
		
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(guaiwutouxiang,94,648,41,663,59) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(559,161)	--tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(san_yi,94,356,164,372,188) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end		
			click(445,244)	 --tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(san_er,94,480,63,498,90) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(560,197)	 --tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(san_san,94,543,215,556,240) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(611,297)	 --tt = os.time()
			
		elseif MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(san_si,94,560,113,575,138) then	
			-- if  MulcolorNoOffset(shoudong,94,108, 605, 121, 618) and MulcolorNoOffset(aoe,94,964,591,977,605) then
				-- click(x,y)
			-- end	
			click(624,213)	 --tt = os.time()
				
		elseif MulcolorNoOffset(dianjijixu,95,482,460,498,470) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(zhanchangjuese,95,795, 283, 814, 298) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(shifangjineng,94,997, 359, 1013, 376) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(shifangmubiao,94,701, 363, 727, 381) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(lengque,94,829, 359, 847, 381) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(zhandoushengli,94,329,127,343,142) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(dakaidamo,94,462,322,473,339) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(damowanbi,95,524, 402, 541, 422) then
			click(x,y) tt = os.time()


		--手指指向召唤
		elseif MulcolorNoOffset(shouzhi,94,1004,225,1017,241) then
			click(981,195)
		--手指蓝色服抽 
		elseif MulcolorNoOffset(shouzhi,94,604,535,621,553)	then
			click(584,502) 
		--手指勾玉抽
		elseif MulcolorNoOffset(shouzhi,94,843,539,860,553) then
			click(818,506) 
		--手指r服
		elseif MulcolorNoOffset(shouzhi,94,369,537,384,556) then
			click(344,507)
		--手指r卡确定
		elseif MulcolorNoOffset(shouzhi,94,304,269,318,283) then
			click(281,238)
		--手指退出抽奖
		elseif MulcolorNoOffset(shouzhi,94,69,54,86,69) then
			click(43,26)
		--抽卡确定	
		elseif MulcolorNoOffset(choukaqueding,94,433,570,443,583) then
			click(x,y) 
		--灰色直角
		elseif MulcolorNoOffset(zhijiao,94,353,521,361,536) then
			click(614,333) 

		--刀剑
		elseif MulcolorNoOffset(daojian,94,460,276,481,292) or MulcolorNoOffset(daojian1,94,878,263,897,283) then
			click(x,y) tt = os.time()
		--准备
		elseif MulcolorNoOffset(zhunbei,94,1049,494,1068,509) then
			click(x,y) tt = os.time()
		--鬼火
		elseif MulcolorNoOffset(guihuo,94,494,433,519,448) or MulcolorNoOffset(guihuo1,94,997,308,1024,325) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(eye,90,10,174,1134,201) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(wen,90,5,252,1134,279) then
			click(x,y) tt = os.time()
		elseif MulcolorNoOffset(wen1,90,4,249,1132,274) then
			click(x,y) tt =os.time()
		elseif MulcolorOffset(guanbijiaoxue,90,943,165,958,178) then
			click(x,y) tt = os.time()
		elseif cnt > 3 and (MulcolorOffset(guanbi,90,1073,556,1088,578) or MulcolorOffset(zhankai,90,1114,535,1130,550)) then
			jdwlLog("zhuxian finish")
			break
		elseif (MulcolorOffset(guanbi,90,1073,556,1088,578) or MulcolorOffset(zhankai,90,1114,535,1130,550)) then
			cnt = cnt + 1
			mSleep(300)	
		elseif MulcolorOffset(kuozhan,90,557,274,576,292) then
			click(474,388)
		elseif MulcolorOffset(failed,90,423,159,438,176) then
			click(x,y)	
			mSleep(3000)
			fail()
			tt = os.time()			
		end
		reconnect()
	end	
end

failed = {0xb7a58f,-2,2,0xb9a790,-2,5,0xb8a68f,2,5,0x4d4555,4,5,0x4d4555,4,2,0x4c4454,4,7,0x4f4859,-2,7,0xb1a18d,2,8,0x4f4859}
kuozhan = {0x3e3831,0,3,0x554c43,0,6,0x2c2823,0,8,0x524a41,6,8,0x2b2723,6,6,0x292621,6,3,0x5e554a,6,1,0x61574c,4,1,0xcbb59c,3,5,0xcbb59c}
zhankai = {0x97674a,0,3,0xeba654,0,6,0xfbb167,0,9,0xd7cdcb,3,9,0xf4c384,3,7,0xf7c582,5,7,0xf8b470,5,4,0xe8a969,5,1,0xcba478}
guanbi = {0xd9cbc4,0,4,0xb3412c,0,11,0x5c1615,2,11,0x641916,5,9,0x2b0708,5,6,0x791f1d,5,3,0xbb6152,3,1,0xdfd7d0,6,0,0xd7c8c0}
guanbijiaoxue = {0xe8d4cf,0,2,0xe3a6ab,0,6,0xe08b9f,0,8,0x8a3346,2,8,0x882947,5,8,0xe09fad,5,3,0xdb8487,5,1,0xda7986,7,2,0xa74472}


guihuo = {0xff0000,0,2,0xff0000,1,5,0xff0000,5,6,0xff0000,9,6,0xdd0304,13,4,0xff0000,14,0,0xff0000,8,-2,0xfb0000,12,-3,0xff0000}
guihuo1 = {0xff0000,0,3,0xff0000,1,8,0xff0000,8,5,0xff0000,8,8,0xff0000,8,1,0xff0000,11,4,0xff0000,13,4,0xff0000}
aoe = {0x39dbfc,0,2,0x05d2fe,0,5,0x00d0fc,1,7,0x02cbfb,4,7,0x01d0fb,6,4,0xcdf9ff,4,2,0x0cd7fd,1,4,0x07d6fc,1,5,0x01cffb}
yanjing = {0xb7ab75,0,2,0xb2a678,0,5,0xe0dbc4,0,8,0xf7faff,3,8,0xb5aa86,3,4,0x988e71,3,1,0xfeffff,-1,4,0x8c7d57}

wenhao = {0xa47d08,0,2,0x896805,0,5,0x6e5407,4,5,0x735807,4,2,0x816206,6,2,0x916d05,6,5,0x866506,8,5,0x9a7404,8,3,0xa07904}
wenhao1 = {0xa37b07,0,2,0x846406,0,4,0x705607,3,4,0x725706,4,2,0x856505,4,-1,0xa47e0c,6,1,0x9e7804,6,3,0x916e05}
wenhao2 = {0xa47c07,0,2,0x856505,0,4,0x715706,3,4,0x715607,3,2,0x7e5f06,3,0,0x9e7808,6,2,0x967105,6,5,0x8b6906,6,6,0x8d6b05}
wenhao3 = {0xa27b07,0,2,0x806206,0,4,0x6f5407,0,6,0x695007,3,6,0x795c06,3,4,0x755a06,3,2,0x826306,3,0,0xa07907,5,3,0x8c6b05}
wenhao4 = {0x926f05,0,2,0x795c06,0,4,0x6c5307,1,6,0x6f5507,4,6,0x85660a,4,3,0x785c06,4,0,0x906d05,6,0,0x9e7804,6,2,0x916e05}


jixu = {0xbab3a3,0,6,0x968f81,0,11,0x332a20,0,13,0xd5d0be,5,13,0x483f34,9,13,0xcac5b4,9,10,0x9c9485,9,6,0x7b7366,7,2,0x7d7568}


zhaohuantubiao = {0x3f3542,0,4,0x3b313e,0,7,0x342c35,4,7,0x443b45,7,7,0x514852,7,4,0xb3afb4,7,1,0xb5b1b6,6,-1,0xb5b1b6,4,1,0xb0acb1}
zhaohuanqueding = {0x110d07,0,3,0x75562d,0,7,0xd49b52,0,10,0x2a1f10,4,10,0xa0753e,7,10,0x21180d,7,6,0x181109,7,2,0xb68546,2,2,0xf3b25e,4,1,0xdaa054}
icon100 = {0xe7e0cd,0,3,0xe1dac7,3,3,0x351d0f,8,3,0xe0d8c6,8,1,0xe0d8c6,16,1,0xe0d8c6,16,3,0xe3dcc9,20,3,0xe2dbc8,20,1,0xe1dac7,12,2,0x361d0f}
icon1 = {0x8b7a6a,0,3,0x392111,0,7,0x341c0f,3,7,0xeae4d1,3,4,0xe9e2d0,3,2,0xebe5d2,5,2,0x381e10,6,7,0x341c0f,2,11,0xcac1af}
icon11= {0xd4cbb9,0,3,0x422a1a,0,6,0x3f281a,0,9,0x3d271a,2,9,0xece5d3,2,7,0xe6dfcc,2,3,0xe1dac7,3,3,0x371e0f,3,6,0x351d0f}
wujiaoxing = {0xd8dad8,0,3,0xdadbda,0,6,0xd6d8d7,-1,10,0xf8f8f8,-1,12,0xf7f7f7,4,12,0xf7f7f7,4,8,0xd4d6d5,4,5,0xd4d6d5,4,2,0xd2d4d2}

icon01 = {0xb9ad9b,-1,3,0xe9e2d0,-1,7,0xbfb4a3,-1,10,0xece6d4,2,11,0x311b0e,2,8,0x341c0f,2,5,0x371e0f,6,5,0xf0ebd8,6,8,0xebe5d2,6,11,0xf8f3e0}
icon02 = {0xc7bdab,-1,4,0xd5cdba,-1,7,0xdad2c0,2,10,0x311b0e,5,10,0x685748,7,8,0xd2cab8,7,5,0xddd5c2,5,3,0x3f2718,3,4,0x371e0f}
icon03 = {0xc3b8a6,-1,3,0xdcd4c2,-1,7,0xe6dfcc,2,7,0x341c0f,5,7,0x341c0f,7,6,0xe3dcca,7,3,0xdad2bf,4,1,0x391f10}

function fail()
	jdwlLog('fail')	
	local tt = os.time()
	local isok=0
	while true do
		if os.difftime(os.time(),tt) > 90 then
			kill()
			tt = os.time()
			jdwlLog("fail overtime")
			break
		elseif isok==1 and MulcolorOffset(youxiang,90,1033,36,1054,45) then
			jdwlLog("fail finish")
			break
		elseif MulcolorOffset(jixu,90,652,458,673,481) then
			click(x,y)			
		elseif MulcolorOffset(youxiang,90,1033,36,1054,45) then
			click(988,199)
		elseif MulcolorOffset(failed,90,423,159,438,176) then
			click(x,y)
		elseif (MulcolorOffset(fanhui,90,28,47,43,55) or MulcolorOffset(fanhui1,90,34,46,51,52) )then
			click(x,y)
		elseif MulcolorOffset(zhaohuantubiao,90,321,531,340,547) then
			click(608,320)
		elseif MulcolorOffset(zhaohuanqueding,90,429,572,453,593) then
			click(x,y)
		elseif MulcolorOffset(icon100,90,880,22,918,43) then
			click(831,531)
		elseif MulcolorOffset(icon1,90,724,20,737,41) then
			click(585,537)
		elseif MulcolorOffset(icon11,90,545,22,555,40) then
			click(358,536)
		elseif MulcolorOffset(wujiaoxing,90,271,234,283,255) then
			click(x,y)
		elseif MulcolorOffset(icon01,90,544,20,556,42) and MulcolorOffset(icon02,90,724,22,737,41) and MulcolorOffset(icon03,90,905,23,918,41) then
			isok=1
			click(41,34)
		--手指指向召唤
		elseif MulcolorNoOffset(shouzhi,94,1004,225,1017,241) then
			click(981,195) tt = os.time()
		--手指蓝色服抽 
		elseif MulcolorNoOffset(shouzhi,94,604,535,621,553)	then
			click(584,502) tt = os.time()
		--手指勾玉抽
		elseif MulcolorNoOffset(shouzhi,94,843,539,860,553) then
			click(818,506) tt = os.time()
		--手指r服
		elseif MulcolorNoOffset(shouzhi,94,369,537,384,556) then
			click(344,507) tt = os.time()
		--手指r卡确定
		elseif MulcolorNoOffset(shouzhi,94,304,269,318,283) then
			click(281,238) tt = os.time()
		--手指退出抽奖
		elseif MulcolorNoOffset(shouzhi,94,69,54,86,69) then
			click(43,26) tt = os.time()
		--抽卡确定	
		elseif MulcolorNoOffset(choukaqueding,94,433,570,443,583) then
			click(x,y) tt = os.time()
		--灰色直角
		elseif MulcolorNoOffset(zhijiao,94,353,521,361,536) then
			click(614,333) tt = os.time()			
		end	
		reconnect()
	end
end


kongyoujian = {0xe8d4a7,0,3,0xe2ca9d,0,6,0x9ea095,0,9,0x494642,3,9,0x494743,3,7,0x5a5751,3,4,0xb8a076,3,2,0xe3cc9f,5,2,0xe3cc9f,5,5,0x767669}
libao2 = {0xb64e3f,0,2,0xc75c4a,2,2,0xc55b49,2,3,0xc75c4a,6,3,0x3ac8a6,8,3,0x4cccb8,8,1,0x67d2ba,10,3,0x4bc9b6}
shouqu = {0x50402c,0,4,0x4d3f2c,0,9,0x4d3f2c,2,9,0xf3b25e,6,6,0xf2b15e,3,0,0xf3b25e,6,-1,0x58462f,6,3,0x413628,9,6,0x423728}
libao1 = {0x9f4233,0,2,0xca604d,0,3,0xc55c4a,2,3,0xb35c4c,5,3,0x4acdb3,7,3,0x4ccdb9,9,3,0x4bc7b5,9,1,0x48c4b0}
libao = {0xbd594a,0,4,0xc75c4a,0,6,0xc85c4b,2,6,0xca5d4b,7,6,0x3ec2a5,7,1,0x3bd9b2,3,1,0x9f4638,3,3,0xa04538}
huode = {0xc2a763,-1,2,0xbea360,-1,5,0x7e4c1b,-1,8,0x301c0a,5,10,0x9b7c46,5,8,0x534327,5,6,0x140f0a,8,6,0xb09355,8,3,0xbda15f}
youxiyukuai = {0xa95c3b,0,2,0xa95c3b,0,4,0xaa5838,-2,4,0xecd7aa,-4,3,0xe8d4a8,1,1,0xdb8757,1,4,0xde9463,3,4,0xe8d0a0,4,2,0xe8d2a3}
function youjian()
	jdwlLog("youjian")
	local tt = os.time()
	local cnt = 0
	while true do
		if os.difftime(os.time(),tt) > 90 then
			kill()
			jdwlLog("youjian overtime")
			tt = os.time()
		elseif cnt > 3 and (MulcolorOffset(touxiang,90,74,90,88,101) or MulcolorOffset(youxiang,90,1033,36,1054,45))	then
			jdwlLog("youjian finish")
			break
		elseif MulcolorOffset(guanbijiaoxue,90,943,165,958,178) then
			click(x,y)			
		elseif MulcolorOffset(shouqu,90,730,536,752,558) then
			click(x,y)			
		elseif MulcolorOffset(youxiang,90,1033,36,1054,45) then
			click(x,y)
		elseif MulcolorOffset(kongyoujian,90,201,171,215,186) and cnt > 3 then
			click(1052,68)
		elseif MulcolorOffset(libao2,90,198,274,212,282) then
			click(x,y)
		elseif MulcolorOffset(kongyoujian,90,201,171,215,186) then	
			cnt = cnt + 1
			mSleep(300)
		
		elseif MulcolorOffset(libao1,90,200,171,215,179) then
			click(x,y)
		elseif MulcolorOffset(libao,90,193,163,210,176) or MulcolorOffset(youxiyukuai,90,190,166,204,177) then
			click(x,y)
		elseif MulcolorOffset(huode,90,430,224,450,242) then
			click(607,134)
		end
		reconnect()
	end
end


guanbirenwu = {0xe399a7,0,3,0xe8d7d2,0,6,0xe9d9d2,0,8,0xe09ea2,3,8,0x96354c,5,8,0x7a2e43,5,5,0xdc7990,5,2,0xe5b4b7,5,1,0xe6c3c1}
wancheng = {0xf3b25e,0,5,0xf3b25e,0,9,0xf2b15e,0,13,0x614d32,5,13,0x403528,5,16,0x4e3f2c,5,7,0xd69e55,5,3,0xdda357,7,1,0x463a29}
renwu = {0x733e3d,0,3,0x5d1f20,-1,5,0x5c2221,2,8,0xbaab9d,5,8,0xb9a797,5,10,0x946c44,2,10,0xaa8e75,-3,2,0xbfb1a2,-3,7,0x551819}
huode1 = {0xa48971,-2,0,0xa68b73,-2,3,0xa78c74,-2,5,0xa78c74,4,5,0x4d3418,5,5,0x4f3619,5,2,0x4e3519,0,2,0xa58a72,0,4,0xa48a72,0,5,0xa58a72}

function chengjiu()
	jdwlLog("chengjiu")
	local cnt = 0
	local tt = os.time()
	while true do
		if os.difftime(os.time(),tt) > 90 then
			kill()
			tt = os.time()
			jdwlLog("chengjiu overtime")
		elseif cnt > 3 and 	MulcolorOffset(guanbirenwu,90,1044,70,1055,86) then
			click(x,y)
		elseif cnt >3 and (MulcolorOffset(guanbi,90,1073,556,1088,578) or MulcolorOffset(zhankai,90,1114,535,1130,550))	 then
			jdwlLog("chengjiu finish")	
			break
		elseif MulcolorOffset(guanbijiaoxue,90,943,165,958,178) then
			click(x,y)			
		elseif MulcolorOffset(wancheng,90,882,128,899,154) then
			click(x,y)
		elseif MulcolorOffset(renwu,90,613,563,629,579) then
			click(x,y)
		elseif MulcolorOffset(guanbi,90,1073,556,1088,578) then
			click(x,y)
		elseif MulcolorOffset(huode,90,430,224,450,242) or MulcolorOffset(huode1,90,753,260,767,278) then
			click(607,134)			
		elseif MulcolorOffset(wancheng,90,882,128,899,154)==false and MulcolorOffset(guanbirenwu,90,1044,70,1055,86) then
			cnt = cnt +1 
			mSleep(500)
		end
		reconnect()
	end
end


laizhi = {0xaa350c,0,3,0xa82d03,0,6,0xa72c01,-2,9,0xe4cfc3,-5,8,0xae3e17,-5,4,0xb14620,-5,1,0xb14822,-5,-2,0xe6d6cd}

weixin_fasong = {0x22c722,0,-8,0x23bf24,0,-14,0x24bf23,2,-14,0x3c3b3f,9,-14,0x1fd61f,9,-10,0x3e3d41,9,-6,0x20d81f,9,-1,0x21cf21,16,-5,0x20d81f}
weibo_fasong = {0xffe0c0,0,2,0xffddb8,0,6,0xffddb9,0,8,0xffe1c1,2,8,0xff8606,3,8,0xff8606,3,2,0xff8606,3,0,0xff8606,1,0,0xff8607}

fuzhou = {0xa6c5d4,0,3,0x565387,0,6,0x705953,0,9,0x866a4f,3,9,0x362d62,5,6,0x271b5d,5,3,0xc9d4da,5,1,0xcedbe0,7,3,0x80bad0}
icon0 = {0xc7bdab,0,3,0x644f3f,-1,4,0xd5cdba,-1,7,0xdad2c0,1,8,0x341d0f,4,8,0x331c0e,4,5,0x361d0f,6,3,0xcbc1af,6,7,0xbeb3a2}
hua = {0xe0a903,1,3,0xe4ac02,4,6,0x5b470e,5,8,0x765b0c,5,1,0xedb302,5,-2,0x9b7609,5,-5,0xb38807,10,-1,0xfbbd00,10,4,0x9d7709,11,8,0xc09106}
wa = {0x3e3832,-2,3,0xcbb59c,-2,6,0x37322c,9,3,0x38332d,9,-2,0x453e36,6,4,0x2f2b26,6,7,0xcbb59c,6,12,0xc8b29a,5,14,0x2c2924}

jiangli = {0x816537,0,3,0x9e8048,0,7,0x8c6f3e,0,10,0x6a340c,4,10,0x331e0b,7,10,0x221911,7,7,0x6b350c,8,6,0x6a340c,9,5,0x6e3a10}

r = {0x1f81cf,0,2,0x2389d4,-1,4,0x2798e8,-1,6,0x2ba0ef,2,6,0x2a98e0,2,4,0x2790da,2,2,0x2389d4,4,2,0x238cdc,4,4,0x2790da}
sr = {0xaa2ad6,0,2,0xb834df,-2,3,0x66237c,1,3,0xc539eb,4,3,0xb533dc,6,4,0xc53ce9,2,2,0xb734de,2,1,0xac31d2,3,1,0x622478}
ssr = {0xea7c1a,-2,0,0xe17d1f,-2,2,0xf69e22,-2,4,0xf6b826,0,5,0xf8c218,2,6,0xf5cb16,4,7,0xfad516,5,7,0xf7d013,4,-1,0xf08128}
ssr1 = {0xffdd1e,0,2,0xffff3e,0,4,0xfff412,0,6,0xffff24,3,6,0xfffe29,3,4,0xfff604,3,1,0xfff646,3,-1,0xffe638,5,-1,0xffde37,5,2,0xfff444}

--973,545,987,564
icon_weibo = {0xf6b654,0,1,0xf29512,0,5,0xf39616,-1,8,0xde1820,-2,10,0xdf2028,2,10,0xfdf3e0,6,10,0xf49c1f,6,7,0xf5a833,6,5,0xf29108}

--969,492,986,512
icon_weixin = {0x66c060,0,3,0xeff8ee,0,6,0xffffff,3,7,0x5abb54,6,3,0x3db137,6,1,0x3cb035,3,1,0x37ae30,3,4,0xffffff,3,7,0x5abb54}
--322,141,338,159
guhuoniao = {0x0f0f0d,0,3,0x161513,0,6,0x0e0d0c,4,8,0x1f1d1b,4,1,0x2f2d29,4,-3,0x11100f,7,-3,0x151413,8,0,0x000000,8,5,0xb5aea0,2,4,0xd9d0bf}


weixin_fasong_5s={0x20d81f,0,3,0x20d81f,0,7,0x20d81f,0,9,0x20d81f,2,9,0x39383c,2,7,0x39383c,3,7,0x39383d,3,1,0x20d81f,6,3,0x20d81f,6,8,0x20d81f}

yys_dakai_5s={0x007aff,0,3,0x007aff,0,6,0x007aff,0,9,0x007aff,-2,12,0x007aff,-5,12,0x007aff,-6,11,0x007aff,-5,0,0x007aff,-4,0,0x007aff}

function zhaohuan()
	jdwlLog("zhaohuan")
	local isok=0
	local _fenxiang = 0
	local tt = os.time()
	local isrec = 0
	while true do
		if os.difftime(os.time(),tt)> 100 then
			kill()
			tt = os.time()
			jdwlLog("zhaohuan overtime")
		elseif isok==1 and (MulcolorOffset(guanbi,90,1073,556,1088,578) or MulcolorOffset(zhankai,90,1114,535,1130,550))	 then
			jdwlLog("zhaohuan finish")
			break
		elseif MulcolorOffset(guanbirenwu,90,1044,70,1055,86) then
			click(x,y)

		elseif MulcolorOffset(guanbi,90,1073,556,1088,578) or MulcolorOffset(zhankai,90,1114,535,1130,550) then	
			click(931,196)
		elseif  MulcolorOffset(fuzhou,90,601,569,616,583) and MulcolorOffset(icon0,90,724,22,736,41) then
			click(39,32)
			isok=1
		elseif MulcolorOffset(fuzhou,90,601,569,616,583) then
			click(595,527)
		elseif MulcolorOffset(hua,90,436,553,458,573) then
			click(599,277)
		elseif MulcolorOffset(zhaohuantubiao,90,321,531,340,547) then
			click(608,320)
		
		elseif MulcolorOffset(zhaohuanqueding,90,429,572,453,593) then
			click(x,y)
		elseif MulcolorOffset(wa,90,415,262,441,286) then
			click(453,378)
		elseif MulcolorOffset(jiangli,90,693,229,713,246)  then
			click(464,581)									
		end
		reconnect()
	end
end


fengting = {0xb7b7bc,2,0,0x050517,2,3,0xededef,6,4,0xd5d5d8,9,5,0xeeeef0,9,8,0xf2f2f3,9,2,0x2a2a3a,9,-3,0x262536,8,-5,0x252435}
dianjixuanqu = {0x6c7fa7,0,3,0x5a6f9c,0,6,0x425a8d,0,8,0x152c64,3,8,0x445b8e,4,6,0x4b6293,5,4,0xeef0f5,5,7,0xfefefe,-2,7,0x455c8d}
paidui = {0xefebd9,1,3,0x0c0b1f,2,6,0x494751,3,7,0xdad5c7,5,11,0x06051a,2,13,0x504e57,5,3,0x06051a,-1,5,0xddd9ca,1,1,0x373642}
mimacuowu = {0xffffff,0,4,0x404040,0,10,0x404040,0,12,0x404040,4,12,0x404040,3,12,0xf2f2f2,3,9,0xf2f2f2,7,6,0xffffff,10,6,0x343435,10,13,0x404040}
shurudenglumima1 = {0x101010,1,1,0x9f9f9f,1,5,0xdbdbdb,1,7,0x171717,1,10,0x101010,4,10,0x101010,7,9,0xfafafa,5,7,0xbfbfbf,5,4,0xa3a3a3}
shurudenglumima = {0x404040,1,5,0x8e8e8e,-1,8,0xe9e9e9,6,8,0xb2b2b2,6,5,0x949494,6,3,0x404040,5,1,0x404040,2,0,0xfcfcfc}
zhanghaodenglu = {0x23b260,0,-2,0xe9ecea,-2,-3,0xffffff,-2,0,0x23b260,-2,4,0xffffff,-2,7,0xffffff,1,7,0x62ba87,1,8,0x23b260,3,4,0x41b573}
zhanghaodenglu1 = {0xffffff,0,3,0x23b260,0,6,0xe0e6e3,0,9,0x5fb986,0,14,0x29b264,3,14,0x23b260,7,11,0xffffff,7,8,0x23b260,7,5,0xffffff,7,2,0x23b260}
--5s帐号登录按钮(帐号模式)
zhanghaodenglu_5s = {0xffffff,0,2,0xc5d8cd,0,5,0x95c5aa,2,5,0x72bd92,5,4,0x23b260,7,3,0x23b260,8,4,0x23b260,10,6,0xffffff,12,3,0x23b260,13,4,0x31b368}


yipianyi = {0x828282,0,2,0xbdbdbd,0,4,0x828282,0,7,0x848484,3,7,0xfefefe,3,5,0x828282,3,2,0xb6b6b6,5,3,0xe5e5e5,5,6,0x848484,7,6,0x828282}
qiehuan = {0x00ac58,0,4,0x00ac58,1,8,0x3abc7c,2,13,0x00ac58,5,13,0xf4f4f4,10,13,0x01ac58,12,7,0x09ae5d,15,3,0xf4f4f4,15,0,0xf4f4f4,16,-4,0x00ac58}

qiehuan_5s={0x00ac58,0,2,0x00ac58,3,5,0x00ac58,7,5,0x00ac58,7,3,0xf4f4f4,7,1,0xf4f4f4,7,-1,0x00ac58,10,-1,0x00ac58,10,2,0xf4f4f4}

yi_icon = {0x828282,-5,0,0x828282,-3,4,0x828282,-1,3,0xe3e3e3,-1,9,0xffffff,-5,9,0xd8d8d8,3,6,0x828282,6,3,0xffffff}
wangyiyouxiang1 = {0xd1201f,1,2,0xd11f1e,-2,4,0xffffff,-2,5,0xf5cece,-2,7,0xd01c1b,1,7,0xd1201f,7,7,0xffffff,7,3,0xffffff,4,1,0xe06463}
wangyiyouxiang = {0xd1201f,2,4,0xf7d8d8,2,6,0xffffff,2,8,0xffffff,5,8,0xd01c1b,8,8,0xe58483,8,6,0xd11e1d,8,4,0xd01c1b,6,4,0xcf1615}
shiyong = {0x00aa4c,0,2,0xffffff,1,6,0x07ac50,1,9,0x00aa4c,5,10,0x00aa4c,5,14,0xf4fbf7,5,17,0x51c584,8,17,0x7ad2a1,12,17,0xffffff,12,10,0x00aa4c}
shiyong_5s={0x00aa4c,0,3,0x00aa4c,0,5,0x00aa4c,2,5,0x02aa4d,4,5,0x02aa4d,4,3,0xffffff,4,0,0x9cdeb9,4,-1,0x00aa4c,3,-1,0x00aa4c,6,2,0x1eb461}

yhzx = {0xffc8bd,0,3,0xfbd1c5,2,4,0x73222b,2,6,0x923d3f,4,6,0x791a1e,4,3,0x905054,3,2,0xc97074,3,0,0x573d3b,4,3,0x905054,5,-1,0xffc8be}
dengluyouxi = {0x393025,0,3,0x3f3527,0,6,0xa97f48,0,8,0x7e613b,2,8,0x6c5435,3,9,0xd9a056,3,6,0x725837,3,3,0xf3b25e,3,2,0xf2b15e,5,3,0xbd8d4e}
jinruyouxi= {0x272420,-1,2,0x34322e,-2,3,0x3d3a37,-3,4,0x43403d,-2,6,0xdcdbdc,0,6,0xdcdbdc,2,6,0xdcdbdc,2,4,0xdcdbdc,4,4,0xbbb9b9,4,1,0x272420}
touxiang = {0xd60404,2,2,0xd70403,4,2,0xdef6ef,6,2,0xd71b18,7,4,0xdde1d6,7,0,0xdef6eb,4,0,0xd81a18,3,0,0xdcb7ae,9,2,0xdefaf1}
youxiang = {0x968b5f,0,2,0xd2c09d,2,2,0xb0a379,3,1,0x847e55,5,1,0x877d56,5,-1,0xd4c29f,8,1,0xafa279,8,-1,0x9d9265,8,3,0xd6c4a1}
fanhui = {0xab9e78,3,0,0xafa37e,3,2,0xd6c4a1,2,3,0xd6c4a1,-1,3,0xd6c4a1,-1,2,0xd6c4a1,-4,2,0xd6c4a1,-4,4,0xd6c4a1,-2,4,0xd6c4a1,1,4,0xd6c4a1}
fanhui1 = {0xd6c4a1,0,2,0xd6c4a1,2,2,0xd6c4a1,2,0,0xd6c4a1,5,0,0xd6c4a1,6,1,0xd6c4a1,8,1,0xd6c4a1,8,0,0xd6c4a1,10,0,0xd6c4a1,10,2,0xd6c4a1}
jieshou = {0xeff9f3,0,2,0x23b260,-2,7,0xb9e7cc,-2,9,0x97dab4,-2,12,0x23b260,2,12,0xb6e5ca,9,11,0xffffff,9,7,0xbae7cd,9,3,0x25b361,9,0,0x23b260}
jieshou1 = {0xffffff,0,4,0xffffff,0,7,0x23b260,0,14,0x23b260,5,14,0xfefffe,5,9,0xffffff,9,9,0xffffff,9,6,0x23b260,9,4,0xfefffe,9,0,0xffffff}
chuangjian = {0x292621,-2,-2,0xf3b25e,-2,-7,0xf3b25e,1,-7,0xd39c54,6,-7,0x50402c,6,-3,0x55442e,4,-3,0xf3b25e,3,3,0x2f2a22,6,3,0xf3b25e,6,5,0xf3b25e}
qing = {0xe1dbc9,0,5,0xc2bbab,-1,7,0xb3ad9d,-1,11,0xf7f2df,5,11,0x9c9485,9,11,0xdad4c2,9,8,0xdcd7c5,10,6,0x2a2016,8,3,0x3a3126,5,6,0x2f251b}
saizi = {0xdbd7c9,4,-1,0x000000,4,2,0xdadbd1,1,6,0xceb9a7,1,7,0xbc9f87,7,7,0xd7d8cd,7,4,0xcbd3c8,10,4,0x000000,9,2,0x111211}
liji = {0x2f2b26,3,0,0xc8b29a,3,-6,0x3f3932,5,-6,0x3a352f,7,-3,0x2f2b26,6,1,0x342f2a,3,2,0xc9b39b,3,-2,0xcbb59c,-1,-5,0x453e36}
gengxin = {0xf3b25e,0,4,0x352e24,0,8,0x3f3527,3,8,0x957142,7,8,0x85663d,8,5,0x473a2a,8,2,0x3a3126,10,-1,0x4c3e2b,6,-1,0xcd9752,13,1,0x393126}
youxigonggao = {0x000000,0,3,0x000000,0,7,0x000000,4,7,0x000000,7,7,0x000000,6,4,0xcfcfcf,4,3,0xd0d0d0,4,1,0xd1d1d1,6,-1,0x000000,8,2,0x000000}
hui = {0x000000,0,3,0x000000,0,6,0x000000,0,8,0x030303,5,8,0x242424,5,5,0xffffff,5,2,0xffffff,5,-1,0x000000,6,2,0xffffff,8,4,0x919191}
tuijian = {0x02020b,0,3,0xf4f4f4,0,6,0xebbf3e,3,6,0xf4db64,3,3,0x504a38,3,2,0xf3f3f3,6,2,0x9d7027,6,0,0xbababa,8,0,0x635d54,9,2,0xe4b638}
huanfu = {0x40362c,0,4,0x53493e,-1,7,0x382e24,-3,9,0xc4baab,-7,9,0x675d51,-10,6,0x4d4338,-11,3,0x40362c,-9,0,0xccc1b0,-6,2,0x5e5348}

fuwiqfanmang = {0x2c2823,-3,2,0x2d2a25,-3,5,0x2c2823,-3,8,0x282520,0,8,0x4e473e,3,7,0x292621,3,4,0xcbb59c,3,1,0xcbb59c,3,-1,0x37322c}

wangyiyouxiang_5s={0xd1201f,0,2,0xd11d1c,0,4,0xd11d1c,3,6,0xd01c1b,4,4,0xf6cfcf,4,2,0xf7d4d4,4,0,0xd11d1c,4,-2,0xd11e1d,2,-1,0xd1201f}

gengduo_5s={0x0c0c0c,0,2,0x000000,0,4,0x000000,3,4,0x0e0e0e,3,2,0xffffff,3,1,0x767676,4,1,0x767676,5,1,0x767676,5,0,0x0c0c0c,6,2,0xffffff}
function  loadgame()
	-- body
	jdwlLog('loadgame')
	local isacc=0
	local ispwd=0
	local contents
	local ret
	local tt = os.time()
	local cqcs  = 0
	local cnt = 0
	local _xuanqu = 0
	local _shuru = 0
	while true do
		if os.difftime(os.time(),tt) > 90 then
			kill()
			tt=os.time()
			isacc = 0
			ispwd = 0
			_xuanqu = 0
		elseif MulcolorNoOffset(fuwiqfanmang,90,573,282,594,301) then
			click(573,382)
		elseif (MulcolorOffset(zhanghaodenglu,90,621,217,640,236) or MulcolorOffset(zhanghaodenglu1,90,680,220,713,254) or MulcolorNoOffset(zhanghaodenglu_5s,90,625,225,651,243) )then
			click(x,y)
			cnt = 1
			_shuru = 1
		elseif MulcolorOffset(qiehuan,90,982,24,1009,53) or MulcolorNoOffset(qiehuan_5s,90,1057,16,1084,30) then
			click(x,y)			
			_shuru= 1
		elseif MulcolorOffset(yi_icon,90,420,171,438,190) then
			click(910,180)
			_shuru = 1

		elseif ( MulcolorOffset(dengluyouxi,90,532,544,545,558) or MulcolorOffset(jinruyouxi,90,1064,509,1086,527) )then
			click(x,y)
		elseif MulcolorOffset(touxiang,90,74,90,88,101) or MulcolorOffset(youxiang,90,1033,36,1054,45) or (MulcolorOffset(fanhui,90,28,47,43,55) or MulcolorOffset(fanhui1,90,34,46,51,52) )  then
			jdwlLog("loadgame finish")
			break
		elseif MulcolorOffset(jieshou,90,699,547,729,579)  or MulcolorOffset(jieshou1,90,753,546,787,578) then
			click(x,y)
		elseif MulcolorOffset(chuangjian,90,521,515,543,537) == false and MulcolorOffset(qing,90,965,292,979,309) then
			click(565,558)
		elseif MulcolorOffset(chuangjian,90,521,515,543,537) then
			if MulcolorOffset(saizi,90,451,438,464,449) then
				click(x,y)mSleep(300)
			end
			if MulcolorOffset(chuangjian,90,521,515,543,537) then
				click(x,y)
			end
		elseif MulcolorOffset(liji,90,608,255,629,275) and MulcolorOffset(gengxin,90,655,372,678,392) then
			click(x,y)
		elseif MulcolorOffset(youxigonggao,90,87,73,111,99) or MulcolorOffset(hui,90,1063,34,1087,56) then
			click(x,y)		
		elseif MulcolorOffset(tuijian,90,920,106,940,122) then
			click(x,y)
		elseif MulcolorOffset(huanfu,90,583,249,604,270) then
			click(554,312)		
		end				
	end
end

kuaisuyouxi = {0x242424,0,3,0x242424,0,7,0x242424,5,7,0x727272,5,5,0xffffff,5,3,0xffffff,5,1,0x000000,11,1,0x060606,11,4,0xffffff,11,7,0x878787}

kuaisuyouxi_5s={0x101010,0,3,0xffffff,0,5,0xffffff,0,8,0x020202,3,8,0x000000,3,6,0x000000,3,4,0x000000,3,2,0x000000,3,1,0x000000}

kuaisu = {0x007aff,0,3,0x007aff,0,6,0x037bff,5,6,0x007aff,5,2,0xf5f5f5,7,2,0x007aff,10,2,0xf5f5f5,10,0,0x5ca7fc,12,5,0x5ea9fb,14,2,0x53a3fb}
kuaisu_5={0x0040dd,0,-3,0x0040dd,4,-3,0x4b77e4,4,-1,0xf5f5f5,4,2,0x0040dd,7,-1,0x0040dd,8,-4,0x0040dd,10,-1,0xf5f5f5,12,-1,0xf5f5f5,12,1,0x84a1ea}
kuaisu_5s = {0x007aff,0,3,0x007aff,0,6,0x007aff,3,6,0x007aff,4,4,0xf6f4f2,4,2,0xf6f4f2,4,1,0xb0d0f6,2,0,0x007aff,4,0,0x007aff}
xiacizaishuo={0x0040dd,0,3,0x0040dd,0,6,0x0040dd,3,6,0x3b66de,6,6,0x3a66de,8,6,0x3a66de,8,4,0xded2e3,8,2,0xdfd3e3,8,0,0x174fdd,5,0,0x114bdd}
xiacizaishuo_5={0x0a46dd,0,3,0x285ade,0,5,0x0a46dd,3,5,0x3b66de,3,3,0xdfd2e3,3,2,0xdfd3e3,7,2,0xdfd3e3,7,4,0xded2e3,7,5,0x3a66de,5,5,0x3a66de}


function reconnect()
	if (MulcolorOffset(dengluyouxi,90,532,544,545,558) or MulcolorOffset(jinruyouxi,90,1064,509,1086,527)) then
		click(x,y)
	elseif MulcolorOffset(wangyiyouxiang,90,793,341,808,360)==false and (MulcolorOffset(dengluyouxi,90,532,544,545,558) or MulcolorOffset(jinruyouxi,90,1064,509,1086,527)) then
		click(x,y)
	elseif MulcolorOffset(liji,90,608,255,629,275) and MulcolorOffset(gengxin,90,655,372,678,392) then
		click(x,y)		
	elseif (MulcolorOffset(touxiang,90,75,87,89,96)==false or MulcolorOffset(youxiang,90,1033,36,1054,45)==false) and MulcolorOffset(qing,90,965,292,979,309) then
		click(x,y)
	elseif MulcolorOffset(youxigonggao,90,87,73,111,99) or MulcolorOffset(hui,90,1063,34,1087,56) or MulcolorNoOffset(fanhuiyou_5s,90,1062,31,1080,49) then
		click(x,y)
	elseif MulcolorOffset(huanfu,90,583,249,604,270) then
		click(554,312)
	elseif MulcolorOffset(duankai,90,579,355,596,374) then
		click(x,y)
	elseif MulcolorNoOffset(fuwiqfanmang,90,573,282,594,301) then
		click(573,382)		
	end	
end
