require "Utilities"
local bb = require("badboy")
app_name = "com.kingnet.gundam.mg.normal"
init(0,1)
mSleep(2000)
--取色部分
--登录游戏部分
实名认证 = {0xffffff,"2|0|0xffffff,2|1|0xff9c31,0|1|0xff9c31,0|3|0xffc383,0|4|0xffca91,2|4|0xffca91", 90, 476, 367, 493, 377}
公告确定 = {0x411a03,"0|3|0x3b1302,0|5|0x3b1302,2|5|0xe0b213,3|5|0xe0b213,3|3|0x522904,3|1|0xdbb314,3|0|0x8c650b,2|0|0x8c650b", 90, 483, 447, 495, 461}
注销 = {0x6b989e,"0|3|0x1d293e,0|6|0x7f9b9c,0|8|0x1f293e,3|8|0xdbfffd,3|2|0xbefffb,5|2|0x1d293b,5|6|0x7f9b9c,5|7|0x1d2639", 90, 916, 15, 933, 35}
使用其他账号 = {0x898989,"4|0|0x898989,4|2|0xe6e6e6,1|2|0xe6e6e6,1|4|0xe9e9e9,4|4|0xe9e9e9,4|5|0x7b7b7b,1|5|0x7b7b7b,-1|5|0x797979,2|6|0xffffff", 90, 491, 369, 508, 381}
MG账号 = {0x606060,"0|6|0x606060,1|6|0x969696,1|4|0x979797,4|1|0xffffff,5|1|0xffffff,9|1|0x4c4c4c,9|5|0x4c4c4c,7|5|0xffffff", 90, 519, 355, 535, 370}
登录按钮 = {0xff9c31,"3|0|0xff9c31,3|-1|0xffffff,0|-1|0xffffff,1|5|0xff8f17,5|5|0xff8f17,3|5|0xffffff,3|8|0xffcd98,3|10|0xffc281", 90, 476, 326, 496, 345}
进入游戏 = {0x190a04,"0|4|0x330f04,0|5|0x320e04,3|4|0xddac10,3|3|0xe1b011,8|3|0x300f01,6|5|0xffdd33,7|5|0xffdd33,5|6|0xe8b711", 90, 439, 447, 458, 459}
灰色点券 = {0x0e2b08,"0|2|0x0e2d09,0|5|0x102e08,0|7|0x283310,2|7|0x3a300a,2|4|0x392f08,5|4|0x3d3113,5|1|0x133008,3|1|0x3b320e", 90, 547, 10, 561, 28}
--登录游戏部分结束

--弹窗取色
领取登录 = {0x8f2a2a,"2|0|0x8c2929,2|3|0xce9a9a,0|3|0xd9a9a9,0|5|0x8f2626,1|5|0x8e2828,1|7|0xffd4d4,3|7|0xfed5d5", 90, 851, 488, 863, 509}
灰色领取登录 = {0x404040,"2|0|0x3f3f3f,2|2|0xf0f0f0,0|2|0xededed,0|4|0x3d3d3d,2|4|0x3e3e3e,2|6|0x777777,0|6|0x757575,0|7|0xdddddd,2|7|0xdedede", 90, 850, 488, 864, 510}
领取奖励确定 = {0x0e2c4e,"0|2|0x0e2c4e,3|2|0x3db4f2,3|-1|0x3bc0f5,5|-1|0x0e2c4e,5|4|0x0e2c4e,8|3|0x3cb4f3,8|-1|0x3ac2f6,9|-1|0x3ac2f6", 90, 478, 407, 498, 423}
点击空白 = {0xe0c7a4,"0|5|0xebba70,8|5|0xffd386,8|0|0xffeecc,7|-2|0x562707,10|-2|0x4f2c0d,13|5|0xffd17b,13|1|0xffdfb2,13|-1|0xffebc4", 90, 524, 488, 545, 524}
对话跳过 = {0xc5f2ff,"0|2|0xc3f2ff,0|5|0xc3f2ff,0|6|0xc5f2ff,3|6|0x6ed2ff,3|4|0x6ed2ff,3|2|0x6ed2ff,5|2|0x6ed1ff,5|4|0x6ed1ff", 95, 919, 496, 942, 518}
--弹窗取色

--取色部分结束



--安卓敢达获取账号
function getGdAccount()
	sysLog("getGdAccount")
	local account = ""
	bb.loadluasocket()
	local http = bb.http
	local ltn12 = bb.ltn12
	local imei = getDeviceIMEI()
	while 1 do
		local url = string.format('http://192.168.1.200:8080/game/servlet/game?action=getAccGdAndroidTest&imei=%s',imei)
		res, code = http.request(url)
		if code == 200 then
			sysLog(res)
			return res
		else
			toast("获取安卓敢达账号失败...稍后再试")
			mSleep(3000)
		end
	end
end

