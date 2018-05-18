require "TSLib"
local ocr = require "cloudOcr"
local sz = require("sz")
local cjson = sz.json
local w,h = getScreenSize();
w,h = getScreenSize()
UINew("抖音引流脚本","运行脚本","退出脚本","uiconfig.dat",0,120,w*0.9,h*0.9,"255,231,186","255,231,186") --方式一，宽高为屏幕的 90%
--[[UILabel("易码账号")
UIEdit("yimaAccount","易码账号","",15,"left","255,0,0")
UILabel("易码密码")
UIEdit("yimaPwd","易码密码","",15,"left","255,0,0")--]]
--[[UILabel("IP切换方式")
UICombo("ipchange","vpn,airplane")
UILabel("是否设置个人资料")
UICombo("userinfo","yes,no")
UILabel("个性签名")
UIEdit("sign","个性签名","",15,"left","255,0,0")
UILabel("评论内容")
UIEdit("com","评论内容","",15,"left","255,0,0")
UILabel("评论间隔(秒)")
UIEdit("interval","","",15,"left","255,0,0")
UILabel("单号在线时长(分钟)")
UIEdit("online","","",15,"left","255,0,0")--]]
UIShow()

if interval == "" or online =="" then
	dialog("请设置评论间隔以及单号在线时长")	
	lua_exit(); 
end

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
--NZT全息备份下一条
function nextRecordNZT()
	runToast("NZT下一条记录...")
	local nztInterface = {0xffffff,"0|3|0xffffff,0|7|0xffffff,2|7|0x007aff,2|2|0x007aff,4|2|0x007aff,4|6|0x007aff,7|6|0xffffff,7|3|0xffffff", 90, 303, 1036, 325, 1062}
	local nextReord = {0x000000,"0|1|0x000000,-4|1|0xf9f9f9,-7|1|0xf9f9f9,-7|5|0xf9f9f9,-4|5|0xf9f9f9,0|5|0x000000,3|5|0xf9f9f9,7|5|0xf9f9f9", 90, 588, 79, 623, 93}
	appKillAndRun("NZT")	
	while 1 do
		if MulcolorNoOffset_xx_model(nztInterface) then
			--使用命令进行一件新机
			openURL("nzt://cmd/nextrecord");mSleep(2000)
			while 1 do
				if MulcolorNoOffset_xx_model(nextReord) and MulcolorNoOffset_xx_model({0xffffff,"0|2|0xffffff,6|2|0x333333,6|-1|0x333333,10|0|0xffffff,10|2|0xffffff,16|2|0x333333,16|0|0x333333,20|0|0xffffff,20|1|0xffffff", 90, 421, 611, 454, 624}) then
					runToast("nzt清理中")
				elseif MulcolorNoOffset_xx_model(nextReord) and MulcolorNoOffset_xx_model({0xffffff,"0|2|0xffffff,6|2|0x333333,6|-1|0x333333,10|0|0xffffff,10|2|0xffffff,16|2|0x333333,16|0|0x333333,20|0|0xffffff,20|1|0xffffff", 90, 421, 611, 454, 624}) ==false then
					break
				end
			end
			for i=1,8 do
				toast(string.format("等待NZT下一条记录结束还剩%s秒",8-i))
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

--将指定文件中的内容按行读取
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

--好爱打码
function haoai()
	local op = {
	--必填参数
	["platform"]="haoi23", --平台类型，具体参数参照参数表
	["x1"]=28, --需要识别区域左上角坐标
	["y1"]=235,
	["x2"]=610, --需要识别区域右下角坐标
	["y2"]=572,
	["type"]="8006", --打码类型，可在对应平台官网查询
	["username"]="gaopanhao", --打码平台账号
	["password"]="gaopanhao|AA8C0B5892990D1F", --打码平台密码
	--选填参数
	["length"]=4, --打码长度
	["timeout"]=30, --超时时间
	["scale"]=100, --缩放比例，范围10 - 200，在某些待识别区域过大的时候可设置此参数
	};
	local ret = ocr.cloudOcrText(op);
	if ret.success then
		myToast(ret.text)
		return ret.text
	else
		return false
	end	
end

