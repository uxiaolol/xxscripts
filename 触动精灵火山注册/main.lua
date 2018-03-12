require "TSLib"
local sz = require("sz")
local cjson = sz.json
local w,h = getScreenSize();
w,h = getScreenSize()
UINew("我的脚本","运行脚本","退出脚本","uiconfig.dat",0,120,w*0.9,h*0.9,"255,231,186","255,231,186") --方式一，宽高为屏幕的 90%
UILabel("易码账号")
UIEdit("yimaAccount","易码账号","",15,"left","255,0,0")
UILabel("易码密码")
UIEdit("yimaPwd","易码密码","",15,"left","255,0,0")
UIShow()


function myToast(param)
	if 1==1 then
	toast(param)	
	mSleep(1500)
	end
end

function runToast(param)
	toast(param)	
	mSleep(1500)
end



--[[if retTable[1] == 0 then
	runToast("取消运行")
	lua_exit(); 
else
	
end--]]

function notifyMessage(param)
	runToast(param)
end

function clickMove(x1,y1, x2,y2, n)
	local w = math.abs(x2-x1);
	local h = math.abs(y2-y1);
	touchDown(x1,y1); 
	mSleep(50);
	if x1 < x2 then
		w1 = n; 
	else
		w1 = -n;
	end
	if y1 < y2 then
		h1 = n; 
	else
		h1 = -n;
	end
	if w >= h then
		for i = 1 , w,n do 
			x1 = x1 + w1;
			if y1 == y2 then
			else
				y1 = y1 + math.ceil(h*h1/w);
			end
			touchMove(x1,y1);
			mSleep(10);
		end
	else
		for i = 1 ,h,n do 
			y1 = y1 + h1;
			if x1 ==x2 then
			else
				x1 = x1 + math.ceil(w*w1/h);
			end
			touchMove(x1,y1);
			mSleep(10);
		end
	end
	mSleep(50);
	touchUp(x2,y2);
end


--local list = Split("abc,123,345", ",")
function Split(szFullString, szSeparator)  
    local nFindStartIndex = 1  
    local nSplitIndex = 1
    local nSplitArray = {}
    while true do  
        local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
        if not nFindLastIndex then  
            nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))  
            break  
        end  
        nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)  
        nFindStartIndex = nFindLastIndex + string.len(szSeparator)  
        nSplitIndex = nSplitIndex + 1  
    end  
    return nSplitArray  
end

function randomstring(n)
    local chars = 'abcdefghijklmnopqrstuvwxyz'
    local strs = ''
    math.randomseed(tostring(os.time()):reverse():sub(1,n))
    for i = 1,n do
        local index = math.random(string.len(chars))
        strs = strs..string.sub(chars,index,index)
    end
    return strs
end

--httpget
function myHttpGet(req)
	if req == nil then
		return nil, 400
	end

	--TODO:httpGet 返回值
	local ts = require("ts")	
	local status_resp, header_resp, body_resp = ts.httpGet(req)
	return body_resp, status_resp;
end