--安卓敢达释放账号
function releaseGdAccount(acc,diamond,normal,strong)
	sysLog("releaseGdAccount")
	bb.loadluasocket()
	local http = bb.http
	local ltn12 = bb.ltn12
	local imei = getDeviceIMEI()
	sysLog(imei)
	while 1 do
		local url = string.format('http://192.168.1.200:8080/game/servlet/game?action=releaseAccGdAndroidTest&account=%s&imei=%s&diamonds=%s&normal=%s&strong=%s',acc,imei,diamond,normal,strong)
		sysLog(url)
		res, code = http.request(url)
		if code == 200 then
			--sysLog(res)
			return res
		else
			toast("释放安卓敢达账号失败...稍后再试")
			mSleep(3000)
		end
	end
end
--关闭重开游戏
function kill(pkg_name)
	closeApp(pkg_name)
	mSleep(2000)
	runApp(pkg_name)
	mSleep(2000)
end

--游戏是否在前台运行
function isGameRunning(appName)
	while true do
		local isfront = isFrontApp(appName); --更新前台状态
		if isfront == 1 then
			break
		else
			runApp(appName)
		end		
		mSleep(3000)
	end
end
--关闭弹窗
function closeWin()
	if MulColor(领取登录) then
		click(x,y)
		sysLog("领取登录")
	elseif MulColor(领取奖励确定) then
		click(x,y)
		sysLog("领取奖励确定")
	elseif MulColor(灰色领取登录) then
		click(904,59)
		sysLog("灰色领取登录")
	elseif MulColor(点击空白) then
		click(x+100,y)
		sysLog("点击空白")
	elseif MulColor(对话跳过) then
		click(x,y)
		sysLog("对话跳过")
	elseif MulColor(公告确定) then
		click(x,y)
		sysLog("公告确定")
	elseif MulColor(实名认证) then
		click(681,154)
		sysLog("实名认证")	
	end
end
--登录部分
function denglu()
	sysLog("denglu")
	local _acc,_pwd=false,false
	local tt = os.time()
	local isok = false
	local ret = Split(_Account,"#")
	while 1 do
		if os.difftime(os.time(),tt) > 240 then
			kill(app_name)
			tt = os.time()
			sysLog("denglu chaoshi")
		elseif _acc==false and _pwd==false and MulColor(登录按钮) then
			click(540,225)
			mSleep(1500)
			inputText("#CLEAR#")
			mSleep(1000)
			inputText(ret[1])
			mSleep(1000)
			click(831,139)
			mSleep(500)
			_acc = true
		elseif _acc == true and _pwd == false and MulColor(登录按钮) then			
			click(515,284)
			mSleep(1500)
			inputText("#CLEAR#")
			mSleep(1000)
			inputText(ret[2])
			_pwd = true
			tt = os.time()
		elseif _acc == true and _pwd == true and MulColor(登录按钮) then
			click(x,y)
			mSleep(1000)
			tt = os.time()
		elseif _acc==true and _pwd==true and MulColor(进入游戏) then	
			click(x,y)
			mSleep(1000)
		elseif MulColor(灰色点券) then	
			sysLog("灰色点券")
			break
		elseif MulColor(MG账号) then
			click(x,y)
			sysLog("MG账号")	
		elseif MulColor(使用其他账号) then
			click(x,y)
			sysLog("使用其他账号")
		elseif _acc==false and MulColor(注销) then
			click(x,y)
			sysLog("注销")
		elseif MulColor(公告确定) then
			click(x,y)
			sysLog("公告确定")
		elseif MulColor(实名认证) then
			click(681,154)
			sysLog("实名认证")
		end
		isGameRunning(app_name)
	end
end
--剧情部分
function juqing()
	sysLog("juqing")
	while 1 do
		
		closeWin()
	end
end


setSysConfig("isLogFile","1")
_Account = getGdAccount()
denglu()

--fileLogWrite("test",1,"INFO","test")

--sysLog(getGdAccount())
--releaseGdAccount("MG27023400","388","14","0")
--sysLog(getGdAccount())
--local ocr, msg = createOCR({
--		type = "tesseract",
--		path = "[external]",
--		lang = "eng"
--	})
--if ocr ~= nil then
--	string.trim = function(s)
--		return s:match'^%s*(.*%S)' or ''
--	end
--	local code, text = 0, ""
--	mSleep(1000)
--	code, text = ocr:getText({
--			rect = {1149,13,1187,38},
--			diff = {"0x3b3b3b-0x6e6e6e"},
--			whitelist = "0123456789"
--		})
--	sysLog("code = " .. tostring(code) .. ", text = " .. text:trim())
--	mSleep(1000)
--end

--bb.loadluasocket()
--local http = bb.http
--local ltn12 = bb.ltn12
--res, code = http.request('http://www.baidu.com')
--if code == 200 then
--	sysLog(res)
--	dialog(res, 0)
--end