--获取文本账号
function getQQ()
	-- string.match(account[1],"%s*(.-)%s*$")
	local _index = readFile("/User/Media/TouchSprite/lua/index.txt")
	local ret =string.match(_index[1],"%s*(.-)%s*$")
	ret = string.match(ret,"%d+")
	
	local aa = tonumber(ret)
	
	local _qq = readFile("/User/Media/TouchSprite/lua/qq.txt")
	
	local relt = nil
	if _qq[aa] == nil then
		while 1 do
			runToast("全部QQ登录完成")
		end
	end
	relt = string.match(_qq[aa],"%s*(.-)%s*$")
	
	myToast(relt)
	return relt
	--return _ret
end

function getIndex()
    -- body
    local _file
    local ret
    _file = io.open("/User/Media/TouchSprite/lua/index.txt","r")
    if _file ~= nil then
        ret = tonumber(_file:read())
        _file:close()
        return ret
    end
end

--修改index的值
function modifyIndex()
	local _index = readFile("/User/Media/TouchSprite/lua/index.txt")
	local ret =string.match(_index[1],"%s*(.-)%s*$")
	ret = string.match(ret,"%d+")
	local file = nil
	file = io.open("/User/Media/TouchSprite/lua/index.txt","w")
	if file then
		file:write(ret+1)
		file:close()
	end
end

--新用户按钮
qqNewUser = {0xffffff,"4|0|0xffffff,8|0|0xffffff,8|3|0x1ca0d5,5|3|0x1ca0d4,2|3|0x1ca0d4,2|5|0x1c9fd4,4|5|0x1da0d5", 85, 489, 968, 530, 991}
--qq登录按钮蓝色
qqLoadBtn = {0x2db1e4,"6|0|0x2eb2e6,9|0|0x2eb2e7,9|3|0xffffff,5|3|0xffffff,3|3|0xffffff,3|5|0x41b8e6,7|5|0x3db4e2", 85, 319, 552, 348, 571}
--点击账号栏之后按钮上浮
qqLoadBtnOne = {0xffffff,"5|0|0xffffff,5|4|0x34b2e2,1|4|0x2faede,1|6|0xffffff,5|6|0xffffff,5|9|0x25a9db,2|9|0x24a7da", 85, 319, 461, 347, 479}
--验证码
puzzleCode = {0x000000,"0|4|0x000000,0|7|0x000000,4|7|0xffffff,7|7|0xffffff,10|7|0xffffff,10|4|0xffffff", 85, 145, 165, 170, 183}
--滑块
sliderBtn = {0xefefef,"0|4|0xefefef,0|6|0xefefef,6|6|0x007aff,6|3|0x007aff,6|0|0x007aff,6|-2|0x007aff", 85, 111, 597, 135, 627}
--登录失败
loadFailed = {0x222222,"0|3|0x1c1c1c,0|8|0x222222,3|8|0xffffff,4|1|0xffffff,2|1|0xffffff,6|1|0x000000,6|7|0x000000", 85, 295, 664, 311, 686}
--开启消息推送
setNowBtn = {0x1eb9f2,"7|0|0x1eb9f2,15|0|0x1eb9f2,19|0|0xffffff,-3|0|0xffffff,-3|-1|0xffffff", 85, 351, 676, 386, 691}
--qq消息
qqMessage = {0x36b0fe,"4|0|0x36b0fe,7|0|0x36b1fe,7|3|0xffffff,1|3|0xffffff,1|6|0x36b1fe,5|6|0x36b0fe", 85, 293, 72, 316, 95}
--关闭qq绑定
closeBinding = {0x000000,"0|4|0xffffff,0|6|0xffffff,0|9|0x000000,-5|9|0x000000,-5|4|0xffffff,-5|0|0x000000", 85, 13, 71, 36, 89}
--确定关闭绑定
closeBindingSure = {0x000000,"5|0|0x000000,5|4|0xffffff,5|6|0xffffff,1|6|0xffffff,-2|6|0xffffff,-2|8|0x4a4a4a,1|8|0x4a4a4a", 85, 428, 707, 452, 724}
--登录QQ
function loginQQ()
	runToast("qq登录")
	--appKillAndRun("com.tencent.mqq")
	local _acc,_pwd = false ,false
	local acc,pwd = nil,nil
	while 1 do
		if MulcolorNoOffset_xx_model(qqNewUser) then
			click(168,979)
			--myToast("点击登录")
		elseif MulcolorNoOffset_xx_model(qqLoadBtn) then
			click(355,341)
			--myToast("点击账号栏")
		elseif _acc==false and _pwd==false and MulcolorNoOffset_xx_model(qqLoadBtnOne) then	
			inputText("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b")mSleep(1000)
			local ret = getQQ()
			local _ret = Split(ret,"#")	
			inputText(_ret[1])mSleep(1000)
			_acc = true
			--myToast("输入账号")
		elseif _acc and _pwd==false and MulcolorNoOffset_xx_model(qqLoadBtnOne) then
			click(426,345)mSleep(1000)
			inputText("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b")mSleep(1000)
			local ret = getQQ()
			local _ret = Split(ret,"#")	
			inputText(_ret[2])mSleep(1000)
			_pwd = true
			--myToast("输入密码")			
		elseif _acc and _pwd and MulcolorNoOffset_xx_model(qqLoadBtnOne) then
			click(x,y)mSleep(1000)
			--myToast("点击登录")
		elseif MulcolorNoOffset_xx_model(puzzleCode) and MulcolorNoOffset_xx_model(sliderBtn) then
			mSleep(3000)
			local ret = haoai()
			if ret ~= false then
				local x1 = Split(ret,",")
				clickMove(135,614,x1[1]+30,614,1)mSleep(5000)
			end
		elseif MulcolorNoOffset_xx_model(loadFailed) then
			click(x,y)
			_acc,_pwd = false ,false
			mSleep(5000)
		elseif MulcolorNoOffset_xx_model(setNowBtn) then
			click(321,860)
		elseif MulcolorNoOffset_xx_model(closeBindingSure) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(closeBinding) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(qqMessage) then
			runToast("qq登录完成")
			break
		end
		appRun("com.tencent.mqq")
	end