function MobileCode(server,uid, pwd, pid)
	local Tmp = {}
	Tmp.token = nil;
	Tmp.Mobile = nil;
	--私人云取号返回p_id
	Tmp.p_id = nil;
	--玉米:获取登录令牌
	function yumiGetToken()						
		local data,code = myHttpGet(string.format('http://api.jyzszp.com/Api/index/loginIn?uid=%s&pwd=%s', uid, pwd))			
		--15033|15033-ixp|eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1
		if data~=nil then
			local key = "|"
			local index = string.find(data, key);
			if index==nil then
				notifyMessage("玉米:登录错误"..data)
				return nil	
			end
			local ret= Split(data,key)
			if #ret<3 then
				notifyMessage("玉米:登录错误"..data)
				return nil
			end
			return ret[3]
		end
		return nil
	end
	--玉米:获取手机号
	function yumiGetMobileNum()				
		if Tmp.token == nil then
			Tmp.token = yumiGetToken();
		end
		if Tmp.token == nil then
			notifyMessage("玉米登录失败。。");
			return Tmp.Mobile;
		end
		if string.len(Tmp.token) < 3 then
			notifyMessage("玉米登录,长度错误:"..string.len(Tmp.token));
		end
		notifyMessage("玉米:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;
		req = "http://api.jyzszp.com/Api/index/getMobilenum?"..					
		"&pid="..pid..
		"&uid="..uid..
		"&token="..Tmp.token
		data,code = myHttpGet(req);

		if data == nil then
			notifyMessage("玉米,获取手机应答错误")
			return nil
		end
		Tmp.Mobile = string.match(data, "%d+")
		if string.len(Tmp.Mobile)<8 then
			notifyMessage("玉米,获取手机号码错误:"..code)
			return nil
		end
		return Tmp.Mobile;
	end

	--玉米:获取短信验证码
	function yumiGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("玉米:获取短信，手机号为空")
			return nil;
		end
		local req =nil
		req = "http://api.jyzszp.com/Api/index/getVcodeAndReleaseMobile?"..					
		"&pid="..pid..
		"&uid="..uid..
		"&token="..Tmp.token..
		"&mobile="..Tmp.Mobile..
		"&author_uid=18770"

		local data,code =myHttpGet(req)

		return data;
	end

	--玉米:加黑号码
	function yumiAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			local req = nil
			local req = "http://api.jyzszp.com/Api/index/addIgnoreList?"..						
			"&pid="..pid..
			"&uid="..uid..
			"&token="..Tmp.token..
			"&mobile="..Tmp.Mobile				
			myHttpGet(req)			
		end
	end
	
	--私人云:获取登录令牌
	function sirenyunGetToken()
		local data,code = myHttpGet(string.format("http://sry.codesfrom.com:18000/yhapi.ashx?Action=userLogin&userName=%s&userPassword=%s",uid,pwd))
		if data ~= nil then
			local key = "|"
			local index = string.find(data,key)
			if index == nil then
				notifyMessage("私人云:登录错误"..data)
				return nil
			end
			local ret = Split(data,key)
			if #ret < 6 then
				notifyMessage("私人云:登录错误"..data)
				return nil
			end
			return ret[2]
		end
	end
	
	--私人云:获取手机号码
	function sirenyunGetMobileNum()
		if Tmp.token == nil then
			Tmp.token = sirenyunGetToken();
		end
		if Tmp.token == nil then
			notifyMessage("私人云登录失败。。");
			return Tmp.Mobile;
		end
		if string.len(Tmp.token) < 32 then
			notifyMessage("私人云登录,长度错误:"..string.len(Tmp.token));
		end
		notifyMessage("私人云:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;
		req = "http://sry.codesfrom.com:18000/yhapi.ashx?Action=getPhone&token="..Tmp.token.."&i_id="..pid

		data,code = myHttpGet(req);

		if data == nil then
			notifyMessage("私人云,获取手机应答错误")
			return nil
		end
		--logDebug(data)
		local key = "|"
		local index = string.find(data,key)
		if index == nil then
			notifyMessage("私人云:获取手机错误")
		end
		local ret = Split(data,key)
		if #ret < 7 then
			notifyMessage("私人云:获取手机错误"..data)
			return nil
		end
		
		Tmp.Mobile = ret[5]
		Tmp.p_id = ret[2]
		return Tmp.Mobile,Tmp.p_id;
	end
	
	--私人云:获取短信验证码
	function sirenyunGetVcodeAndReleaseMobile()
		if Tmp.Mobile == nil then
			notifyMessage("私人云:获取短信，手机号为空")
			return nil;
		end
		local req =nil
		--logDebug(Tmp.token..Tmp.p_id)
		req = "http://sry.codesfrom.com:18000/yhapi.ashx?Action=getPhoneMessage&token="..Tmp.token.."&p_id="..Tmp.p_id
		local data,code =myHttpGet(req)

		return data;		
	end
	
	--私人云:加黑号码
	function sirenyunAddIgnoreList()
			if Tmp.Mobile ~= nil then
			local req = nil
			local req = "http://sry.codesfrom.com:18000/yhapi.ashx?Action=phoneToBlack&token="..Tmp.token.."&p_id="..Tmp.p_id.."&i_id="..pid.."&mobile="..Tmp.Mobile.."&reason=".."无法接受验证码"
			myHttpGet(req)			
		end
	end
	
	--易码:获取登录令牌
	function yimaGetToken()
		local data,code = myHttpGet(string.format('http://api.fxhyd.cn/UserInterface.aspx?action=login&username=%s&password=%s', uid, pwd))			
		--success|token
		if data~=nil then
			local key = "|"
			local index = string.find(data, key);
			if index==nil then
				notifyMessage("易码:登录错误"..data)
				return nil	
			end
			local ret= Split(data,key)
			if #ret<2 then
				notifyMessage("易码:登录错误"..data)
				return nil
			end
			
			return ret[2]
		end
		return nil
	end
	
	--易码:获取手机号码
	function yimaGetMobileNum()
		if Tmp.token == nil then
			Tmp.token = yimaGetToken()
		end
		if Tmp.token == nil then
			notifyMessage("易码登录失败...")
			return Tmp.Mobile;
		end
		notifyMessage("易码:发送请求...")
		local data = nil;
		local code = nil;
		local req = nil;
		req = "http://api.fxhyd.cn/UserInterface.aspx?action=getmobile"..			
		"&token="..Tmp.token..				
		"&itemid="..pid
		data,code = myHttpGet(req);

		if data == nil then
			notifyMessage("易码,获取手机应答错误")
			return nil
		end
		Tmp.Mobile = string.match(data, "%d+")
		if string.len(Tmp.Mobile)<8 then
			notifyMessage("易码,获取手机号码错误:"..code)
			return nil
		end
		return Tmp.Mobile;
	end
	
	--易码:获取短信验证码
	function yimaGetVcodeAndReleaseMobile()
		if Tmp.Mobile == nil then
			notifyMessage("易码:获取短信,手机号为空...")
			return nil;
		end
		local req = "http://api.fxhyd.cn/UserInterface.aspx?action=getsms&token="..Tmp.token..
		"&itemid="..pid..
		"&mobile="..Tmp.Mobile
		local data,code =myHttpGet(req)
		return data;				
	end
	
	--易码:加黑号码
	function yimaAddIgnoreList()
		
	end
	
	--获取手机号
	function Tmp.getMobileNum()				
		--notifyMessage(string.format("卡商:[%s]", sever));
		if Tmp.Mobile~= nil then
			if server =="yumi" then
				notifyMessage("玉米，加黑号码")
				yumiAddIgnoreList("get_next");
			elseif server == "sirenyun" then
				notifyMessage("私人云，加黑号码")
				--yumiAddIgnoreList("get_next");
			elseif server == "yima"	then
				notifyMessage("易码,加黑号码")
				--yimaAddIgnoreList()
			end
		end
		if server == "yumi" then
			notifyMessage("玉米:获取手机号码...")
			return yumiGetMobileNum();
		elseif server == "sirenyun" then
			notifyMessage("私人云:获取手机号码...")
			return sirenyunGetMobileNum();
		elseif server == "yima"	then
			return yimaGetMobileNum();
		end
		
		
	end
	
		--获取短信并释放号码
	function Tmp.getVcodeAndReleaseMobile()		
		if server == "yumi" then
			notifyMessage("玉米:接收验证码")
			return yumiGetVcodeAndReleaseMobile();
		elseif server == "sirenyun" then
			return sirenyunGetVcodeAndReleaseMobile();
		elseif server == "yima"	 then
			return yimaGetVcodeAndReleaseMobile();
		end
	end
	
	--[[function Tmp.getToken()
		return yimaGetToken();	
	end--]]
	--加黑手机号
	function Tmp.addIgnoreList(remark)
		if server == "yumi" then
			yumiAddIgnoreList();
		elseif server == "sirenyun" then
			sirenyunAddIgnoreList();
		elseif server == "yima"	 then
			yimaAddIgnoreList();
		end
		Tmp.Mobile = nil;
	end
	
		--复位登陆
	function Tmp.reLogin(remark)
		Tmp.Mobile = nil;			
		Tmp.token = nil;
	end
	
	return Tmp;
end


--验证码分割
function parasevCode(data)	
	if data ~= nil then
		--logDebug(data)
		local key = "验证码";	
		local _start = string.find(data, key);
		if _start ~= nil then
			--print(_start)
			_start = _start + string.len(key)
			local code = string.sub(data, _start, string.len(data));							
			return string.match(code,'%d+');
		end
	end
	return nil;	
end

function parasevCodeHuoshan(data)	
	if data ~= nil then
		--logDebug(data)
		local key = "验证码";	
		local _start = string.find(data, key);
		if _start ~= nil then
			--print(_start)
			_start = _start + string.len(key)
			local code = string.sub(data, 1, _start);							
			return string.match(code,'%d+');
		end
	end
	return nil;	
end

function click(x, y)--单击
    touchDown(x + math.random(-2, 2), y + math.random(-2, 2))
    mSleep(math.random(15,50))
    touchUp(x + math.random(-2, 2), y + math.random(-2, 2))
    mSleep(math.random(500,800))
end

function MulcolorNoOffset_xx_model(t)
    keepScreen(true)
    x,y = findMultiColorInRegionFuzzy(t[1],t[2],t[3],t[4],t[5],t[6],t[7])
    if x~= -1 and y ~=-1 then	
        --logDebug(string.format("0x".."%06x",t[1]))
        --tt = os.time()
        keepScreen(false)
        return true
    else
        keepScreen(false)
        return false
    end	
end



---结束在运行app
function appKillAndRun(bid,_time)
	if not _time then _time=2000 end
	closeApp(bid)
	mSleep(_time)
	runApp(bid)
end
--启动app
function appRun(bid,_time)
	if not _time then _time = 2000 end
	runApp(bid)
	mSleep(_time)
end

--关闭app
function appKill(bid,_time)
	if not _time then _time = 2000 end
	closeApp(bid)
	mSleep(_time)
end

--检测前台app
function myIsFrontApp(bid)
	if isFrontApp(bid) == 0 then
		appRun(bid)
		mSleep(5000)
	end
end

--切换飞行模式
function changeAirplaneMode()
    setAirplaneMode(true);  --打开飞行模式
	mSleep(2000)
    setAirplaneMode(false); --关闭飞行模式
	mSleep(2000)
end

--关闭打开vpn
function changeVpnEnable()
	runToast("关闭打开VPN...")
	setVPNEnable(false)
	for i=1,5 do
		toast(string.format("断开vpn,等待剩余时间%s秒",5-i))
		mSleep(1500)
	end
	setVPNEnable(true)
	for j=1,5 do
		toast(string.format("连接vpn,等待剩余时间%s秒",5-j))
		mSleep(1500)
	end
end

--NZT一键新机
function newPhoneByNZT()
	runToast("NZT一键新机...")
	local nztInterface = {0xffffff,"0|3|0xffffff,0|7|0xffffff,2|7|0x007aff,2|2|0x007aff,4|2|0x007aff,4|6|0x007aff,7|6|0xffffff,7|3|0xffffff", 90, 303, 1036, 325, 1062}
	--local exitNztButton = {}
	appKillAndRun("NZT")
	while 1 do
		if MulcolorNoOffset_xx_model(nztInterface) then
			--使用命令进行一件新机
			openURL("nzt://cmd/newrecord");mSleep(2000)
			while 1 do
				if MulcolorNoOffset_xx_model(nztInterface) and MulcolorNoOffset_xx_model({0xffffff,"0|4|0x333333,0|6|0x333333,0|10|0xffffff,6|10|0xffffff,10|10|0xffffff,10|6|0x333333,10|3|0x333333,10|0|0xffffff", 90, 250, 596, 281, 615}) then
					runToast("nzt清理中")
				elseif MulcolorNoOffset_xx_model(nztInterface) and MulcolorNoOffset_xx_model({0xffffff,"0|4|0x333333,0|6|0x333333,0|10|0xffffff,6|10|0xffffff,10|10|0xffffff,10|6|0x333333,10|3|0x333333,10|0|0xffffff", 90, 250, 596, 281, 615}) ==false then
					break
				end
			end
			for i=1,8 do
				toast(string.format("等待NZT一键新机结束还剩%s秒",8-i))
				mSleep(1000)
			end
			--appKill("NZT")
			pressHomeKey(0);    --按下 Home 键
			pressHomeKey(1);    --抬起 Home 键
			mSleep(2000)
			break
		else
			appRun("NZT")
		end
	end
end

--打开火山小视频右上角注册/登录图标
huoshanRegIcon = {0x404040,"0|5|0x404040,0|7|0x404040,2|7|0xffffff,2|2|0xffffff,6|2|0x404040,6|5|0x404040,2|12|0xffffff,2|16|0xffffff,2|18|0xffffff", 90, 527, 71, 543, 101}
--手机登录
loadByMobileButton = {0xffffff,"6|0|0xffffff,11|0|0xffffff,11|3|0xff983d,8|3|0xff983e,4|3|0xff993e,3|3|0xff993e,3|6|0xffffff,7|6|0xffffff", 90, 381, 794, 407, 809}
--点击手机登录之后注册登录后体验更多精彩瞬间
moreInstant = {0x404040,"0|9|0x404040,5|9|0xf8f8f8,7|9|0xf8f8f8,7|3|0xf8f8f8,5|3|0xf8f8f8,5|0|0x4d4d4d,7|0|0x4d4d4d", 90, 505, 308, 523, 331}
--点击手机登录之后请输入你的手机号
inputMobileNum = {0xb0b0b0,"0|5|0xb0b0b0,0|8|0xb0b0b0,5|8|0xb0b0b0,5|6|0xffffff,9|6|0xffffff,9|2|0xffffff,6|2|0xffffff,4|2|0xffffff", 90, 198, 458, 218, 478}
--输入手机号之后下一步
nextStepByNum = {0xffffff,"0|6|0xffffff,4|6|0xff3c19,9|6|0xff3b19,9|2|0xffffff,5|2|0xffffff,4|-1|0xff3b19,8|-1|0xff3b1a", 90, 346, 580, 367, 600}

--手机号码注册title
regByNumTitle = {0x404040,"8|0|0x404040,8|10|0x404040,1|10|0x404040,1|7|0xffffff,1|3|0xffffff,14|3|0xffffff,14|7|0xffffff,14|10|0x404040,15|0|0x404040", 90, 345, 68, 375, 89}
--手机号码注册title的下一步按钮
nextStepByNumButton = {0xffffff,"0|8|0xffffff,4|8|0xff3c18,8|8|0xff3c19,8|4|0xffffff,4|4|0xffffff,4|0|0xff3b19,7|0|0xff3b1a", 90, 349, 593, 369, 614}

--手机号码登录title
loadByNumTile = {0x404040,"8|0|0x404040,7|3|0x404040,5|6|0x404040,2|9|0x404040,2|4|0xffffff,2|3|0xffffff,0|3|0xffffff,0|4|0xffffff", 90, 339, 65, 355, 80}
--手机号码登录title的登录按钮
loadButton = {0xffffff,"9|0|0xffffff,9|3|0xff3f18,1|3|0xff3f16,1|5|0xffffff,10|5|0xffffff,10|7|0xff3f17,1|7|0xff4016", 90, 320, 474, 345, 492}
--忘记密码
forgotPwdIcon = {0xff2200,"4|0|0xff2200,4|4|0xf2f2f2,1|4|0xf2f2f2,1|7|0xff2200,5|7|0xff2200,5|11|0xf2f2f2,5|15|0xf2f2f2,5|18|0xff2200,3|18|0xff2200", 90, 530, 576, 547, 602}
--找回密码title
retrievePwdTitle = {0x404040,"0|5|0x404040,0|9|0x404040,6|6|0xffffff,6|3|0xffffff,6|1|0xcecece,11|1|0x404040,11|5|0x404040,11|8|0x404040", 90, 288, 71, 311, 95}
--找回密码下一步
retrievePwdNextStepButton = {0xffffff,"0|4|0xffffff,0|7|0xffffff,4|7|0xff3c19,8|7|0xff3b18,9|7|0xff3b19,9|4|0xffe6e2,6|4|0xffe6e2,4|0|0xff3b19,7|0|0xff3b19", 90, 347, 285, 367, 303}
--已向手机发送验证码
retrievePwdNextStepButtonAndReset = {0xffffff,"0|4|0xffffff,0|8|0xffffff,3|8|0xff3c18,6|8|0xff3b18,9|8|0xff3b19,9|1|0xff3b1a,6|1|0xff3b1a", 90, 349, 482, 370, 502}
--设置个人资料title
setUserInfoTitle = {0x404040,"5|0|0x404040,5|-2|0xffffff,0|-2|0xffffff,0|2|0xffffff,4|2|0xffffff,4|4|0x404040,1|4|0x404040,1|6|0xffffff,4|6|0xffffff", 90, 251, 78, 274, 100}
--设置个人资料跳过
setUserInfoIgnore = {0xff2200,"8|0|0xff2200,8|8|0xff2200,5|8|0xffffff,5|4|0xffffff,2|4|0xffffff", 90, 592, 72, 611, 93}


--注册完成之后右上角变成信息图标
messageIcon = {0x404040,"0|2|0x404040,5|0|0xffffff,6|0|0xffffff,10|0|0x404040,11|0|0x404040,15|0|0xffffff,16|0|0xffffff,19|0|0x404040,21|0|0x404040", 90, 575, 76, 606, 86}
--注册成功之后右下角我的图标
userInfoIcon = {0x404040,"0|3|0x404040,0|7|0x404040,2|7|0xffffff,2|8|0xffffff,2|2|0xffffff,5|2|0x404040,5|7|0x404040", 90, 573, 1111, 585, 1130}
--登陆成功之后屏幕底部的加号
addIcon = {0xffffff,"0|4|0xffffff,0|6|0xffffff,3|6|0xff2d21,6|6|0xff2923,6|3|0xff2625,6|0|0xff2625,4|0|0xff2923", 90, 314, 1068, 337, 1093}

function huoshanRegister()
	runToast("火山小视频:开始注册...")
	local Tmp = {}
	Tmp = MobileCode("yima",yimaAccount,yimaPwd,"5022")
	local _count = 1
	local _code = false
	while 1 do
		if isFrontApp("com.ss.iphone.ugc.Live") == 1 and MulcolorNoOffset_xx_model(huoshanRegIcon) then
			click(x,y)
			myToast("点击注册")
		elseif MulcolorNoOffset_xx_model(loadByMobileButton) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(moreInstant) and MulcolorNoOffset_xx_model(inputMobileNum) then
			Tmp.Mobile = Tmp.getMobileNum()
			if Tmp.Mobile then
				inputText(Tmp.Mobile)
			else
				for i=1,5 do
					toast(string.format("等待%s再次获取手机号码",5-i))
					mSleep(1000)
				end
			end
		elseif MulcolorNoOffset_xx_model(nextStepByNum) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(loadByNumTile) and MulcolorNoOffset_xx_model(loadButton) and MulcolorNoOffset_xx_model(forgotPwdIcon) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(retrievePwdTitle) and MulcolorNoOffset_xx_model(retrievePwdNextStepButton) then
			click(x,y)	
		--注册填写验证码界面	
		elseif _code == false and MulcolorNoOffset_xx_model(regByNumTitle) and MulcolorNoOffset_xx_model(nextStepByNumButton) then
			Tmp.Code = Tmp.getVcodeAndReleaseMobile()
			notifyMessage(string.format("第%s次接码,验证码为:%s",_count,Tmp.Code))mSleep(1000)
			local key = "|"
			local index = string.find(Tmp.Code,key)
			if index then
				local ret = parasevCodeHuoshan(Tmp.Code)
				inputText(ret)
				_code = true
			else
				mSleep(4000)
				_count = _count + 1
			end
		--找回密码填写验证码界面
		elseif _code==false and (MulcolorNoOffset_xx_model(retrievePwdTitle) and MulcolorNoOffset_xx_model(retrievePwdNextStepButtonAndReset)) then	
			Tmp.Code = Tmp.getVcodeAndReleaseMobile()
			notifyMessage(string.format("第%s次接码,验证码为:%s",_count,Tmp.Code))mSleep(1000)
			local key = "|"
			local index = string.find(Tmp.Code,key)
			if index then
				local ret = parasevCodeHuoshan(Tmp.Code)
				inputText(ret)
				_code = true
			else
				mSleep(4000)
				_count = _count + 1
			end
		elseif _code and MulcolorNoOffset_xx_model(regByNumTitle) and MulcolorNoOffset_xx_model(nextStepByNumButton) then
			click(351,401)mSleep(1000) inputText(randomstring(9))
			if MulcolorNoOffset_xx_model(regByNumTitle) and MulcolorNoOffset_xx_model(nextStepByNumButton) then click(x,y) end
		elseif _code and MulcolorNoOffset_xx_model(retrievePwdTitle) and MulcolorNoOffset_xx_model(retrievePwdNextStepButtonAndReset) then
			click(328,378)mSleep(1000) inputText(randomstring(9))
			if MulcolorNoOffset_xx_model(retrievePwdTitle) and MulcolorNoOffset_xx_model(retrievePwdNextStepButtonAndReset) then click(x,y) end	
		elseif MulcolorNoOffset_xx_model(setUserInfoTitle) and MulcolorNoOffset_xx_model(setUserInfoIgnore) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(addIcon) and MulcolorNoOffset_xx_model(userInfoIcon) then
			runToast("注册完毕...")
			break
		end		
		myIsFrontApp("com.ss.iphone.ugc.Live")
	end
end
--小视屏返回图标
videoBackIcon = {0xffffff,"-2|3|0xffffff,-4|4|0xffffff,-7|7|0xffffff,-10|9|0xffffff,-12|11|0xffffff,-12|13|0xffffff", 80, 31, 59, 58, 89}
--小视频踩图标
stepOnIcon = {0xffffff,"0|3|0xffffff,0|6|0xffffff,0|10|0xffffff,0|12|0xffffff,8|12|0xffffff,8|7|0xffffff,8|4|0xffffff,8|0|0xffffff", 80, 148, 63, 165, 95}
--随机点赞
function randWatch()
	runToast("随机观看")
	local _watch = false
	local watchLoaction = {{166,350},{481,358},{150,804},{500,773}}
	local _count = 1
	math.randomseed(tostring(os.time()):reverse():sub(1,n))
	while 1 do
		if _count > 10 and	MulcolorNoOffset_xx_model(addIcon) and MulcolorNoOffset_xx_model(userInfoIcon) then
			runToast("观看视频完成...")
			break
		elseif _watch == false and MulcolorNoOffset_xx_model(addIcon) and MulcolorNoOffset_xx_model(userInfoIcon) then
			local ret = math.random(1,2)
			if ret == 1 then
				for i =1 ,math.random(1,5) do
					clickMove(317,210,317,933,50)
				end
			elseif ret == 2 then
				for i =1 ,math.random(1,5) do
					clickMove(317,933,317,210,50)
				end
			end
			_watch = true
			mSleep(5000)
			--runToast("滑动视频...")
		elseif _watch and MulcolorNoOffset_xx_model(addIcon) and MulcolorNoOffset_xx_model(userInfoIcon) then
			local location = math.random(1,4)
			click(watchLoaction[location][1],watchLoaction[location][2])
			--runToast("选择视频....")
		elseif _watch and MulcolorNoOffset_xx_model(videoBackIcon) and MulcolorNoOffset_xx_model(stepOnIcon) then
			--124,170,512,689
			for i =1,10 do
				toast(string.format("第%s次观看中剩余%s秒",_count,10-i))
				mSleep(1000)
			end
			local a = math.random(124,512)
			local b = math.random(170,689)
			touchDown(a,b)
			mSleep(100)
			touchUp(a,b)
			--mSleep(300)
			touchDown(a,b)
			mSleep(100)
			touchUp(a,b)
			mSleep(1000)
			if MulcolorNoOffset_xx_model(stepOnIcon) and MulcolorNoOffset_xx_model(videoBackIcon) then
				click(x,y)
				_watch = false
				_count = _count + 1
			end 
			--runToast("点赞返回...")
		end
	end
end


function allSteps()

end

init("0",0)
runToast("火山养号脚本开始运行...v3.12.02")
while 1 do
	::START::
	changeAirplaneMode()
	mSleep(2000)
	huoshanRegister()
	randWatch()
	newPhoneByNZT()
	runToast("单轮任务结束...")
end





