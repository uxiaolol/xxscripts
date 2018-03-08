
local sz = require("sz")
local cjson = sz.json
local w,h = getScreenSize();
MyTable = {
    ["style"] = "default",
    ["width"] = w/1.2,
    ["height"] = h/1.2,
    ["config"] = "save_001.dat",
    ["timer"] = 30,
    views = {
        {
            ["type"] = "Label",
            ["text"] = "设置",
            ["size"] = 15,
            ["align"] = "center",
            ["color"] = "0,0,255",
        },
		{
                ["type"] = "Label",
                ["text"] = "设置扔漂流瓶个数",
                ["size"] = 15,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
        {
            ["type"] = "Edit",        --输入框，input1
            ["prompt"] = "请输入一个数字",--编辑框中无任何内容时显示的底色文本
            ["text"] = "10",        --界面载入时已经存在于编辑框中的文本
			["kbtype"] = "number",
        },
		{
                ["type"] = "Label",
                ["text"] = "是否回复漂流瓶",
                ["size"] = 15,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
        {
            ["type"] = "ComboBox",                       --下拉框，input2
            ["list"] = "回复,不回复",--7个下拉选项，序号从0开始，即选项1编号为0，选项2编号为1，依此类推
            ["select"] = "0",                       --默认选择选项2
        },
    }
}
local MyJsonString = cjson.encode(MyTable);
retTable = {showUI(MyJsonString)};--返回值ret, input1, input2, input3, input4


function myToast(param)
	toast(param)	
	mSleep(2000)
end

answer = {"回复","不回复"}

if retTable[1] == 0 then
	myToast("取消运行")
	lua_exit(); 
else
	myToast(string.format("扔漂流瓶个数为:%s,是否回复漂流瓶:%s",retTable[2],answer[tonumber(retTable[3])+1]))
end

function notifyMessage(param)
	myToast(param)
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
			end
		end
		if server == "yumi" then
			notifyMessage("玉米:获取手机号码...")
			return yumiGetMobileNum();
		elseif server == "sirenyun" then
			notifyMessage("私人云:获取手机号码...")
			return sirenyunGetMobileNum();
		end
	end
	
		--获取短信并释放号码
	function Tmp.getVcodeAndReleaseMobile()		
		if server == "yumi" then
			notifyMessage("玉米:接收验证码")
			return yumiGetVcodeAndReleaseMobile();
		elseif server == "sirenyun" then
			return sirenyunGetVcodeAndReleaseMobile();
		end
	end
	
	--加黑手机号
	function Tmp.addIgnoreList(remark)
		if server == "yumi" then
			yumiAddIgnoreList();
		elseif server == "sirenyun" then
			sirenyunAddIgnoreList();
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

loadByMobileNum = {0x2c8d2c,"0|3|0x2c8d2c,0|6|0x2c8d2c,4|6|0x2c8d2c,4|3|0x3a2815,4|-1|0x2c8d2c", 90, 243, 996, 262, 1014}

--切换飞行模式
function changeAirplaneMode()
    setAirplaneMode(true);  --打开飞行模式
	mSleep(2000)
    setAirplaneMode(false); --关闭飞行模式
	mSleep(2000)
end

--关闭打开vpn
function changeVpnEnable()
	myToast("关闭打开VPN...")
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
	myToast("NZT一键新机...")
	local nztInterface = {0xffffff,"0|3|0xffffff,0|7|0xffffff,2|7|0x007aff,2|2|0x007aff,4|2|0x007aff,4|6|0x007aff,7|6|0xffffff,7|3|0xffffff", 90, 303, 1036, 325, 1062}
	--local exitNztButton = {}
	appKillAndRun("NZT")
	while 1 do
		if MulcolorNoOffset_xx_model(nztInterface) then
			--使用命令进行一件新机
			openURL("nzt://cmd/newrecord");
			for i=1,8 do
				toast(string.format("等待NZT一键新机结束还剩%s秒",8-i))
				mSleep(1500)
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

--未输入手机号码时候的下一步
nextStepNoNum = {0xffffff,"0|3|0xffffff,0|6|0xffffff,4|6|0xffffff,7|6|0xffffff,7|3|0x23c032,5|3|0x23c032,4|3|0x23c032", 90, 346, 647, 367, 665}
--输入手机号码之后下一步
nextStepByNum = {0xffffff,"3|0|0xffffff,6|0|0xffffff,6|3|0x23c032,2|3|0x23c032,2|5|0x23c032,5|5|0x23c032", 90, 348, 502, 367, 521}
--未输入验证码提交按钮
commitNoCode = {0xffffff,"0|3|0xffffff,3|3|0x71d67a,7|3|0x71d67a,7|1|0x23c032,4|1|0x23c032,4|-1|0xffffff,7|-1|0xffffff", 90, 295, 688, 314, 706}
--输入验证码之后提交按钮
commitByCode = {0xffffff,"0|3|0xffffff,3|3|0x23c032,7|3|0x23c032,7|4|0x71d67a,3|4|0x71d67a,3|1|0xe2f7e4,6|1|0xe2f7e4,5|2|0x23c032,7|2|0x23c032", 90, 297, 503, 316, 520}
--你的昵称
userName = {0x373737,"0|3|0x373737,0|8|0x202020,3|8|0x202020,3|5|0xffffff,3|1|0xffffff,4|1|0xcbcbcb,4|4|0xcbcbcb", 90, 104, 359, 117, 377}

--昵称界面取消按钮
userNameCancel = {0x23c031,"0|3|0x23c031,0|7|0x23c031,4|7|0xffffff,6|7|0xffffff,8|7|0x23c031,8|2|0x23c031,5|-1|0xffffff,3|-1|0xffffff", 90, 19, 65, 38, 87}
function lianxinRegister()
	myToast("开始注册...")
	local Tmp = {}
	local _mobile = false
	local _code = false
	Tmp = MobileCode("sirenyun","api_gaopanhao_fvrv","4325800","1005")
	local _count = 1
	while 1 do
		--接码超时
		if _count >= 10 then
			myToast("接码超时")	
			return changeAirplaneMode()
		--点击使用手机号登录
		elseif _mobile == false and MulcolorNoOffset_xx_model(loadByMobileNum) then
			click(x,y)
			myToast("点击使用手机号登录...")
		elseif _mobile and MulcolorNoOffset_xx_model(nextStepByNum) then
			click(x,y)
			myToast("手机号码输入完毕点击下一步...")
		elseif MulcolorNoOffset_xx_model(nextStepNoNum) then
			Tmp.Mobile = Tmp.getMobileNum()
			if Tmp.Mobile then
				if MulcolorNoOffset_xx_model(nextStepNoNum) then
					click(417,505)mSleep(1000)
					inputText(Tmp.Mobile)
					_mobile = true
				end
			else
				mSleep(5000)
			end
		elseif  _code and MulcolorNoOffset_xx_model(commitByCode) then
			click(x,y)
			myToast("验证码输入完毕点击提交...")
		elseif _code == false and MulcolorNoOffset_xx_model(commitNoCode) then
			Tmp.Code = Tmp.getVcodeAndReleaseMobile()
			--local str = parasevCode(Tmp.Code)
			notifyMessage(string.format("第%s次接码,验证码为:%s",_count,Tmp.Code))mSleep(2000)
			local key = "|"	
			local index = string.find(Tmp.Code,key)
			if index then
				local ret = Split(Tmp.Code,key)
				if #ret == 3 then
					click( 379,568 )
                    mSleep(2000)
					inputText(ret[2])
					_code = true
				end
			else
				--logDebug(Tmp.Code)
				mSleep(5000)
			end
			_count = _count + 1	
		elseif MulcolorNoOffset_xx_model(userName) and MulcolorNoOffset_xx_model(userNameCancel) then
			myToast("注册完毕...")
			break
		else
			myIsFrontApp("com.zenmen.palmchat")
		end
	end
end

firstname = { "太阳当空照〆","面向向阳花_","姐，已忘爱","超级小扯蛋ヽ﹏","╮我De骄傲","尔的高傲丶太俗","坏小孩","请摘星星给莪","_红颜为谁醉_","指着太阳说日∞","粉色//桃花雨","宝、一定要快乐","花丶血色绽放","蒽，亲你╪","y1切都是虚伪︵"," 如若回到从前","__冰山控°","幺小木ˇ","__巫浅浅"," 指尖上的妖媚","末小丸丶","我，神经质","茗亽宫ヽ","巜後·来》","り﹑无所谓了","Xin如止氺","你走ㄋ以後ゐ","﹏☆洋洋","忘记じ★ve你"}
--secondname = {}


--输入名字之后下一步
nextStepByName = {0xffffff,"5|0|0xe3f7e5,8|0|0xe3f7e5,8|3|0x23c031,5|3|0x23c031,3|3|0x23c031,3|5|0xc0edc4,6|5|0xc0edc4", 90, 347, 483, 366, 501}
--添加头像
addUserPic = {0xffffff,"-3|6|0xffffff,5|13|0xffffff,11|5|0xffffff,5|3|0x23c031,5|9|0x23c031,1|5|0x23c031,8|5|0x23c031", 90, 338, 496, 367, 520}
--从手机相册选一张
addFromPhoto = {0xffffff,"0|3|0xffffff,3|3|0x202020,1|6|0x202020,0|9|0x202020,4|9|0xffffff,5|7|0xffffff", 90, 186, 970, 208, 990}
--允许连信访问相片
photoPermissionsAllow = {0xf9f9f9,"0|4|0x007aff,4|4|0x007aff,6|7|0xf9f9f9,6|9|0xf9f9f9,8|0|0xf9f9f9", 90, 434, 644, 454, 666}
--允许连信访问相片之后跳转到照片界面
--相机胶卷
itemPhoto = {0x000000,"0|4|0x000000,0|6|0x000000,7|6|0x000000,7|3|0xffffff,7|1|0xffffff,4|1|0xffffff,4|3|0xffffff", 90, 197, 367, 217, 383}
--照片
photoShowTitle = {0xffffff,"0|3|0xf9fdfb,3|3|0x059b64,6|3|0x059b64,9|3|0x059b64,9|0|0xffffff,6|0|0xffffff", 90, 295, 76, 315, 89}

--点击相机胶卷之后
cameraPhotoTitle = {0xffffff,"0|3|0xffffff,3|3|0x059b64,7|3|0x059b64,9|3|0x059b64,9|-1|0xffffff,12|-1|0xffffff", 90, 256, 63, 279, 78}
--左上角照片返回
backPhoto = {0xffffff,"0|4|0xffffff,0|10|0xffffff,3|10|0x059b64,3|8|0x059b64,3|5|0xffffff,3|2|0x059b64,3|-1|0x059b64", 90, 43, 68, 56, 91}
--选区照片按钮
selectButton = {0xffffff,"0|8|0xffffff,4|8|0x141414,4|4|0xfafafa,4|1|0x141414,4|-1|0x141414,9|-1|0xffffff,9|2|0xffffff", 90, 576, 1044, 595, 1073}
--进入连信
enterLianxin = {0xfafefa,"0|3|0xf7fdf8,3|3|0x23c031,6|3|0x23c031,9|3|0x23c031,11|3|0x23c031,11|1|0x23c031,7|-1|0xffffff,10|-1|0xffffff,11|-1|0xffffff", 90, 361, 689, 382, 705}
--不允许访问地理位置
accessDeniedLocationButton = {0x000000,"5|0|0x000000,9|0|0x000000,6|5|0xe4ebd6,6|8|0xe4ebd6,6|12|0xe4ebd6,6|22|0x000000,1|22|0x000000,15|22|0x000000", 90, 323, 473, 355, 511}

--好友推荐一键添加
friednAddAll = {0xffffff,"0|7|0xffffff,3|7|0x23c031,3|0|0x23c031,5|0|0x23c031,5|7|0x23c031,8|7|0xffffff,8|1|0xffffff", 90, 367, 1045, 383, 1073}
--好友推荐跳过
friendIgnore = {0xffffff,"0|4|0xffffff,4|4|0x059b64,4|2|0x059b64,4|-1|0xffffff,5|1|0x059b64,5|4|0x059b64,5|8|0xffffff", 90, 552, 65, 568, 83}
--连信标题置顶
lianxinTitle = {0x0dc108,"11|0|0x0dc108,11|5|0xffffff,6|5|0x0dc108,0|5|0xffffff,1|6|0xffffff,6|6|0x0dc108,11|6|0xffffff", 90, 60, 1065, 85, 1080}
--完善连信
function userInfo()
	myToast("完善用户信息...")
	math.randomseed(tostring(os.time()):reverse():sub(1,n))
	local _name = false
	while 1 do
		if _name==false and MulcolorNoOffset_xx_model(userName) and MulcolorNoOffset_xx_model(userNameCancel) then
			--inputText(name[math.random(1,100)]..name[math.random(1,100)]..name[math.random(1,100)])
			inputText(firstname[math.random(1,29)]..randomstring(1))
			_name = true
		elseif _name and MulcolorNoOffset_xx_model(nextStepByName) then
			click(x,y)
			myToast("输入昵称下一步...")
		elseif MulcolorNoOffset_xx_model(userNameCancel)	and MulcolorNoOffset_xx_model(addUserPic) then
			click(x,y)
			myToast("添加头像...")
		elseif MulcolorNoOffset_xx_model(addFromPhoto) then
			click(x,y)
			myToast("从手机相册 选择")
		elseif MulcolorNoOffset_xx_model(photoPermissionsAllow) then
			click(x,y)
			myToast("允许连信访问照片...")
		elseif MulcolorNoOffset_xx_model(photoShowTitle) and MulcolorNoOffset_xx_model(itemPhoto) then
			click(x,y)
			myToast("选择相机胶卷...")
		elseif MulcolorNoOffset_xx_model(cameraPhotoTitle) and MulcolorNoOffset_xx_model(backPhoto) then
			click(81,205)
			myToast("选择第一张照片...")
		elseif MulcolorNoOffset_xx_model(selectButton) then
			click(x,y)
			myToast("选取照片...")
		elseif MulcolorNoOffset_xx_model(userNameCancel)	and MulcolorNoOffset_xx_model(enterLianxin) then
			click(x,y)
			myToast("进入连信...")
		elseif MulcolorNoOffset_xx_model(accessDeniedLocationButton) then
			click(198,681)
			myToast("不允许访问地理位置...")
		elseif MulcolorNoOffset_xx_model(friendIgnore) and MulcolorNoOffset_xx_model(friednAddAll) then
			click(x,y)
			myToast("一键添加")
		elseif MulcolorNoOffset_xx_model(lianxinTitle) then
			myToast("用户信息完毕...")
			break
		end
	end
end

--找朋友未选中
lookForfriendsIconGrey = {0x929292,"0|4|0x929292,0|7|0x929292,3|7|0xf7f7f7,3|2|0xf7f7f7,5|2|0x929292,5|6|0x929292,4|6|0xf3f3f3,4|8|0xf3f3f3", 90, 387, 1109, 400, 1128}
--找朋友界面
lookForfriendsTitle = {0xffffff,"0|9|0xffffff,0|16|0xffffff,4|12|0x059b64,4|7|0xffffff,4|4|0x059b64,4|2|0x059b64,6|4|0x059b64", 90, 301, 62, 318, 90}
--漂流瓶
driftBottle = {0x202020,"0|5|0x202020,5|5|0x202020,5|0|0x202020,9|2|0xf3f3f3,3|4|0xf6f6f6,3|2|0xffffff,-3|2|0xffffff,-3|4|0xf6f6f6", 90, 112, 389, 138, 403}
--漂流瓶个人信息title
userInfoDriftBottle = {0xffffff,"6|0|0xffffff,9|0|0xffffff,9|4|0x059b64,6|4|0x059b64,3|4|0x059b64,0|4|0xffffff", 90, 330, 83, 356, 102}
--性别
userInfoGender = {0x202020,"0|4|0x202020,4|4|0xffffff,9|4|0xffffff,11|2|0x202020,11|5|0x202020,9|2|0xffffff,6|2|0xffffff", 90, 61, 553, 80, 569}
--点击性别之后选取男女
genderCancel = {0x1dba2e,"0|8|0x1dba2e,5|8|0xffffff,7|8|0xffffff,9|8|0x1dba2e,9|3|0x1dba2e,6|3|0xffffff,6|0|0xffffff", 90, 41, 794, 59, 816}
genderFinish = {0x1dba2e,"7|0|0x1dba2e,11|0|0x1dba2e,11|1|0x7fd889,7|1|0x7fd889,1|1|0x7fd889,1|3|0xffffff,4|3|0xffffff,7|3|0xffffff", 90, 532, 802, 558, 816}
genderMale = {0x333333,"15|0|0x333333,15|-7|0x333333,15|8|0x333333,21|5|0xffffff,21|-4|0xffffff,5|-4|0xffffff,5|4|0xffffff", 90, 308, 972, 347, 998}
genderFamale = {0x333333,"9|0|0x333333,9|7|0xffffff,4|7|0xffffff,0|7|0xffffff,0|14|0x333333,8|17|0x333333", 90, 306, 981, 347, 1008}
--个人信息地区title
userInfoLocation = {0xffffff,"0|6|0xffffff,0|11|0xffffff,4|11|0x059b64,4|4|0x059b64,8|4|0xffffff,8|8|0xffffff,11|3|0x059b64,11|1|0x059b64", 90, 291, 74, 318, 95}
--使用漂流瓶
useDriftBottleButton = {0xffffff,"3|3|0x23c031,5|3|0xffffff,8|3|0x23c031,10|3|0xffffff,13|3|0x23c031,13|2|0x23c031,13|0|0xffffff,6|0|0xffffff", 90, 310, 1044, 333, 1056}
contents = {
"聊点刺激的呀?",
"我是你老婆",
"可以找男朋友?",
"男朋友太差了",
"突然想找个男朋友",
"找个男朋友,有?",
"敢不敢聊点刺激的?",
"有没男朋友啊?",
"我这样有人要??",
"要找个男朋友",
"会撒娇会卖萌,竟然没人要",
"好想找个男朋友",
"我想要找个男朋友",
"我满18岁了",
"这里有没男朋友",
"有没男朋友",
"不会卖萌怎么办",
"找个男朋友有没",
"找个男朋友",
"找个男朋友啊",
"有没有图片",
"有点想看视频",
}
--扔一个
throwAbottle = {0xffffff,"5|0|0xffffff,5|3|0x686c72,5|7|0x7c7d7c,2|7|0xffffff,2|4|0xffffff,0|4|0x65676f,0|6|0x727375", 80, 63, 1094, 81, 1111}
--捡一个
pickUpAbottle = {0xf5f5f4,"5|0|0xfafaf9,5|3|0xb2afa9,2|3|0xffffff,1|3|0xb7b6b0,1|7|0xb0afa9,1|12|0xffffff,4|12|0xffffff", 80, 287, 1098, 307, 1121}
--我的瓶子
myBottle = {0xffffff,"0|5|0xffffff,0|9|0xffffff,2|9|0x8c8985,4|9|0x93918b,4|7|0x8b8883,4|5|0xf2f2f1,4|3|0x8e8c85", 80, 517, 1097, 530, 1120}
--我的瓶子有红点
myBottleRed = {0xf95645,"0|3|0xf95645,0|8|0xf95645", 85, 543, 1059, 566, 1083}
--按住说话
sayByTap = {0x646464,"0|8|0x646464,10|8|0xfafafa,13|8|0xfafafa,15|8|0x646464,15|3|0x646464,12|3|0xfafafa,8|3|0xfafafa", 90, 410, 1089, 433, 1108}
--键盘图标
keyBoardIcon = {0x9f9f9f,"0|6|0x9f9f9f,-8|6|0x9f9f9f,-8|10|0xfafafa,1|10|0xfafafa,4|4|0xfafafa,4|-1|0xfafafa,4|-3|0x9f9f9f", 90, 34, 1078, 58, 1102}
--扔出去
throwOutBottle = {0x646464,"0|10|0x646464,12|10|0x646464,23|10|0x646464,23|1|0x646464,16|1|0xfafafa,8|1|0xfafafa,11|-3|0x646464,8|6|0xfafafa,16|6|0xfafafa", 90, 338, 561, 375, 583}
--我的瓶子title
myBottleTitle = {0xffffff,"6|0|0xffffff,6|4|0x059b64,6|10|0x059b64,6|14|0xffffff,-1|14|0xffffff,-1|9|0x059b64,-1|5|0x059b64", 90, 356, 61, 386, 87}
--返回漂流瓶
backToDriftBottle = {0xffffff,"8|0|0xffffff,8|3|0x059b64,10|3|0xffffff,13|3|0x059b64,13|0|0xffffff,1|3|0x059b64", 90, 63, 72, 84, 83}
--头像右上角红色未读信息
firstRedMessage = {0xf95645,"0|3|0xf95645,0|8|0xf95645,0|10|0xf95645,3|10|0xf95645,3|7|0xf95645,3|3|0xf95645", 90, 97, 135, 118, 159}
--第二个有回复的
secondRedMessage = {0xf95645,"0|3|0xf95645,0|8|0xf95645,4|8|0xf95645,4|5|0xf95645,4|2|0xf95645,4|0|0xf95645", 90, 96, 274, 119, 295}
--所有红点
thirdRedMessage = {0xf95645,"0|4|0xf95645,0|10|0xf95645,4|10|0xf95645,4|7|0xf95645,4|0|0xf95645,4|-3|0xf95645", 85, 119, 129, 136, 795}
--点击回复消息之后左上角返回连信
backLianxinIcon = {0xffffff,"7|0|0xffffff,7|3|0x059b64,3|3|0x059b64,3|7|0xffffff,7|7|0xffffff,7|5|0x059b64,4|5|0x059b64", 90, 96, 83, 117, 100}
--点击回复消息之后右上角小人图标
rightUserIcon = {0xffffff,"3|0|0xffffff,6|0|0xffffff,6|5|0x059b64,3|5|0x059b64,-1|5|0x059b64,1|8|0xffffff,4|8|0xffffff,6|8|0xffffff", 90, 579, 78, 606, 96}
--删除瓶子
deleteDriftBottle = {0xffffff,"0|6|0xffffff,0|8|0xffffff,4|8|0xff3b30,4|5|0xff3b30,4|3|0xff3b30,6|3|0xffffff,6|6|0xffffff,6|8|0xffffff", 90, 536, 314, 549, 332}
--滑动点击删除之后手机底部出现的删除
deleteBottom = {0xe64441,"0|3|0xe64441,0|9|0xe64441,3|9|0xfdfdfd,3|5|0xfdfdfd,3|3|0xfdfdfd,6|3|0xe64340,6|7|0xe64340", 90, 246, 955, 260, 977}

--丢瓶子
function lookForfriends()
	myToast("丢瓶子...")
	local _gender = false
	local _location = false
	local _contents = nil
	local used_contents = {}
	local _throw = false
	local _answer = false
	local _first = false
	local count = 1
	math.randomseed(tostring(os.time()):reverse():sub(1,n))
	while 1 do
		if MulcolorNoOffset_xx_model(lianxinTitle) and MulcolorNoOffset_xx_model(lookForfriendsIconGrey) then
			click(x,y)
			myToast("点击找朋友...")
		elseif MulcolorNoOffset_xx_model(lookForfriendsTitle)	and MulcolorNoOffset_xx_model(driftBottle) then
			click(x,y)
			myToast("点击漂流瓶")
		elseif _gender == false and MulcolorNoOffset_xx_model(userInfoDriftBottle) and MulcolorNoOffset_xx_model(userInfoGender) then
			click(x,y)
			myToast("点击性别...")
		elseif MulcolorNoOffset_xx_model(genderFamale) and MulcolorNoOffset_xx_model(genderFinish) then
			click(x,y)
			_gender = true
			myToast("点击完成...")
		elseif MulcolorNoOffset_xx_model(genderCancel) and MulcolorNoOffset_xx_model(genderMale) then
			click(330,1078)
			myToast("点击女性")
		elseif _gender==true and _location == false and MulcolorNoOffset_xx_model(userInfoDriftBottle) and MulcolorNoOffset_xx_model(userInfoGender) then
			click(164,659)
			myToast("点击地区...")
		elseif _location == false and MulcolorNoOffset_xx_model(userInfoLocation) then
			click(322,835)mSleep(1000)
			click(322,835)mSleep(1000)
			myToast("选择安道尔...")
			_location = true
		elseif _gender and _location and MulcolorNoOffset_xx_model(useDriftBottleButton) then
			click(x,y)
			myToast("使用漂流瓶...")
		elseif _throw == false and  MulcolorNoOffset_xx_model(throwAbottle) then
			click(x,y)
			myToast("扔一个瓶子")
		elseif MulcolorNoOffset_xx_model(sayByTap) and MulcolorNoOffset_xx_model(keyBoardIcon) then
			click(x,y)
			myToast("点击键盘")
		elseif _throw and tonumber(retTable[3])==0 and MulcolorNoOffset_xx_model(myBottle) and MulcolorNoOffset_xx_model(myBottleRed) == false then	
			myToast("瓶子没有回应,瓶子消息回应完毕...")
			break
		elseif _throw and tonumber(retTable[3])==0 and MulcolorNoOffset_xx_model(myBottle) and MulcolorNoOffset_xx_model(myBottleRed) then
			click(x,y)
			myToast("点击我的瓶子...")
		elseif MulcolorNoOffset_xx_model(throwOutBottle) then
			inputText(contents[math.random(1,#contents)])mSleep(1000)
			click(361,584)
			myToast(string.format("第%s次扔瓶子",count))
			
			for i=1,35 do
				toast(string.format("等待剩余%s秒",35-i))
				mSleep(1000)
			end
			count = count + 1
			if count > tonumber(retTable[2]) then
				_throw = true
				for i=1,40 do
					toast(string.format("全部设定次数扔完了,等待%s统一回复",40-i))
				end
			end
		elseif MulcolorNoOffset_xx_model(myBottleTitle) and MulcolorNoOffset_xx_model(backToDriftBottle) and MulcolorNoOffset_xx_model(firstRedMessage) then
			click(224,201)
			myToast("点击第一个有回复的头像")
		elseif MulcolorNoOffset_xx_model(myBottleTitle) and MulcolorNoOffset_xx_model(backToDriftBottle) and MulcolorNoOffset_xx_model(secondRedMessage) then
			click(241,336)
			myToast("点击第二个有回复的头像")	
		elseif _answer and MulcolorNoOffset_xx_model(rightUserIcon) and MulcolorNoOffset_xx_model(backLianxinIcon) then
			click(x,y)
			myToast("点击返回连信...")
		elseif _answer == false and MulcolorNoOffset_xx_model(backLianxinIcon) and MulcolorNoOffset_xx_model(rightUserIcon) then
			click(289,1088)mSleep(2000)
			inputText("看 我 头 像~~~~~")mSleep(1500)
			click(365,1080)mSleep(1000)
			click(563,1088)mSleep(1000)
			_answer = true
			myToast("回复消息...")
		elseif MulcolorNoOffset_xx_model(deleteDriftBottle)==false and MulcolorNoOffset_xx_model(thirdRedMessage)  and MulcolorNoOffset_xx_model(secondRedMessage) == false and MulcolorNoOffset_xx_model(myBottleTitle)  then
			clickMove(543,334,353,332,30)mSleep(1000)
			_answer = false
			myToast("删除第二个招呼...")
		elseif MulcolorNoOffset_xx_model(myBottleTitle) and MulcolorNoOffset_xx_model(deleteDriftBottle) then
			click(x,y)
			myToast("点击删除...")
		elseif MulcolorNoOffset_xx_model(deleteBottom) then
			click(x,y)
			myToast("确认删除瓶子...")
			_answer = false
		elseif MulcolorNoOffset_xx_model(myBottleTitle) and MulcolorNoOffset_xx_model(thirdRedMessage)==false and MulcolorNoOffset_xx_model(backToDriftBottle) then
			click(x,y)
			myToast("点击返回漂流瓶...")
			appKill("com.zenmen.palmchat")
			break
		end
	end
end

function addNewFriendAndChat()
	
end

init("0",0)
myToast("开始运行脚本...v0.0.1")
while 1 do
	changeVpnEnable()
	newPhoneByNZT()
	mSleep(2000)
	lianxinRegister()
	userInfo()
	lookForfriends()
	myToast("单轮任务结束...")
end