end

--滑动查看更多
sliderToMore = {0xffffff,"0|3|0x1b1c26,0|7|0xffffff,0|12|0x1d1d28,-3|12|0x1e1e29,-3|6|0xffffff,-3|3|0x1c1c27", 85, 373, 882, 391, 907}
--继续播放
continueToPlay = {0x292b37,"0|4|0x292b37,0|8|0x292b37,-1|8|0x5a5c69,-1|4|0x5a5c69,-2|4|0xd9dbeb,-2|1|0xd8daea,-2|7|0xcfd1e0", 85, 396, 723, 408, 741}
--抖音底部中间的加号
moreInfo ={0x17eee8,"0|4|0x17eee8,0|7|0x17eee8,0|10|0x17eee8,3|10|0xffffff,3|7|0xffffff,3|3|0xffffff,3|2|0xffffff", 85, 271, 1064, 290, 1115}
--通过qq登录
loadByQQ = {0xffffff,"3|0|0xffffff,5|0|0xffffff,5|5|0xa049f4,2|5|0xa049f5,1|5|0xa048f3", 85, 244, 523, 265, 547}
--qq授权并登录
allowAndLoad = {0xffffff,"0|3|0xffffff,4|3|0x00aced,7|3|0x00aced,7|-1|0x00aced,5|-1|0x00aced,5|-3|0xfeffff,7|-3|0xfeffff", 85, 308, 1068, 326, 1087}
--抖音底部加号取消
cancelIcon = {0x5b5d66,"3|0|0xffffff,3|3|0x5b5d66,0|3|0x5b5d66,0|8|0x5b5d66,3|8|0xffffff,5|8|0xffffff", 85, 286, 1073, 305, 1096}
--抖音登录
function loadDouYin()
	runToast("抖音登录")
	myIsFrontApp("com.ss.iphone.ugc.Aweme")
	local user = false
	while 1 do
		if user and MulcolorNoOffset_xx_model(moreInfo) then
			runToast("抖音登录完成")
			return true
		elseif MulcolorNoOffset_xx_model(sliderToMore) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(continueToPlay) then
			click(x,y)
		elseif user==false and MulcolorNoOffset_xx_model(moreInfo) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(loadByQQ) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(allowAndLoad) then
			click(x,y)
		elseif MulcolorNoOffset_xx_model(cancelIcon) then
			click(x,y)
			user = true
		end
		--myIsFrontApp("com.ss.iphone.ugc.Aweme")
	end
end

function allSteps()
	
end

init("0",0)
runToast("抖音脚本开始运行...v05.18.01")
while 1 do
	loginQQ()
	loadDouYin()
	modifyIndex()
	newPhoneByNZT()
	changeAirplaneMode()
	runToast("单轮任务结束...")
end








