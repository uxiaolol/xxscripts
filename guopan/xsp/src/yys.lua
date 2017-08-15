require "Utilities"

color_saizi = "3|3|0x070701,3|4|0x010100,4|4|0x000000,6|7|0x8a8282,6|8|0xd1d5c9,8|7|0xd0d0bf"
color_chuangjian = "3|0|0x6f5636,3|3|0x58462f,3|5|0x6d5435,5|5|0x5e4a31,7|5|0x302a23,9|5|0xf1b05e"
color_qing = "2|2|0x463d32,3|6|0x989183,0|9|0x241a11,8|8|0xe8e3d1,7|4|0x473e33"

btn_jieshou = "0|3|0xb7e6cb,0|6|0x23b260,5|6|0x23b260,5|3|0x23b260,5|0|0xffffff,10|0|0xffffff,10|2|0x3dbb73,10|6|0xffffff"
icon_fanhui = "2|0|0xa2916f,4|0|0xa99876,0|3|0xd5c4a2,2|3|0xd7c6a4,4|3|0xd5c4a2,4|5|0xd5c4a2,4|7|0xa89b7d,2|7|0x9b8f71"

fanhui = "0|5|0x000000,0|9|0x000000,5|9|0x000000,8|9|0x000000,8|4|0x000000,4|1|0x757575,4|4|0xd0d0d0,6|6|0xcfcfcf"

shiyongqita = "0|3|0x22b260,0|6|0x22b260,2|6|0x22b260,2|3|0xffffff,3|4|0xffffff,4|6|0x22b260"

wangyiyouxiang = "0|3|0xd12322,3|3|0xf6d5d4,3|0|0xd01e1d,3|5|0xfbf0f0,3|8|0xd1201f,6|8|0xd1201f,8|6|0xd1201f"

yi = "3|-1|0x696969,6|-1|0x646464,6|3|0xffffff,3|6|0x616161,6|6|0x616161,2|10|0xffffff,5|10|0xffffff"

zhanghaodenglu = "0|5|0xade2c4,4|5|0x73cd99,4|3|0x37b86e,4|1|0xb4e5c9,7|3|0x37b86e,9|3|0x37b86e,11|5|0x73cd99,13|6|0xffffff"

wangyiyouxiang1 = "2|2|0xd01b1a,5|2|0xd01b1a,5|5|0xfbeeee,1|7|0xe99594,1|10|0xd11f1e,5|10|0xd11f1e"

gengxin = "-1|4|0x292621,3|6|0x312d27,0|11|0x35302a,3|13|0xccb49b,7|9|0xccb49b,7|2|0x60564a,10|2|0x38332d"
paidui = "0|3|0x0e0d32,0|6|0x45435a,0|8|0x6a6876,3|8|0xf1ecda,3|5|0xdad5c9,6|3|0x242341,6|6|0x3a3851"
yhzx = "0|2|0xfcfcfd,-2|4|0x375187,-3|6|0x193775,-3|8|0xdfe3ec,0|8|0xfdfefe,3|8|0xd7dce7,5|6|0xe2e6ed,4|4|0x1c3977"

SAVE_PIC=false
--95, 1062, 129, 1085, 157
function loadgame()
  jdwlLog("loadgame")
  local tt = os.time()
  local isacc = 0
  local ispwd = 0
  local ret = {}
  local contens = nil
  local cnt = 0
  local _shuru = 0
  while true do
    if os.difftime(os.time(),tt) > 120  then
      kill()
      jdwlLog("loadgame overtime")
      tt = os.time()
      isacc = 0
      ispwd = 0
      cnt = 0
      _shuru = 0
      modifyindex()
    elseif MulColor(0xeae5d6,paidui,90,377,269,399,290) then
      toast("排队中")
      tt = os.time()	
    elseif isacc==0 and MulColor(0x686868,yi,90,407,159,438,179) then
      mSleep(1000)
      if MulColor(0x686868,yi,90,407,159,438,179) then
        click(901,179)mSleep(400)
        inputText('#CLEAR#')mSleep(400)
        contens = getaccount()
        ret = Split(contens,'*')
        inputText(ret[1])mSleep(500)
        isacc = 1
      end	
      if MulColor(0x686868,yi,90,407,159,438,179) then
        click(x,y)mSleep(500)
      end
    elseif MulColor(0x22b260,qiehuan,90,1092,33,1118,46) then
      click(x,y) mSleep(500)		
      isacc=0
      ispwd = 0
    elseif ispwd == 0 and isacc==1 and MulColor(0x686868,yi,90,407,159,438,179) then
      mSleep(1000)
      if MulColor(0x686868,yi,90,407,159,438,179) then
        click(841,277) mSleep(500)
        inputText('#CLEAR#')
        contens = getaccount()
        ret = Split(contens,'*')
        inputText(ret[2])
        ispwd = 1
      end	
    elseif cnt > 3 and MulColor(0xffffff,zhanghaodenglu,90,622,358,647,371) then
      isacc = 0
      ispwd = 0		
    elseif _shuru==0 and MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
      click(1067,93)
    elseif isacc == 1 and ispwd == 1 and MulColor(0xffffff,zhanghaodenglu,90,622,358,647,371) then
      click(x,y)mSleep(500)
      _shuru = 1
      cnt = cnt + 1		elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
        click(x,y)
      elseif MulColor(0xe1dbd1,color_saizi, 90, 441, 421, 460, 445) then
        click(x,y)mSleep(300)
        if MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531) then
          click(x,y)
        end	
      elseif MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531)==false and MulColor(0x9f9889,color_qing,90,938,286,957,305)	then
        click(x,y)
      elseif MulColor(0x8f8b62,color_email,90,1025,25,1047,42) or MulColor(0x978664,icon_fanhui,90,17,22,36,37) then
        jdwlLog("loadgame finish")
        break
      elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
        click(x,y)
      elseif MulColor(0x000000,fanhui,90,86,72,102,89) then
        click(x,y)
      elseif MulColor(0x22b260,shiyongqita,90,448,451,460,466) then
        click(x,y)
        _shuru = 1
      elseif MulColor(0xd01e1d,wangyiyouxiang,90,814,367,834,388) then
        click(x,y)mSleep(500)
      elseif MulColor(0xce1513,wangyiyouxiang1,90,739,345,765,364) then
        click(x,y)mSleep(500)
      elseif MulColor(0x2f2b26,gengxin,90,430,244,458,277) then
        click(672,377)
      end	
    end
  end
  
  
  
  --立即进入界面其他登录方式  
  qitafangshi="0|4|0xa0a0a0,4|4|0xa0a0a0,4|2|0x080815,5|1|0x25252f,6|1|0x262530,6|2|0x080815,8|2|0x090915,10|2|0x2b2b35"
  
  --手机验证界面切换登录
  qiehuanfangshi = "0|6|0x9a9a9b,3|8|0x0c0d1f,3|11|0x0c0d1e,1|13|0x858588,1|15|0x919293,4|15|0xa0a0a0,5|11|0x0c0c1d,5|8|0x0c0d1f"
  
  --黄色uc图标
  uc = "0|3|0xffd09e,0|6|0xffd09e,0|8|0xffd1a0,3|8|0xff8400,6|8|0xff8400,8|8|0xff8400,8|5|0xff8400,8|3|0xff8400,5|2|0xff8400"
  --黄色手机图票
  shouji = "0|2|0xff8400,0|5|0xffc88d,0|8|0xffffff,4|9|0xff9e37,6|9|0xff8502,6|6|0xffdfbd,6|3|0xff8400,4|3|0xff8400"
  
  --黄色进入游戏按钮
  jinruyouxi_uc = "0|2|0xff8200,0|5|0xff8200,0|6|0xff8100,3|6|0xfff0e0,6|6|0xff8100,8|6|0xff8100,8|4|0xff8200,3|3|0xfff0e0"
  
  --堪比
  kanbi = "0|2|0xa62c01,0|5|0xa62c01,-2|5|0x13060e,-2|6|0x03020f,-2|3|0x16070d,-4|2|0x6b1d06,-4|4|0x932703,-4|7|0xa72c01"
  function loadgameuc()
    jdwlLog("loadgameuc")
    local tt = os.time()
    local isacc = 0
    local ispwd = 0
    local ret = {}
    local contens = nil
    local cnt = 0
    local _shuru = 0
    while true do
      if os.difftime(os.time(),tt) > 120  then
        kill()
        jdwlLog("loadgameuc overtime")
        tt = os.time()
        isacc = 0
        ispwd = 0
        cnt = 0
        _shuru = 0
        modifyindex()
      elseif MulColor(0xeae5d6,paidui,90,377,269,399,290) then
        toast("排队中")
        tt = os.time()	
        --其他方式
      elseif MulColor(0xa0a0a0,qitafangshi,90,270,427,291,439) then
        click(x,y)
        --切换方式
      elseif MulColor(0x8e8e90,qiehuanfangshi,90,266,530,283,558) then
        click(x,y)
        --切换到uc帐号
      elseif	MulColor(0xffd09e,uc,90,296,532,315,556) then
        click(x,y)
      elseif isacc==0 and MulColor(0xff8400,shouji,90,302,544,326,567) then
        mSleep(500)
        if MulColor(0xff8400,shouji,90,302,544,326,567) then
          click(711,223)mSleep(200)
          inputText('#CLEAR#')mSleep(200)
          contens = getaccount()
          ret = Split(contens,'*')
          
          inputText(ret[1])mSleep(200)
          isacc = 1
        end	
      elseif MulColor(0x22b260,qiehuan,90,1092,33,1118,46) then
        click(x,y) mSleep(500)		
        isacc=0
        ispwd = 0
      elseif ispwd == 0 and isacc==1 and MulColor(0xff8400,shouji,90,302,544,326,567) then
        mSleep(500)
        if MulColor(0xff8400,shouji,90,302,544,326,567) then
          click(610,314) mSleep(300)
          inputText('#CLEAR#')
          contens = getaccount()
          ret = Split(contens,'*')
          
          inputText(ret[2])
          ispwd = 1
        end	
      elseif cnt > 3 and MulColor(0xffffff,zhanghaodenglu,90,622,358,647,371) then
        isacc = 0
        ispwd = 0		
        
      elseif isacc == 1 and ispwd == 1 and MulColor(0xffffff,jinruyouxi_uc,90,668,424,687,438) then
        click(x,y)mSleep(500)
        _shuru = 1
        cnt = cnt + 1		
      elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
        click(x,y)				
      elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
        click(x,y)
      elseif MulColor(0xe1dbd1,color_saizi, 90, 441, 421, 460, 445) then
        click(x,y)mSleep(300)
        if MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531) then
          click(x,y)
        end	
      elseif MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531)==false and MulColor(0x9f9889,color_qing,90,938,286,957,305)	then
        click(x,y)
      elseif MulColor(0x8f8b62,color_email,90,1025,25,1047,42) or MulColor(0x978664,icon_fanhui,90,17,22,36,37) then
        jdwlLog("loadgame finish")
        break
      elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
        click(x,y)
      elseif MulColor(0x000000,fanhui,90,86,72,102,89) then
        click(x,y)
      elseif MulColor(0x22b260,shiyongqita,90,448,451,460,466) then
        click(x,y)
        _shuru = 1
      elseif MulColor(0xd01e1d,wangyiyouxiang,90,814,367,834,388) then
        click(x,y)mSleep(500)
      elseif MulColor(0xce1513,wangyiyouxiang1,90,739,345,765,364) then
        click(x,y)mSleep(500)
      elseif MulColor(0x2f2b26,gengxin,90,430,244,458,277) then
        click(672,377)
      elseif MulColor(0xa72c01,kanbi,90,565,38,577,53) then
        click(390,283)
      end	
    end
  end
  
	
	--果盘登录按钮
	denglu_guopan="0|2|0xffceb0,0|5|0xff6000,1|6|0xfff3ec,2|6|0xfff3ec,5|6|0xfff3ec,5|4|0xff6000,5|2|0xffceb0,7|4|0xff6000"
	
	--果盘登录
	  function loadgamegp()
    jdwlLog("loadgamegp")
    local tt = os.time()
    local isacc = 0
    local ispwd = 0
    local ret = {}
    local contens = nil
    local cnt = 0
    local _shuru = 0
    while true do
      if os.difftime(os.time(),tt) > 120  then
        kill()
        jdwlLog("loadgamegp overtime")
        tt = os.time()
        isacc = 0
        ispwd = 0
        cnt = 0
        _shuru = 0
        modifyindex()
      elseif MulColor(0xeae5d6,paidui,90,377,269,399,290) then
        toast("排队中")
        tt = os.time()	
      elseif MulColor(0x22b260,qiehuan,90,1092,33,1118,46) then
        click(x,y) mSleep(500)		
        isacc=0
        ispwd = 0
			elseif (getaccount() == nil or getaccount() =="" ) and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then	
				register()	
				--tt = os.time()
			elseif getaccount() ~=nil and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462)	then
				loadgp()
				--tt = os.time()		
      elseif cnt > 3 and MulColor(0xffffff,zhanghaodenglu,90,622,358,647,371) then
        isacc = 0
        ispwd = 0		
      elseif isacc == 1 and ispwd == 1 and MulColor(0xffffff,jinruyouxi_uc,90,668,424,687,438) then
        click(x,y)mSleep(500)
        _shuru = 1
        cnt = cnt + 1		
      elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
        click(x,y)				
      elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
        click(x,y)
      elseif MulColor(0xe1dbd1,color_saizi, 90, 441, 421, 460, 445) then
        click(x,y)mSleep(300)
        if MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531) then
          click(x,y)
        end	
      elseif MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531)==false and MulColor(0x9f9889,color_qing,90,938,286,957,305)	then
        click(x,y)
      elseif MulColor(0x8f8b62,color_email,90,1025,25,1047,42) or MulColor(0x978664,icon_fanhui,90,17,22,36,37) then
        jdwlLog("loadgame finish")
        break
      elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
        click(x,y)
      elseif MulColor(0x000000,fanhui,90,86,72,102,89) then
        click(x,y)
      elseif MulColor(0x22b260,shiyongqita,90,448,451,460,466) then
        click(x,y)
        _shuru = 1
      elseif MulColor(0xd01e1d,wangyiyouxiang,90,814,367,834,388) then
        click(x,y)mSleep(500)
      elseif MulColor(0xce1513,wangyiyouxiang1,90,739,345,765,364) then
        click(x,y)mSleep(500)
      elseif MulColor(0x2f2b26,gengxin,90,430,244,458,277) then
        click(672,377)
      elseif MulColor(0xa72c01,kanbi,90,565,38,577,53) then
        click(390,283)
      end	
    end
  end
 
  
	--果盘注册
	
	--立即注册
	lijizhuce="0|2|0xffa670,0|5|0xff6000,0|7|0xff6000,3|7|0xffd8c0,5|7|0xffbf98,6|7|0xff6000,6|4|0xff6000,4|4|0xffffff,4|3|0xffffff"
	--我知道了
	zhidaole = "3|0|0xffa76c,6|0|0xffa76c,6|3|0xff9d5b,4|3|0xff9d5b,2|3|0xff9d5b,2|5|0xffffff,2|7|0xff9d5b,4|7|0xff9d5b,5|7|0xff9d5b"
	
	dianjixuanqu="0|3|0x181c56,0|6|0xb5bed2,2|6|0xb2bcd0,5|6|0x6478a2,5|4|0xf4f6f8,5|2|0x6e80a7,3|1|0x7587ac,3|-2|0x3a3f76,0|-2|0x293b75"
	function register()
		local tt = os.time()
		local isacc = 0
		local ispwd = 0
		local cnt = 0
		local isrec = 0
		while true do
			if os.difftime(os.time(),tt) > 120 then
				kill()
				jdwlLog("register overtime")
				break
			elseif MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then	
				click(575,565)mSleep(2000)
			elseif isacc==0 and ispwd==0 and MulColor(0xfff1e8,lijizhuce,90,599,473,626,490) then
				click(663,278)mSleep(500)
				inputText('#CLEAR#')mSleep(500)
				acc = randomstring(4)..randomnum(4)
				inputText(acc)
				isacc = 1
			elseif isacc==1 and ispwd==0 and MulColor(0xfff1e8,lijizhuce,90,599,473,626,490) then	
				click(671,379)mSleep(500)
				inputText('#CLEAR#')mSleep(500)
				inputText("a123456")
				ispwd=1
			elseif cnt > 3 and	MulColor(0xfff1e8,lijizhuce,90,599,473,626,490) then	
				cnt = 0
				tt = os.time()
				ispwd=0
				isacc=0
			elseif isacc==1 and ispwd==1 and MulColor(0xfff1e8,lijizhuce,90,599,473,626,490) then	
				click(x,y)mSleep(1000)
				cnt = cnt + 1
			elseif MulColor(0xffa568,zhidaole,90,709,539,727,557) then
				click(x,y)
			elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
        click(x,y)				
			elseif isacc==1 and ispwd==1 and MulColor(0xa4b0c8, dianjixuanqu,95, 486, 400, 503, 418) and MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then	
				jdwlLog("register finish")
				recordacc(acc,"a123456")
				break
			end
		end
	end
	
	function recordacc(acc,pwd)
		local _file
		_file = io.open("[public]account.txt","a+")
		if _file ~= nil then
			_file:write(acc..','..pwd..'\n')
			_file:close()
			toast("注册成功帐号:"..acc.."密码："..pwd)
		end
	end
	
	--果盘登录
	function loadgp()
		jdwlLog("loadgp")
		local isacc = 0
		local ispwd = 0
		local ret = nil
		local cnt = 0
		local contens = {}
		local tt =os.time()
		while true do
				if os.difftime(os.time(),tt) > 90 then
					kill()
					jdwlLog("loadgp overtime")
					break
				elseif isacc==0 and ispwd==0 and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then		
					click(672,191)mSleep(300)
					inputText('#CLEAR#')mSleep(500)
					contens = getaccount()
					ret = Split(contens,",")
					inputText(ret[1])
					isacc = 1		
				elseif isacc==1 and ispwd==0 and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then		
					click(644,287)mSleep(300)
					inputText('#CLEAR#')mSleep(500)
					inputText("a123456")
					ispwd=1
				elseif cnt>3 and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then		
					isacc=0
					ispwd=0
					cnt=0
					tt = os.time()
				elseif ispwd==1 and isacc==1 and MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then		
					click(x,y)mSleep(2000)
					cnt = cnt + 1
				elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
					click(x,y)					
				elseif MulColor(0xa4b0c8, dianjixuanqu,95, 486, 400, 503, 418) and MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then		
					jdwlLog("loadgp finish")
					break
				end		
		end
	end
	
  function manload()
    jdwlLog("manload")
    local tt = os.time()
    local isacc = 0
    local ispwd = 0
    local ret = {}
    local contens = nil
    local cnt = 0
    while true do
      if os.difftime(os.time(),tt) > 150  then
        kill()
        jdwlLog("manload overtime")
        tt = os.time()
        isacc = 0
        ispwd = 0
        cnt = 0		elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
          click(x,y)
        elseif MulColor(0xe1dbd1,color_saizi, 90, 441, 421, 460, 445) then
          click(x,y)mSleep(500)
          if MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531) then
            click(x,y)
          end	
        elseif MulColor(0x282520,color_chuangjian,90, 513, 511, 530, 531)==false and MulColor(0x9f9889,color_qing,90,938,286,957,305)	then
          click(x,y)
        elseif MulColor(0x8f8b62,color_email,90,1025,25,1047,42) or MulColor(0x978664,icon_fanhui,90,17,22,36,37) then
          jdwlLog("loadgame finish")
          break
        elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
          click(x,y)
        elseif MulColor(0x000000,fanhui,90,86,72,102,89) then
          click(x,y)		end	
        end
      end
      
      color_dialog = "2|3|0xf9e8e8,4|3|0x9b7979,6|3|0x441b1b,8|3|0x492020,10|3|0xd9bfbf,12|3|0xffe9e9,14|3|0xffe8e8"
      color_email = "3|3|0x90885e,8|5|0x8f7f5e,8|8|0xd4c3a1,10|8|0xd5c4a2,12|8|0xd5c4a2,17|8|0x958a64"
      color_xiaobai = "2|2|0xae0302,2|4|0xad0302,6|0|0xf6f3e7,9|4|0xa80403,11|4|0xdfa39b,13|4|0xf7f4e8"
      color_shenle = "2|2|0x2d2123,4|4|0x572a30,6|6|0xd18083,8|8|0xee6875,5|8|0xeebebb,5|10|0xfdada6"
      color_quanshen = "2|2|0x604730,4|4|0x575457,4|6|0x363235,4|9|0xa88858,6|9|0xdfb279,8|9|0xdeaf78"
      color_dongzuotiao = "-3|4|0xfc0101,4|3|0xf80202,4|8|0xff0000,-4|10|0xff0000,0|13|0xff0000,0|16|0xff0000"
      color_jineng="9|0|0xff0000,9|3|0xff0000,9|6|0xff0000,-1|8|0xff0000,-1|12|0xff0000,9|15|0xff0000"
      color_mubiao = "0|7|0xff0000,8|7|0xff0000,0|16|0xff0000,8|15|0xff0000,9|24|0xff0000"
      color_diyigeguai = "2|3|0x888b89,5|5|0xcfd0cf,5|7|0xd1d2d1,5|10|0xdfe0e0,7|11|0x2a2d29,7|8|0x2b2c28,7|5|0x2b2c27"
      color_lengque = "0|6|0xff0000,5|5|0xff0000,10|0|0xff0000,10|3|0xff0000,10|7|0xff0000,9|11|0xff0000"
      color_dianjijixu = "4|0|0xf1ebd9,8|2|0xf7f2df,4|4|0xb5af9f,2|2|0x32281f,4|2|0x231910,6|3|0x453c32"
      color_shengli = "1|3|0x8f2418,2|6|0x96271a,5|6|0xd0c0aa,6|4|0xcdbda8,6|-1|0xccbca7"
      color_jiangping = "4|0|0xbc4c24,0|4|0x070403,4|4|0xd8d2c2,1|8|0x9b2212,5|8|0x9a1f11"
      color_jp = "2|1|0xe4d940,4|3|0x260a04,4|5|0x280c05,6|5|0xa07c20,8|5|0xe0c124,8|7|0xdfb229"
      
      color_dialog1 = "0|3|0xfde8e8,4|3|0x654240,6|3|0x481e1b,10|3|0xf6e6e6,13|3|0xfde8e8,13|5|0xfde8e8,15|5|0xfde8e8"
      color_dialog2 = "2|2|0xfae5e5,4|4|0xb69b9a,6|4|0x431b19,8|4|0x411916,11|2|0xecdddc,15|4|0xfde8e8"
      color_dialog3 = "1|2|0xfde8e8,4|2|0xb89d9b,6|2|0x49201d,8|2|0x441c19,11|2|0xf9eaea,11|5|0xecdede"
      color_dialog4 = "2|3|0xffebeb,5|3|0x522e2c,7|3|0x481e1b,9|5|0x5c3633,11|5|0xfff4f4,13|5|0xfde8e8"
      color_dialog5 = "2|3|0xfeebeb,5|3|0x512c29,7|3|0x471e1b,9|3|0x714e4b,11|3|0xfff0f0,12|5|0xfde8e8"
      color_dialog6 = "0|3|0xfeecec,1|3|0xe5d2d1,4|3|0x461c1a,6|3|0x4b2320,8|5|0xcab4b3,6|5|0x4d2421"
      color_dialog7 = "0|3|0xa28482,1|5|0x8e6f6d,5|6|0xd0b9b9,7|5|0xebdada,9|4|0x9e817f,9|0|0xdcc9c9"
      color_dialog8 = "3|4|0x4a221e,1|3|0xf3e3e3,5|4|0x441c19,7|3|0x6d4946,7|5|0x67423f"
      color_dialog9 = "1|3|0xfbeded,2|5|0x7e5957,4|5|0x4a221e,5|4|0x451d1a,7|3|0x603a37,8|5|0xb79c9b,10|7|0xe7d8d7"
      color_dialog10 = "1|2|0xfeefef,1|4|0xefdddd,3|4|0x5d3836,5|3|0x431b18,8|2|0xae9391,9|4|0xe9d9d9"
      color_dialog11 = "1|2|0xf6e6e6,3|3|0x4a2320,5|3|0x451d1a,8|2|0xd6c1c0,9|4|0xfef2f2,9|6|0xa28684"
      color_dialog12 = "1|2|0xf0e0e0,3|2|0x502a28,4|4|0x4a221e,6|3|0x441c1a,8|4|0xc1a8a7,9|6|0xaa8e8c"
      color_dialog13 = "1|2|0xc3aaa9,2|4|0x5a3633,4|4|0x4b231f,6|2|0x57312e,7|4|0xa48685,8|6|0x947674"
      
      color_yanjing = "-1|3|0x564d52,-1|9|0x4c4349,3|9|0xaca9ad,8|9|0xd3d1d3,8|5|0x9f9b9e,10|1|0x463b40"
      
      color_wenhao = "1|2|0xa28c51,4|2|0xfdedda,1|5|0x654e07,3|7|0x765b0e,0|10|0xffefdc,2|10|0xffefdd"
      color_wenhao1 = "1|2|0xd4bf96,3|3|0xf8e7d2,3|6|0x927b42,0|8|0x70560a,2|9|0xac9458,3|12|0xffefdd"
      color_wenhao2 = "2|1|0xb59f6a,3|3|0xb9a579,1|6|0x755a0c,3|7|0xa48b4d,1|9|0xffefdd"
      
      shouzhi_zhaohuan = "2|5|0x2b0a0d,4|6|0x3e1116,6|4|0x3c1015,6|2|0x351111,6|0|0xf2d4bf,8|1|0x3f1e1b"
      
      color_fu = "5|0|0xb5b2b5,8|0|0xb5b2b5,0|3|0xa5a1a6,2|3|0xa5a1a6,0|6|0x3e363f,2|6|0x3e363f"
      
      zhaohuan_queding = "0|3|0x20170c,2|6|0x2c2011,6|6|0x936b39,6|2|0x151008,6|0|0xefae5d,8|3|0xc48f4c"
      
      color_tiaoguo = "0|5|0x6c6457,4|5|0x3b3127,8|10|0x2e251b,13|10|0x24232f,13|1|0x574e42,13|5|0x696155"
      color_kuaijin = "0|6|0xc5bfae,5|6|0x22180f,10|3|0x4b4237,10|10|0xddd8c6,3|16|0xf4efdc,16|15|0xf1ecd9"
      
      btn_zhandou = "0|2|0x444d81,0|4|0x434c7f,5|6|0xd0d2f9,7|8|0xf4f4fc,7|10|0x8c8eb9,5|11|0xa9a9d2"
      btn_zhunbei = "0|3|0xd28850,2|7|0xc9722b,4|4|0xfff2ce,7|2|0xfff3d2,10|6|0xc9722c,11|0|0xc96f25"
      
      er_yi = "2|3|0x2b312e,3|5|0x3e4341,5|5|0xb9bab9,5|8|0xc2c4c3,6|8|0x282e2b,6|10|0x282e2b"
      er_er = "1|2|0x2d3330,3|4|0x282e2b,3|6|0x292d2a,3|8|0x292d2a,5|10|0xe0e0e0,6|12|0x3e4441"
      er_san = "0|3|0x808482,0|5|0x282e2b,0|8|0x2a2d29,2|8|0xced0cf,3|10|0x696d6b,4|12|0x292d29"
      
      san_yi = "1|3|0x959896,1|6|0x2b2c28,3|6|0xc4c5c4,3|9|0xcccdcc,5|10|0x292d2a,5|12|0x292d2a"
      san_er = "1|2|0x2f3432,2|4|0x2c322f,4|5|0xc1c3c2,3|7|0x2d3230,4|9|0xc3c5c4,4|12|0xa3a5a4"
      san_san = "2|2|0x696e6b,2|5|0x292f2c,3|7|0xbdbfbe,3|9|0xdadbdb,4|10|0xe3e4e4,4|12|0x4d524f"
      
      color_guihuo = "4|-1|0xe10304,8|-2|0xfb0000,14|0|0xff0000,6|2|0xff0000,1|6|0xff0000,12|5|0xff0000"
      color_guihuo1 = "-1|2|0xff0000,-1|6|0xf40203,-5|10|0xff0000,-1|9|0xff0000,4|8|0xff0000,6|8|0xff0000"
      color_guaiwu = "0|1|0x76a234,2|3|0x87531c,4|3|0x595c57,6|0|0x7a7d7c,7|3|0x090d0e,8|5|0x0e1414"
      
      btn_yuyin = "0|4|0x282521,0|8|0x2a2722,7|8|0x2d2924,7|5|0x2b2823,7|2|0x2a2722,3|4|0x312d28"
      btn_jiaoxue = "2|2|0xad4656,4|1|0x77353d,4|4|0xc95774,6|3|0xaf3a55,8|1|0x964152,8|-1|0x743a43"
      
      icon_zhankai = "0|3|0x571315,3|3|0x571315,3|0|0x85533b,0|6|0xc7743c,2|8|0xd8864c,4|9|0xdb9355"
      icon_guanbi = "1|3|0x57080d,2|5|0x631319,4|3|0x7e1b10,4|7|0x923330,5|9|0x350505,8|9|0x290202"
      
      color_shengli1= "0|5|0xbc7e23,3|5|0xb46022,3|8|0xcd8a1e,6|7|0x981612,6|4|0xa31814,8|1|0xcf8a1d"
      
      shouzhi_chushi = "2|1|0xe7c9b7,2|5|0x290609,4|5|0x3a1014,4|8|0x421217,6|8|0x4b131a,8|4|0x401116"
      
      btn_zhandou1 = "2|4|0x9d2a32,2|7|0x68383c,5|7|0xde3434,5|9|0x5c1212,7|5|0xac2a2a,10|3|0xbdb4b4"
      
      btn_zhandou2 = "0|3|0x79644c,-2|5|0x986f30,0|7|0x936c2e,3|5|0x2f325b,5|6|0x232754,5|2|0xb88e42,3|0|0xc19747"
      
      btn_shoudong = "0|2|0x6d6356,0|5|0x211613,0|8|0xa39c90,-3|8|0xa9a090,-3|5|0xc5beac,-3|2|0x7b7264,-3|0|0x604c3a"
      
      xuenv = "4|-3|0x00a5f3,3|1|0x0074e0,3|4|0x0055ce,6|4|0xacb6ef,6|0|0x0057d8,8|3|0x4f91e6,8|5|0x023dc3"
      
      zidongzhandou = "0|3|0xff0000,0|8|0xff0000,5|8|0xf80202,9|7|0xff0000,11|3|0xff0000,9|-1|0xff0000"
      
      
      dian = "0|2|0xffeeee,5|2|0x411818,7|2|0x3f1717,11|2|0xf7e5e5,13|2|0xffe8e8,13|0|0xffe8e8,8|3|0x4b2929,1|4|0xebd5d5"
      dian1 = "0|2|0xffebeb,4|2|0x54302d,7|2|0x401816,11|2|0xfae6e6,12|0|0xfee9e9,9|0|0x6a4744,8|1|0x421a18"
      
      eye = "-1|1|0xa89b6c,-1|6|0xf6f7f7,1|6|0xb1a47a,1|8|0x83744e,-1|8|0xf8f8f8,-3|8|0xd5d0b7,-3|6|0xcfc8a8"
      
      wen = "0|2|0x7c5e06,4|2|0x916e05,4|1|0x9b7504,4|4|0x866605,5|4|0x926e05,4|5|0x866606,3|6|0x7f6106"
      
			duihua_xiaobai = "0|2|0xffeded,0|4|0xffeeee,3|4|0x552e2b,6|4|0x4b231f,6|2|0x441c19,8|1|0x694643,10|1|0xf9e7e7,10|3|0xfbe7e7"
			function levelup()
        jdwlLog("levelup")
        local cnt = 0
        local tt = os.time()
        while true do
          
          
          
          if os.difftime(os.time(),tt) > 300 then
            kill()
            jdwlLog("levelup overtime")
            tt = os.time()+60
          end	
					
					if MulColor(0xe8d4d4,duihua_xiaobai,90,15-5,279-5,1139-5,303-5) then
						click(x,y)
					end
          if MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621)==false then
            
            if MulColor(0xba2e1a,color_shengli1,90,643,323,665,343) then
              click(x,y)
            elseif MulColor(0xff0000,zidongzhandou,90,425,366,445,385) then
              click(x,y)
            elseif MulColor(0xeed0bd,shouzhi_chushi,90,803,245,819,264) then
              click(778,212)
            elseif MulColor(0xae0302,color_xiaobai,90,773,174,792,192)	then
              click(x,y)
            elseif MulColor(0xfccec1,color_shenle,90,876,251,891,263)	 then
              click(x,y)
            elseif MulColor(0xf6edda,color_quanshen,90,841,126,857,141)	then
              click(x,y)
            elseif MulColor(0xff0000,color_dongzuotiao,90,763,285,783,312) then
              click(x,y)
            elseif MulColor(0xff0000,color_jineng,90,997,359,1015,386) then
              click(x,y)
            elseif MulColor(0xff0000,color_mubiao,90,700,363,728,398)	then
              click(702,167)
            elseif MulColor(0xff0000,color_lengque,90,995,312,1012,334) then
              click(x,y)
            elseif MulColor(0x978f81,color_dianjijixu,90,483,461,498,468) then
              click(x,y)
            elseif MulColor(0x8f2519,color_shengli,90,364,162,384,185) then
              click(x,y)		
            elseif MulColor(0xbc4e26,color_jiangping,90,554,303,570,317) then
              click(x,y)
            elseif MulColor(0xe4d947,color_jp,90,535,397,553,420) then
              click(x,y)
            elseif MulColor(0x352c22,color_tiaoguo,90, 767, 468, 790, 491) or MulColor(0xccc6b5,color_kuaijin,90,989,66,1016,96)	then
              click(x,y)		
              
              --duihua
            elseif MulColor(0xfbdcdc, dian,90,11-5,208-5,1135,232-5) then
              click(x,y) tt = os.time()
            elseif MulColor(0xfbdcdc, dian,90,4,264-5,1140-5,283-5) then
              click(x,y) tt = os.time()
            elseif MulColor(0xffecec, dian1,90,11-5,179-5,1130-5,203-5) then
              click(x,y) tt = os.time()
            elseif MulColor(0xffecec, dian1,90,24-5,353-5,1136-5,378-5) then
              click(x,y) tt = os.time()				
            elseif MulColor(0xffecec, dian1,90,8-5,227-5,1129-5,251-5) then
              click(x,y) tt = os.time()	
            elseif MulColor(0xfbfdff,eye,90,10-5,179-5,1140-5,208-5) then
              click(x,y) tt = os.time()
            elseif MulColor(0x9e7808,wen,90,11-5,238-5,1137-5,255-5) then
              click(x,y) tt = os.time()
            elseif MulColor(0xffecec, dian1,90,8-5,252-5,1137-5,272-5) then
              click(x,y) tt = os.time()							
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,1003,225,1021,240) then
              click(982,193) tt = os.time()
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,606,538,621,558) then
              click(584,515) tt = os.time()
            elseif MulColor(0xb5b2b5,color_fu,90,335,519,355,545) then
              click(612,361) tt = os.time()
            elseif MulColor(0x151008,zhaohuan_queding,90,435,571,448,582) then
              click(x,y) tt = os.time()
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,844,538,859,556) then
              click(822,509) tt = os.time()
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,368,538,384,555) then
              click(347,512)	tt = os.time()
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,305,269,317,285) then
              click(282,241)	tt = os.time() 	
            elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,69,50,87,73) then
              click(47,31)	 tt = os.time()
              
            elseif MulColor(0x49568d,btn_zhandou,90,450,290,466,315) then
              click(x,y) tt = os.time()
            elseif MulColor(0x2c2c2c,btn_zhandou1,90,451,388,467,411) then
              click(x,y) tt = os.time()	
            elseif MulColor(0x272a58,btn_zhandou2,90,837,253,860,283) then
              click(x,y) tt = os.time()	
            elseif MulColor(0xd18444,btn_zhunbei,90,1049,496,1068,509) then
              click(x,y) tt = os.time()
              
              
              
            elseif MulColor(0xff0000,color_guihuo,90,495,435,519,448) then
              click(x,y) tt = os.time()
            elseif MulColor(0xff0000,color_guihuo1,90,798,302,821,323) then
              click(x,y)	 tt = os.time()	
            elseif MulColor(0x988774,btn_yuyin,90,530,276,544,288) then
              click(464,383) tt = os.time()
            elseif MulColor(0xa55967,btn_jiaoxue,90,936,145,948,162) then
              click(x,y) tt = os.time()
              
            elseif (MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) or MulColor(0x88563e,icon_zhankai,90,1094,520,1111,536)) then
              jdwlLog("levelup finish")
              break
            elseif MulColor(0x4c3c45,shibai,90,398,180,412,200) then
              click(x,y)
              fail()							
            end		
          elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) then
            
            if MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x2fb7f5,xuenv,90,949,598,974,621) then
              click(x,y)
            end
            if MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x37231c,color_diyigeguai,90,621,83,643,113) then
              click(705,168) tt = os.time()
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x2d2a26,er_yi,90,467,88,487,121) then
              click(558,183) tt = os.time()
              
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x37231c,er_er,90,658,44,675,71) then
              click(736,157) tt = os.time()
              
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x303633,er_san,90,773,142,791,170) then
              click(844,238) tt = os.time()
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x99c646,color_guaiwu,90,630,48,648,70) then
              click(563,198) tt = os.time()
              
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x2f2924,san_yi,90,356,162,371,194)	then
              click(440,241) tt = os.time()
              
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x38221b,san_er,90,540,215,557,243)	then
              click(619,294) tt = os.time()
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x292f2c,san_san,90,558,112,575,138)	then
              click(625,209) tt = os.time()
              
            elseif MulColor(0xdaceb9,btn_shoudong,90,114,603,126,621) and MulColor(0x36241c,maonv,90,476,62,504,92)	then
              click(625,209) tt = os.time()
            end
          end	
          reconnect()
        end
      end
      
      
      maonv = "0|3|0x3d4240,0|7|0x37221a,0|10|0x37221a,3|10|0xc9caca,3|12|0xdbdcdb,4|5|0xbcbdbc"
      
      
      function fail()
        jdwlLog("fail")
        local isok=0
        local tt = os.time()
        local _buzu = 0
        while true do
          if os.difftime(os.time(),tt) > 120 then
            kill()
            jdwlLog("fail overtime")
            tt = os.time()
            isok = 0
            break
          elseif isok==1 and MulColor(0x301d0d,icon_award,90,917,179,935,192) then
            jdwlLog("fail finish")
            break
          elseif isok==1 and MulColor(0x24170a,icon_award1,90,965,198,980,212) then
            jdwlLog("fail finish")
            break
          elseif isok==1 and MulColor(0xb28f8a,icon_award2,90,948,228,968,250) then
            jdwlLog("fail finish")
            break	
          elseif MulColor(0x4c3c45,shibai,90,398,180,412,200) then
            click(x,y)
          elseif MulColor(0x978664,icon_fanhui,90,17,22,36,37) then	
            click(x,y)
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,1003,225,1021,240) then
            click(982,193) 
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,606,538,621,558) then
            click(584,515) 
          elseif MulColor(0xb5b2b5,color_fu,90,335,519,355,545) then
            click(612,361) 
          elseif MulColor(0x151008,zhaohuan_queding,90,435,571,448,582) then
            click(x,y) 
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,844,538,859,556) then
            click(822,509) 
            isok=1
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,368,538,384,555) then
            click(347,512)
            isok=1	
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,305,269,317,285) then
            click(282,241)	
            isok=1
          elseif MulColor(0xeecfbc,shouzhi_zhaohuan,90,69,50,87,73) then
            click(47,31)	
          elseif isok==0 and MulColor(0x301d0d,icon_award,90,917,179,935,192) then
            click(x,y)
          elseif isok==0 and MulColor(0x24170a,icon_award1,90,965,198,980,212) then
            click(x,y)
          elseif isok==0 and MulColor(0xb28f8a,icon_award2,90,948,228,968,250) then
            click(x,y-20)	
          elseif MulColor(0x978f81,color_dianjijixu,90,483,461,498,468) then
            click(x,y)	
          elseif MulColor(0x8e673a,icon_fu,90,591,566,610,581) then
            click(x,y)
          elseif MulColor(0x292621,gouyubuzu,95, 490, 268, 518, 296) then
            click(451,378)
            _buzu = 1
          end		
          
          if MulColor(0x22180f,r_chou,95,322,563,339,578) then
            click(347,505)mSleep(1000)
          end
          
          
          if MulColor(0xc2c2bb,r_jieguo,95, 263, 292, 279, 311) or MulColor(0xb2b2b2,r_jieguo1,95,261,292,280,312) then
            click(x,y)
          end
          
          if MulColor(0x7b7366,sr_chou,95, 559, 563, 578, 580) then
            click(585,514)
          end
          
          if _buzu==0 and MulColor(0x22180f,ssr_chou,95, 797, 563, 815, 580) then
            click(829,522)
          end
          
          if MulColor(0x786554,r_0, 95, 536, 15, 551, 35) and MulColor(0xa39584,sr_0,95,717,15,733,37) and MulColor(0xbdb2a0,ssr_0, 95, 898, 15, 913, 37) then
            isok=1
            click(36,29)
          end
          
          reconnect()
        end
      end
      
      gouyubuzu = "0|4|0x332e29,3|6|0x38332d,3|10|0x463f37,3|13|0x2c2924,7|17|0x292622,-5|16|0x2b2723,-2|12|0x3c3730"
      
      r_0="0|4|0x361d0d,0|7|0x321a11,0|10|0xc8bead,6|10|0xd6cebc,6|7|0xf1ebd8,6|4|0xe9e2cf,6|1|0xf4efdc"
      sr_0="0|3|0x371f0e,-3|7|0xd3cab7,-3|9|0xe4ddcb,-1|11|0x452f25,1|13|0x7f6f62,4|10|0xcac1b0,4|6|0xbaaf9d,2|8|0x331b0e"
      ssr_0="-1|3|0xe1d9c7,-1|6|0xe5decc,0|10|0xd0c7b6,3|12|0xada292,7|8|0xd4ccbb,7|5|0xe3dbc9,3|5|0x351c0c,3|2|0x371e0e"
      
      --95, 320, 562, 341, 580
      r_chou = "0|4|0x22180f,2|4|0x6c6457,5|4|0x22180f,5|2|0xe4decc,5|0|0x291f16,3|2|0xf6f1de,3|4|0xdfdac8"
      
      
      ssr_chou = "0|2|0x7f776a,0|4|0x22180f,0|6|0x2f251c,3|6|0xdad4c2,5|6|0x948c7e,5|3|0x2c2219,5|0|0x2a2017,3|2|0xf4efdc"
      
      sr_chou = "0|2|0x2c2218,0|4|0xa49d8e,0|6|0x22180f,0|7|0x30271d,2|7|0xdbd6c4,4|5|0x332a20,4|2|0x7d7668,6|0|0x22180f"
      
      r_jieguo = "0|2|0xb9b9b2,0|4|0xbebeb7,1|6|0xb4b4ad,3|6|0xb9b9b2,3|4|0xb9b9b2,5|3|0xb9b9b2,7|3|0xbcbcb5,5|0|0xc4c4bd"
      r_jieguo1 = "0|2|0xa8a8a8,0|5|0xaaaaaa,3|5|0xaaaaaa,3|2|0xacacac,3|-1|0xb3b3b3,5|3|0xafafaf"
      
      shibai = "0|3|0x483c53,-3|5|0x2f1d26,2|5|0x4a3e54,3|2|0x827374,5|5|0xa99375,5|7|0x998b83"
      
      icon_liwu = "0|2|0xccf1ea,0|5|0x47cbb6,0|9|0x50dccb,2|7|0x4cd0bf,4|5|0x4dc9b8,6|3|0x3ca190,6|7|0x32a796"
      btn_shouq = "0|2|0x9f442b,2|2|0x993e25,4|3|0xb36332,4|1|0x953a27,6|3|0xaf642d"
      icon_yukuai = "-1|5|0x5f5850,-1|8|0x3a3530,-1|13|0x59524b,5|13|0xd8c8b7,3|2|0x5b544c,9|2|0x38342f,9|12|0x615a52"
      btn_guanbiemail = "2|2|0x87454d,4|0|0x69373f,4|3|0x8c3548,4|5|0xcf5b75,6|4|0xb43d4e,8|1|0x813b48"
      icon_hui = "2|2|0x3e1d25,3|3|0x432126,5|1|0x361218,7|0|0x3a1e23,4|5|0x464040"
      
      kongyoujian = "-1|3|0xb8a297,-1|6|0xd3bd94,2|6|0xf0ddb2,2|4|0xded2c8,2|2|0xe2dad1,4|2|0xd8b1a9,5|5|0xdec694,7|7|0xf0daa4"
      
      icon_gengxin = "1|5|0x4a443e,-1|11|0x2c2924,-5|14|0x575049,4|14|0x2d2925,6|15|0x3b3631,5|4|0x3a3530,1|0|0x45403a"
      
      yiduyoujian = "0|1|0xcfa69e,0|4|0xd9bfb6,1|5|0xd2b1a1,3|5|0xe6d5cd,5|3|0xe2dad2,8|3|0xc1a49c,7|-1|0xe3bbab,9|-1|0xcba291"
      
      yidu = "2|-1|0x956f3f,2|1|0x784f26,4|2|0x784e28,5|4|0xa17d4b,-1|6|0xa4804d,-1|8|0xa5804e,4|8|0x754c2b,4|11|0x9d7949,7|11|0xa4804e"
      weidu = "0|4|0xd8c8b7,2|4|0xd8c8b7,3|2|0xd8c8b7,3|6|0xd8c8b7,2|9|0xd8c8b7,3|11|0xd8c8b7"
      hudiejie = "0|2|0xa5422a,1|3|0x974d2b,2|4|0x98502d,5|3|0xa56330,4|2|0xa45d2c,-2|2|0xc8654d,-2|4|0xc67a51,-2|6|0xb56239"
      
      function email()
        jdwlLog("email")
        local isok= 0 
        local tt =os.time()
				local lw = 0
        while true do
          if os.difftime(os.time(),tt) > 120 then
            kill()
            jdwlLog("email overtime")
            tt = os.time()
          elseif MulColor(0xa55967,btn_jiaoxue,90,936,145,948,162) then
            click(x,y) tt = os.time()								
          elseif isok==1 and (MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) or MulColor(0x88563e,icon_zhankai,90,1094,520,1111,536)) then
            jdwlLog("email finish")
            break
          elseif isok==1 and MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) then
            click(x,y) mSleep(500)
          elseif MulColor(0xa34827,btn_shouq,90,693,516,709,531) then
            click(x,y) mSleep(500)	
            
          elseif MulColor(0x8d3816,hudiejie ,90, 185, 147, 199,159) then
            click(x,y)mSleep(300)
          elseif MulColor(0xc9e7e2,icon_liwu,90,196,156,214,177) then
            click(x,y) mSleep(500)
						lw=1
          elseif MulColor(0xc9e7e2,icon_liwu,90,198,261,217,284) then
            click(x,y) mSleep(500)	
						lw=1
          elseif MulColor(0xb49188,yiduyoujian,90,176,142,205,157) and MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) then
            isok=1--					elseif MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) and MulColor(0x9f7a48,yidu ,95, 414, 136, 432, 156) then
            --						isok=1						
            --					elseif MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) and MulColor(0xd8c8b7,weidu ,95, 416, 132, 437, 161) then
            --						click(x,y)										
            --					elseif MulColor(0xb49188,yiduyoujian,90,176,142,205,157) and MulColor(0xc9e7e2,icon_liwu,90,196,156,214,177)==false and MulColor(0xc9e7e2,icon_liwu,90,198,261,217,284)==false and MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) then	
            --						isok=1
            --					elseif MulColor(0xb49188,yiduyoujian,90,176,142,205,157)==false and MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) then
            --						click(253,155)						
          elseif MulColor(0x766d64,icon_yukuai,90,236,117,255,135) then
            isok=1
          elseif isok==0 and MulColor(0x8f8b62,color_email,90,1025,25,1047,42) then 
            click(x,y)	 mSleep(500)
          elseif MulColor(0x39171c,icon_hui,90,1039,52,1053,66) then
            click(x,y) mSleep(300)
          elseif MulColor(0x5c564e,icon_gengxin,90,237,116,253,136) then
            isok=1
          elseif os.difftime(os.time(),tt) > 30 and MulColor(0x8d3a4b,btn_guanbiemail,90,1041,52,1056,62) then
            isok=1				
          end
          reconnect()
        end
      end
      
      btn_renwu = "2|2|0x612e2e,0|5|0xd1c0b6,0|7|0xccbbaa,3|5|0x602a2a,3|3|0x612e2e,5|4|0x301414,5|6|0x3b1717"
      btn_wancheng = "0|3|0x2d2822,3|3|0x453929,5|5|0x372f25,3|10|0x2c2822,-2|10|0x2d2822,-4|12|0x3f3527"
      btn_guanbirenwu = "4|0|0x7e2d3e,8|0|0x91404e,3|2|0xac395a,5|2|0xaf3c55,5|5|0xedb3b5"
      
      hui_guanbi = "1|2|0x2c1318,2|4|0x2c1318,4|6|0x34111b,5|7|0x3e1c23,5|8|0x422427"
      
      function arch()
        jdwlLog("arch")
        local isok=0
        local cnt = 1
        local tt =os.time()
        while true do
          if os.difftime(os.time(),tt)	> 120 then
            kill()
            jdwlLog("arch overtime")
            tt = os.time()
          elseif isok==1 and (MulColor(0x835050,btn_renwu,90,609,549,622,564) or MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569)) then
            jdwlLog("arch finish")
            break
          elseif isok== 1 and MulColor(0xb05868,btn_guanbirenwu,90,1038,56,1052,67) then
            click(x,y) 
          elseif isok==0 and MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) then
            click(x,y) 
          elseif MulColor(0x835050,btn_renwu,90,609,549,622,564) then
            click(x,y) 
          elseif MulColor(0x332c24,btn_wancheng,90,901,128,914,149) then
            click(x,y) 
          elseif cnt > 2 and MulColor(0xb05868,btn_guanbirenwu,90,1038,56,1052,67) then
            isok=1
          elseif MulColor(0x332c24,btn_wancheng,90,901,128,914,149)==false and MulColor(0xb05868,btn_guanbirenwu,90,1038,56,1052,67) then
            cnt = cnt + 1
            mSleep(200)
          elseif MulColor(0x220e11,hui_guanbi,90,1036,53,1053,69) then
            click(x,y) 
          end
          reconnect()
        end
      end
      
      tujian = "0|3|0x5f473e,0|7|0xf1ebd8,-4|7|0x4a322c,0|9|0xf8f3e0,-3|13|0xf4eedb,0|13|0xf8f3e0,4|13|0xf8f3e0"
      
      shishentujian = "1|2|0xe34849,1|5|0xbb3344,4|5|0xb34657,4|9|0xfef9d9,1|9|0xfffddd,3|3|0xd7434b"
      
      shishenhuijuan = "0|2|0xfff2e1,0|5|0xb39180,3|8|0x411e0b,4|10|0xffeccb,4|7|0x30160b,4|3|0x674424,6|2|0xfff6d5,6|6|0xfbf0ce"
      
      shishenweixin = "0|3|0xebf9eb,3|4|0x82c182,5|3|0x96d196,7|3|0x94dd94,5|1|0xffffff,11|1|0x39af37,11|-1|0x39af37"
      
      shishenweibo = "-1|2|0xb53131,-1|4|0xb73333,2|5|0xffe3e3,4|2|0xfff7f7,4|-2|0xbb3f3f,6|-3|0xbb4646,8|-1|0xffffff,8|2|0xedc8c8"
      
      shishen_r = "0|2|0x0e62bb,0|6|0x1875c5,0|9|0x1c7ec9,3|9|0x2e8bd1,6|9|0x2498d9,10|9|0x1889b8,12|8|0x197fd4,15|5|0x126dbf,12|2|0x1265b8"
      function shareweixin(param)
        sysLog(param)
        jdwlLog("shareweixin")
        local tt = os.time()
        local isok=0
        while true do
          if param == "2" then
            break
          elseif os.difftime(os.time(),tt) > 30 then
            kill()
            tt = os.time()
            jdwlLog("shareweixin overtime")
            break
          elseif isok==1 and (MulColor(0xf7f2df,tujian,95,224,595,253,616) or MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569))	then
            jdwlLog("shareweixin finish")
            break
          elseif MulColor(0xf9e9b7,huode,90,427,162,457,189) then
            click(350,488)						
          elseif isok == 0 and MulColor(0xf7f2df,tujian,95,224,595,253,616) then
            click(x,y)
          elseif isok==0 and MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) then
            click(x,y)
          elseif isok == 0 and MulColor(0xd33f48,shishentujian,95,319,222,332,238) then
            click(x,y)
          elseif isok== 0 and MulColor(0xeee8cd,shishenhuijuan,95,989,546,1005,570) then
            click(x,y)
          elseif isok == 0 and param=="0"  and MulColor(0x389e27,shishenweixin,95,1049,569,1072,593) then
            click(x,y)mSleep(2000)
          elseif isok == 0 and param=="1"  and MulColor(0xb83434,shishenweibo,95,955,577,979,606) then
            click(x,y)mSleep(2000)
          elseif isok == 0 and param == "3" and MulColor(0x0c5eb1,shishen_r,95, 168, 568, 204, 592) and	MulColor(0x389e27,shishenweixin,95,1049,569,1072,593) ==false then 
            isok=1
            click(36,42)
          elseif isok == 0 and param == "3" and MulColor(0x0c5eb1,shishen_r,95, 168, 568, 204, 592) and	MulColor(0xb83434,shishenweibo,95,955,577,979,606) ==false then 
            isok=1
            click(36,42)	
          elseif param == "0" and MulColor(0xffffff,weixin_fasong,95,1036,83,1060,113) or MulColor(0x1aad19,weixin_fasong1,95,90,49,105,68) then
            click(x,y)mSleep(2000)	
            isok=1
            
          elseif isok==0 and param == "0" and MulColor(0x389e27,shishenweixin,95,1049,569,1072,593) then
            click(x,y) mSleep(2000)
          elseif MulColor(0xff8200,weibodenglu_queding,95,603,320,620,339) then
            click(x,y)
          elseif param == "1" and MulColor(0xff8607,weibo_fasong,95,81,40,105,69) then
            click(x,y)mSleep(2000)	
            isok=1		
          elseif isok==1 and MulColor(0x389e27,shishenweixin,95,1049,569,1072,593) then
            click(36,42)
          elseif isok==1 and MulColor(0xeee8cd,shishenhuijuan,95,989,546,1005,570) then
            click(1052,88)
          elseif isok==1 and MulColor(0xd33f48,shishentujian,95,319,222,332,238) then
            click(986,112)
          end
          reconnect()
        end
        
      end
      
      weibo_fasong = "2|2|0xff8606,2|4|0xff8606,2|6|0xffffff,2|9|0xff8606,5|9|0xffffff,7|0|0xff8505,7|6|0xffffff"
      
      weibodenglu_queding = "0|1|0xff8200,0|4|0xffffff,0|7|0xff8200,2|8|0xff8200,7|8|0xff8200,7|7|0xff8200,7|2|0xff8200,7|0|0xff8200"
      
      weixin_fasong1 = "0|2|0x1aad19,0|7|0x1aad19,5|7|0x1aad19,5|5|0xffffff,5|2|0x1aad19,5|0|0x1aad19"
      
      icon_award = "3|0|0x301d0d,6|2|0x331f0e,5|5|0x39230f,1|6|0x3b240f,-2|4|0x36210e,0|2|0xffffcc,3|3|0xffffd9"
      icon_fu = "0|3|0x271d61,4|3|0xcea954,8|1|0xa37d52,8|4|0x3b2c64,11|4|0x2c205d,13|2|0x896642,11|7|0x271b5b"
      icon_jiao = "3|0|0xb5b2b5,5|0|0xb5b2b5,5|3|0xa5a1a6,2|4|0x767077,-1|4|0x767077,-1|6|0x3e363f,1|6|0x3e363f"
      icon_0 = "0|4|0xd1c8b6,0|8|0xe6dfcd,3|12|0xaca190,7|9|0xd7cfbe,7|5|0xb8ad9b,7|0|0xd8d0be,3|1|0x371f0e,4|5|0x341c0b"
      icon_award1 = "2|0|0x26180a,5|1|0x27190b,5|3|0x26180a,1|4|0x24170a,2|5|0x24170a,2|1|0xfff6a7,3|3|0xfff5a5"
      
      icon_award2 = "0|4|0x704d39,3|4|0x694834,3|1|0xae8b86,5|5|0x4e3429,2|6|0x5c432f,2|8|0x4a382e"
      
      caidan = "0|2|0x552c55,0|5|0x46352c,0|7|0x48372f,3|7|0x47362d,3|3|0x593059,3|1|0x542b57"
      
      
      oushen = "0|3|0x312d28,0|9|0x302c27,5|9|0xcbb59c,4|5|0x2b2723,4|2|0xcbb59c,5|-1|0x2d2a25,8|2|0x342f2a,8|6|0x342f2a,8|10|0x2f2b26"
      quxiao = "2|4|0x634e32,2|6|0xf0b05d,2|10|0xf3b25e,5|8|0x3b3226,5|3|0x393126,0|6|0x4c3e2b"
      
      
      sr = "2|0|0xc336ec,2|3|0x392a3f,2|6|0xbb40cf,3|8|0xa63bb6,5|6|0xe14cf8,7|4|0xcb43ea,7|6|0xc944de"
      r = "2|0|0x2790da,5|0|0x2791dc,5|2|0x2a97e0,7|2|0x2a97e0,7|4|0x2d9ee6,2|4|0x2d97d7,3|6|0x1c231b,6|6|0x2c8dc0"
      huode = "0|2|0xf9e9b7,-2|5|0xf2e2a8,-5|7|0xf1e0a7,-5|10|0xece4a2,-5|14|0x663508,4|12|0xf3e19e,8|10|0x6a4406,10|8|0x8f5e2d"
      
      ssr = "2|2|0xdeb510,3|7|0xfffd06,6|5|0xfae907,8|5|0xfaed09,7|2|0x9a7516,2|5|0x4f4439,0|5|0x675f57"
      
      record = ""
      
      weixin_share = "0|2|0x45a437,0|5|0xace3a6,3|5|0x38ac30,5|3|0x3caf34,5|1|0x3db035,5|-1|0x3db035,7|2|0x3db035"
      weixin_fasong = "2|2|0x1aad19,2|4|0xf5fbf5,2|7|0x1aad19,4|7|0x1aad19,5|3|0x1aad19,7|1|0x4abe49,7|4|0xf5fbf5,7|6|0x26b125"
      guhuoniao = "0|4|0x24221f,-5|3|0x47443e,-7|6|0xd9d0bf,-7|8|0xd9d0bf,-6|11|0x131210,-3|10|0x262522,-1|10|0x151413,1|7|0xd9d0bf"
      function award(ck)
        
        jdwlLog("award")
        local isok=0
        local tt =os.time()
        local isrecssr = 0
        local isrecsr = 0
        local isrecr = 0
        local _share = 0
        while true do
          if ck == "1" then
            break
          end
          if os.difftime(os.time(),tt) > 120 then
            kill()
            jdwlLog("award overtime")
            tt = os.time()
          elseif isok==1 and (MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) or MulColor(0x88563e,icon_zhankai,90,1094,520,1111,536)) then
            jdwlLog("award finish")
            break
          elseif MulColor(0xb05868,btn_guanbirenwu,90,1038,56,1052,67) then						
            click(x,y)
          elseif MulColor(0xd2cab7,icon_0,90,717,13,733,36) then
            click(39,29)
            isok=1
          elseif isok==0 and MulColor(0x301d0d,icon_award,90,917,179,935,192) then
            click(x,y)
          elseif isok==0 and MulColor(0x24170a,icon_award1,90,965,198,980,212) then
            click(x,y)
          elseif isok==0 and MulColor(0xb28f8a,icon_award2,90,948,228,968,250) then
            click(x,y-20)
          elseif MulColor(0x8e673a,icon_fu,90,591,566,610,581) then
            click(x,y)
            isrecssr = 0
            isrecsr = 0
            isrecr = 0
          elseif MulColor(0xb5b2b5,icon_jiao,90,330,520,351,544) then
            click(597,336)mSleep(3000)
            --wa
          elseif  MulColor(0x282520,oushen,90,471,285,490,310) and MulColor(0x4c3e2b,quxiao,90,429,365,441,383) then
            click(x,y)
            --					elseif MulColor(0x151008,zhaohuan_queding,90,435,571,448,582) then
            
            --						mSleep(1000)
          elseif _share == 1 and MulColor(0x151008,zhaohuan_queding,95,435,571,448,582) and MulColor(0x3aaf37,weixin_share,95,965,481,991,506) then
            click(x,y)mSleep(3000)
          elseif MulColor(0xffffff,weixin_fasong,95,1036,83,1060,113) then
            click(x,y)mSleep(2000)
            _share = 1
          elseif MulColor(0x2790da,r,95,319,45,349,61) and MulColor(0x151008,zhaohuan_queding,95,435,571,448,582) then
            click(x,y) tt = os.time()
            if isrecr == 0 then
              record = record.."|".."r"
              isrecr = 1
            end
          elseif MulColor(0xc539eb,sr,95,314,46,334,59) and MulColor(0x1b1a18,guhuoniao,90,322,141,340,160) and MulColor(0x151008,zhaohuan_queding,95,435,571,448,582) then
            click(x,y)	tt = os.time()	
            if isrecsr == 0 then
              record = record.."|".."niao"
              isrecsr = 1
            end
            SAVE_PIC = true
          elseif MulColor(0xc539eb,sr,95,314,46,334,59) and MulColor(0x1b1a18,guhuoniao,90,322,141,340,160)==false and MulColor(0x151008,zhaohuan_queding,95,435,571,448,582) then
            click(x,y)	tt = os.time()	
            if isrecsr == 0 then
              record = record.."|".."sr"
              isrecsr = 1
            end
          elseif MulColor(0xf7b826,ssr,95,311,43,330,57) and MulColor(0x151008,zhaohuan_queding,95,435,571,448,582) then			
            click(x,y) tt = os.time()
            if isrecssr == 0 then
              record = record.."|".."ssr"
              isrecssr=1
            end          
            SAVE_PIC=true
          elseif MulColor(0x542b59,caidan,90,781,318,807,341) then
            click(988,315)
          elseif MulColor(0xf9e9b7,huode,90,427,162,457,189) then
            click(350,488)			
          end
          reconnect()
        end
      end
      
      btn_jinru = "0|4|0x272420,-1|7|0x292622,3|7|0xdbdbdb,3|3|0x282521,6|0|0x272420,6|3|0x272420,6|6|0x272420"
      
      lvdenglu = "0|3|0x37b86e,0|4|0x73cd99,4|4|0x73cd99,4|2|0x37b86e,6|2|0x37b86e,6|4|0x73cd99,8|2|0x37b86e,8|5|0xffffff,9|5|0xffffff"
      
      touxiang = "0|3|0xd92c29,2|3|0xd92b26,2|5|0xddd6cc,4|5|0xdde0d5,4|7|0xd92b28,6|7|0xdb6f68,6|4|0xddd0c6"
      heitouxiang = "3|0|0x981210,3|3|0x991f1c,0|3|0x991f1d,0|6|0x99423d,3|6|0x9d9f97,5|6|0x980b08,5|8|0x991c19"
      yonghu = "2|3|0x331d18,2|6|0xd9c7b6,2|9|0x2b170f,6|9|0xfff7d9,6|6|0xfffadd,6|2|0xfcf6d5,10|2|0x35140e,10|8|0x22120b"
      qiehuan = "0|4|0x22b260,0|7|0x3cbb72,5|7|0x3cbb72,5|3|0xf8f8f8,5|0|0x22b260,9|0|0x22b260,9|4|0xf8f8f8,9|7|0x3cbb72"
      
      touxiang1= "2|3|0x1c1618,2|7|0x503005,4|7|0xff9900,4|4|0xf99b0f,4|2|0x5a2b22,6|3|0x2b2e46,6|6|0xff9b00"
      
      heitouxiang1 = "0|3|0x2e201e,2|5|0x2c1b06,4|5|0xb16b00,6|5|0xb46d00,6|7|0xb46d00,4|7|0xb46c00,4|1|0x3f1e17,6|1|0x401f18"
      
			uc_qh = "0|2|0xe6e3e8,0|6|0x3f2718,0|8|0x392111,3|8|0x3e2617,6|8|0xe0dde1,6|6|0x75645c,6|3|0x371f0e,6|0|0xbcb5b4,4|4|0x371f0e"
			
			xuetiao = "0|2|0xfd9700,0|4|0xff9b02,2|4|0xff9b02,2|2|0xff9b02,2|0|0xff9b02,4|0|0xff9e02,4|3|0xff9e03,4|4|0xff9e05"
			
      function exitgame()
        record = ""
        jdwlLog("exitgame")
				local isok=0
        local tt = os.time()
        while true do
          if os.difftime(os.time(),tt)	> 90 then
            kill()
            jdwlLog("exitgame overtime")
						tt = os.time()
            --modifyindex()
					elseif MulColor(0xfd9700,xuetiao,90,95,55,117,75) then
						click(52,52)
          elseif MulColor(0xe4cebd,yonghu,90,711,179,728,197) then
            click(x,y) mSleep(500)
					elseif MulColor(0xf8f8ff,uc_qh,90,711,181,726,203) then
						click(x,y)
						isok=1
          elseif MulColor(0x22b260,qiehuan,90,1092,33,1118,46) then
            click(x,y) mSleep(500)
          elseif MulColor(0x3b3127,huanfu,90,576,242,600,265) then
            click(1067,565)	mSleep(500)								
          elseif MulColor(0xda625d,touxiang,90,78,66,100,90) then
            click(x,y) mSleep(500)
          elseif MulColor(0x9a4542,heitouxiang,90,84,67,102,88) then
            click(x,y) mSleep(500)
          elseif MulColor(0x2f201e,heitouxiang1,90,91,50,109,68) then
            click(x,y) mSleep(500)
          elseif MulColor(0x432e2c,touxiang1,90,91,50,108,67) then
            click(x,y) mSleep(500)			
          elseif isok==1 and (MulColor(0x292622,btn_jinru,90,1038,498,1056,515) or MulColor(0x22b260,shiyongqita,90,448,451,460,466)) then
            modifyindex()
            jdwlLog("exitgame finish")
            break
					elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
						click(x,y)
          end	
        end
      end
      huanfu = "0|3|0x42382d,0|7|0x382e24,5|9|0x554b3f,5|2|0x5c5246,8|0|0xede2d0,11|0|0x392f25,11|7|0x372d23,7|14|0x3a3026,16|14|0x342a20"    
      dinghao = "3|3|0x403a32,3|6|0x332f29,6|6|0x2f2b26,6|11|0x2a2722,6|14|0x292521,5|16|0x292621,0|11|0x2c2824,-3|7|0x2d2924"
      duankai = "0|2|0x3e3831,1|3|0x3c3630,-2|9|0x2c2824,0|14|0x272420,4|14|0x272420,9|14|0x2a2722,9|10|0x2c2924,7|9|0x272420,5|8|0x2b2723"
      quedinganniu = "0|3|0x292521,0|5|0x2a2621,2|5|0xe6a95b,3|1|0xeaab5c,7|0|0xf1b05e,7|4|0xe8aa5b,9|4|0x302a23,9|1|0x272420"    
      dinghaoqueding = "0|2|0x292521,0|4|0x2a2621,2|4|0xe6a95b,3|0|0xeaab5c,7|0|0xe0a459,8|2|0xe8aa5b,9|1|0x272420,9|4|0x352d24"		
      function reconnect()
        if MulColor(0x3c3630,dinghao,90,565,273,593,303) and MulColor(0x292521, dinghaoqueding,95, 553, 353, 569, 365) then
          click(573,356)
        elseif MulColor(0x282521,duankai,95, 556,277,580,302) and MulColor(0x3a3126,quedinganniu, 95, 552, 351, 568, 365) then
          click(571,354)
				elseif MulColor(0xffffff,jinruyouxi_uc,90,668,424,687,438) then
					click(x,y)
				elseif MulColor(0xffa36c,denglu_guopan,90,539,447,565,462) then		
					click(x,y)
        elseif MulColor(0x292622,btn_jinru,90,1038,498,1056,515) then
          click(x,y)
        elseif MulColor(0x000000,fanhui,90,86,72,102,89) then
          click(x,y)	
        elseif MulColor(0xb4e5c9,lvdenglu,90,622,330,646,343) then
          click(x,y)
        elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537)==false and
        MulColor(0xe1dbd1,color_saizi, 90, 441, 421, 460, 445)==false and
        MulColor(0x9f9889,color_qing,90,938,286,957,305) then
          click(x,y)
        elseif MulColor(0x3b3127,huanfu,90,576,242,600,265) then
          click(1067,565)
        elseif MulColor(0x2f2b26,gengxin,90,430,244,458,277) then
          click(672,377)		
				elseif MulColor(0xffffff,btn_jieshou,90,710,520,732,537) then
					click(x,y)					
        end
      end
      
      
      function recordssr(jl)
        local i = string.find(record,"ssr")
        local j = string.find(record,"niao")
        if (jl == "1" and (i ~= nil or j ~= nil)) or (jl=="0") then
          local curacc = nil
          local l
          local cz = 0
          curacc = getrecordacc()
          local _file = io.open("[public]record.txt","r")
          if _file ~= nil then
            for l in _file:lines() do
              if l == curacc then
                cz = 1
                break
              end
            end
            _file:close()
            
            if cz == 0 then
              _file = io.open("[public]record.txt","a+")
              if _file ~= nil then
                _file:write(curacc..record..'\n')
                _file:close()
              end
            end
          else
            dialog("record.txt路径不对或者权限不足导致无法读取。\n正确路径为/data/data/com.xxAssistant/cache/public\n正确文件权限为rw-rw-rw",5)
          end
          record = ""
        end	
      end
      
      shishenlu = "0|3|0x8a6156,0|6|0x80514b,0|8|0x93655f,5|8|0xe1a897,5|6|0xc93b3b,5|3|0xc93535,5|1|0xdf726c,3|0|0xf4e8e5"
      dengji = "0|2|0x4b5bdf,0|4|0x4a5ad6,0|6|0x8090e9,0|8|0xffffff,0|10|0xf8f8fb,5|10|0xffffff,5|5|0x7f8bde,5|2|0x4b5ce8,5|-1|0x4a5be1"
      xiyoudu = "0|2|0x4656da,0|5|0x4a5adb,0|8|0x93a3f4,0|10|0xffffff,5|10|0xffffff,5|8|0xc3cef1,5|5|0x4a5be0,5|3|0x4b5ce8,5|1|0x4a5be1"
      
      function savepic()
        local i = string.find(record,"ssr")
        
        if (i~=nil) or SAVE_PIC then
          jdwlLog("savepic overtime")
          local tt = os.time()
          local _save = 0
          while true do
            if os.difftime(os.time(),tt) > 90 then
              kill()
              tt = os.time()
              jdwlLog("savepic overtime")
            elseif _save == 1 and MulColor(0x4252ce,xiyoudu,90,324,99,352,133) then
              click(55,27)
            elseif _save==1 and (MulColor(0xc0b4ae,shishenlu,90,948,532,966,559) or MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569)) then
              jdwlLog("savepic finish")
              break
            elseif MulColor(0x560f0f,icon_guanbi,90,1062,553,1075,569) then
              click(x,y)	
            elseif MulColor(0xc0b4ae,shishenlu,90,948,532,966,559) then
              click(x,y)	mSleep(2000)	
            elseif MulColor(0x4757db,dengji,90,59,100,87,133) then
              click(340,115)
            elseif _save==0 and MulColor(0x4252ce,xiyoudu,90,324,99,352,133) then
              
              snapshot('[public]'..getrecordacc()..".jpg",60,161,495,328, 0.7);
              _save = 1
            elseif MulColor(0x978f81,color_dianjijixu,90,483,461,498,468) then
              click(x,y)
            end
            reconnect()
          end
          SAVE_PIC=false
        end
      end
      
      function getindex()
        local _file = nil
        local ret = 0
		_file = io.open('[public]index.txt','r')
        if _file ~= nil then
          ret = tonumber(_file:read())
          if ret == nil then
			_file:close()
            return 1
          elseif ret ~= nil then
            _file:close()
            --toast(string.format("当前第%s个账号",ret))
            return ret
          end
        else
          dialog("index.txt路径不对或者权限不足导致无法读取。\n正确路径为/data/data/com.xxAssistant/cache/public\n正确文件权限为rw-rw-rw",5)
			lua_exit()
        end
      end
      
      function getaccount()
        local ret = nil
        ret = getindex()
        local curacc = {}
        local acc = nil
        curacc = readFile('[public]account.txt')
        if curacc == nil then
          dialog("account.txt路径不对或者权限不足导致无法读取。\n正确路径为/data/data/com.xxAssistant/cache/public\n正确文件权限为rw-rw-rw",5)
		lua_exit()
        else
			acc = curacc[ret]
        end
		return acc
      end
      
	
	function getrecordacc()
        local ret = nil
        ret = getindex()
        local curacc = {}
        local acc = nil
        curacc = readFile('[public]account.txt')
        if curacc == nil then
          dialog("account.txt路径不对或者权限不足导致无法读取。\n正确路径为/data/data/com.xxAssistant/cache/public\n正确文件权限为rw-rw-rw",5)
			lua_exit()
        else
			acc = curacc[ret]
			if acc== nil or acc=="" then
				acc = curacc[#curacc]
			end
        end
		return acc		
	end
      
      function modifyindex()
        local _file = nil
        local ret = nil
        local curacc = {}
        local curindex = nil
        curacc = readFile('[public]account.txt')
        curindex = getindex()
        --jdwlLog(curindex)
        _file = io.open("[public]index.txt","w")
        if _file ~= nil then
			_file:write(curindex+1)
			_file:close()
        end
      end
      
      function readFile(path)
        local file = io.open(path,"r");
        if file then
          local _list = {};
          for l in file:lines() do 
            table.insert(_list,l)
          end
          file:close();
          return _list
        end
      end
      