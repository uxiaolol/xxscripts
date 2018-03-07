require "TSLib"--使用本函数库必须在脚本开头引用并将文件放到设备 lua 目录下
local sz = require("sz")--写 showUI 前必须插入这一句
--PIC_PATH = "/private/var/mobile/Media/TouchSprite/res"
w,h = getScreenSize()

UINew(1,"支付宝注册配置","开始","取消","zfbalz1.dat",0,120,w,h,"221,240,237","88,210,232")
UILabel("中控地址端口例如:192.168.100.185:6666")
UIEdit("ip","中控地址端口","192.168.100.185:6666",15,"left","255,0,0")
UILabel("指定归属地(市)")
UIEdit("gsdcity","指定归属地","辽阳",15,"left","255,0,0")
UILabel("爱乐赞API帐号")
UIEdit("ptalzz","爱乐赞API帐号","",15,"left","255,0,0")
UILabel("爱乐赞密码")
UIEdit("ptalzm","爱乐赞密码","",15,"left","255,0,0")
UILabel("一键新机插件:")
UICombo({num=1,id="yjxj",list="HD,NZT"})
UIEdit("xzfs","方式","0",15,"left","255,0,0")
UIShow()
AppBID='com.alipay.iphoneclient'
logtest='支付宝'
nLog(frontAppBid())
initLog(logtest, 0)
--init('0',1) 
vis=''
local d = 
{
	---		is_FindText('任务活动2',545,353,587,398,'07F409,08140A#0CF90E,0D190F') and is_FindText('绿色帮会玩法',48,285,118,332,'03EC04,041405')
	['任务完成'] = {
"0081821408902640f1020408302040f9020408502160800260000000000c7fc020008402100bc0000002fc1087c005a0610604006$任务完成$91$14$30",
	},
	['任务主线'] =  {
"000884221088422108842b38affe210884221088422108002000000018c88628600200100000210084847f9049c822a0910284806$任务主线$99$14$30",
	},
	['点击接受'] =  {
"2104c63fff0840000512144e176a459b1244cb973a448912100000000604101b906270816a04ea912644813a24a99caa618404181$点击接受$140$14$30",
	},
	['打开'] =  {
"00822107fff000000000000000200040028005000bffe400000000000000000000000408083010cffe104000800100020004020807ffc8200040@0$打开$83$15$31",
	},
	['释放'] = {
"021004400f061a0824104400004124c049289231244ff8c492893012010400000000800901e3f814005800908721c000043009f02e0cc007001e09c21c0@011$释放$126$15$33",
	},
	['黄支线'] = {
"200490126009c224c891c6433f0c243093227889822000801000000018c88628600200100040210084847f9049c922a0910284806$黄支线$108$14$30",
	},
	['任务支线'] = {
"200490126089c224c891c6433f0c247093227889822004801000000018c8862c60020010004021008484ff9049c922a0910284806$任务支线$113$14$30",
	},
	['任务每日'] = {
"11008484f9244411104441510445111444511147fe0110044000000000000007ffc0820208082020808202080820209fff$任务每日$98$14$28",
	},
	['任务主线白'] = {
"000884221088422108842b188c62210884221088422108002000000008488628600200100000210084003f9048c02280910084006$任务主线白$81$14$30",
	},
	['任务支线2'] = {
"000490126089c224c891c6433f0c243093227889822004801000000018c88628600200100000210084847f9049c922a0910284806$任务支线2$108$14$30",
	},
	['任务每日1'] = {
"11008485f9244411104441510545111444511147fe0110044000000000000007ffc0820208082020808202080820209fff$任务每日1$100$14$28",
	},
	['任务活动'] = {
"080311e4000000080023f08882225d897e2088a22288fc200000000004311344711104449110c000c4061063fc0100440110087fc$任务活动$109$14$30",
	},
	['任务活动2'] = {
"080111e4000000080023f08882225789562888a2228874200000000004111344311104449111c000c40210e3bc0100440110083f8$任务活动2$101$14$30",
	},
	['宠物未出战'] = {
"001000038000f8000fc000740000030e007ff01e3f03f1e05f0c07f0007f0007f0003f3f01f0f01d7f00f0f0030c000003f0007e0007c00018000080$宠物未出战$148$20$24",
	},
	['黄色帮会商店'] = {
"50814defe41410504141000fc01000400100249880040000000001200880222149893844c2120848112024a052610882200080000000100047fd000410163c4a81020c08122458f104140051fe400000000000033ff1000400103f4089022cf891224489122408903f440@00$黄色帮会商店$204$14$61",
	},
	['绿色帮会玩法'] = {
"4081420577bf90544141050c003f0043d90804a096f26010000000000480220188852624e11308482120448892a14986220884020000000042111847ff1084000010244111f8440110047f910044001020000000080311c4000000000880620288723f08c82200880e2018001$绿色帮会玩法$206$14$62",
	},
	['绿色初试夺宝'] = {
"0080040f7fc640018008340190387f8100140050026ff9f00000000004031fe4010008100848213f84821008400ffe040690044030000000440112044813284891c20e087821708527f49f912044811200000000300892204881220488122c7fb1fe448812204a81262480c02$绿色初试夺宝$235$14$62",
	},
	['分金定穴'] = {
"04003031a08884c3e00800200081020708033786800c00100000000008002001880c24208102087fa162400082020b042010002000000000000910444e1104440910244031fe440110144051016405d010000000380880220308182380800a00380020008e0206080c2018e02$分金定穴$170$14$62",
	},
	['支线珍兽'] = {
"42010847ff108400006011204892c48a2244110888104020000000000001f2040bd028c0a10285ca152840a302840a102f7c80020$支线珍兽$103$14$30",
	},
	['任务支线3'] = {
"200490126009c224c891c6433f0c24309322788982200480100000001848862c60020010004021008484ff9049c922a0910284806$任务支线3$110$14$30",
	},
	['绿色呼朋唤友'] = {
"7ff10084021ffc000004059001410105fff41820408d024400000000001fff888822218887ffe0000003fff22208886221cc8@11$绿色呼朋唤友$131$14$29",
	},
	['未安装SIM'] = {
"03000030040303e037f27fe01ff001c30000300003007030fe03ff003c00000000006020060200602006020060200602006020fff21fff23060260602c060380603006030060$未安装SIM$151$20$28",
	},
	['新手机'] =  {
"00181030202040409c810902023c07f80e107023204440808103000600000000300c7ff880c10082010c021807300e4031806000c0018000000000000000000000000000800100020c04180830106060c0c181830306060c0c181ffe3ffc40c081810306060c0c181830306060c0000000000000000000000000000000000c001800300040808ffffffffc04000c001820300000000000007800fff980030006000c00180030006000fff9ff8000000000000000$新手机$297$15$96",
	},
	['密码错误'] =  { 
"3002400c807103f23f07e20e0410082010403c807980000000000000300061fec3f180030006000c001800300f7ffeff0000000000000000000000000000010006001800e207843f0fe6188c20184030800000000000030406080c11ffe3ffc06080c1018203040608fff1ffe030406080c100020004@0$密码错误$233$15$63",
	},
	['账号安全'] =  { 
"0001007c1007c1004010040100401004011040130401c04030041f00479084610e40107c010040100401004010040110401f0401c0401004010040100401007c1007c1000010000000000000000000000000000000000800018000100003000060300e03009830118302183041831818330183e0183c01ffc01ffa0183181830c1830618303183019830098300c030060300600007000030000300$账号安全$235$20$62",
	},

	['使用账号'] = {
		"00001000030000f0001c000f0003e000fff07ffffe000f000040000000000180001000010000103f0103f010200102001020010200102001020010200102001020f98fffffffc102001020010200102001020010200102001020010200103f0103f010000100001000018000000000000000000000000000000000000000000000000000000000000000ffff0ffff080180801808018080180801808018080180801808018080180801808018080180ffff0ffff080180801808018080180801808018080180801808018080180801808018080180ffff0ffff1e000$使用账号$346$20$88",
	},
}


---------------封装函数-----------
local NZT_RESULT_MSG = {
	[0] = "指令执行失败，可能是指令格式不对",
	[1] = "指令成功完成，有可能还包括记录数量",
	[2] = "指令执行中，还未完成",
	[3] = "下一条记录已到最后一条(仅针对nextrecord指令)",
	[4] = "激活异常",
	[5] = "当前未选中记录，执行出错",
	[6] = "当前记录不支持该操作，执行出错",
	[7] = "未找到合适数据，执行出错，比如没有数据或者指定数据不存在",
	[8] = "原始本机数据不支持本操作",
	[9] = "设置定位数据格式错误，执行出错",
	[10] = "尝试选中已禁用数据，执行出错",
	[11] = "不能连续恢复同一条记录，执行出错",
}
---脚本日志输出
function ts(msg,t)
	--os.date("%Y-%m-%d %H:%M:%S"); 
	if msg == nil then
		return		
	end
	if t ~= nil and type(t) == "number" then
		toast(msg,t) 
	elseif t == nil then
		toast(msg,1)  
	end
	if msg ~= nil then
		if vis~='' then
			wLog(logtest,"[DATE]"..'-'..vis..msg)
			nLog(os.date("%H:%M:%S")..'-'..vis..msg)
			--jl4(vis..msg)
		else
			wLog(logtest,"[DATE]"..'-'..msg)
			nLog(os.date("%H:%M:%S")..'-'..msg)
			--jl4(msg)
		end

	end
end


--获取设备SN
function getDeviceSN()
	local sz = require("sz")
	local serialno = sz.system.serialnumber()	
	return serialno
end

---延时运行函数
function mSleeps(time,fun)
	local fstime=os.time()
	while os.difftime(os.time(),fstime)<time/1000 do 
		if type(fun)== 'function' then
			fun()
		end
		mSleep(100)
	end
end
--[[判断画面是否移动
--函数isMoveing 功能判断画面是否移动
--参数x,y  传入6个坐标
--参数ty   类型1 2 3  1只要有一个坐标相等就返回真
--参数time 间隔时间
--参数fun  传入函数执行  不填默认为空
]]
function isMoveing(x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,ty,time,fun)
	if time then
		local ysloca1=  getColor(x1,y1)
		local ysloca2=  getColor(x2,y2)
		local ysloca3=  getColor(x3,y3)
		local ysloca4 = getColor(x4,y4)
		local ysloca5 = getColor(x5,y5)
		local ysloca6 = getColor(x6,y6)
		if fun then
			mSleeps(time,fun)
		else
			mSleep(time)
		end
		local ssloca1=  getColor(x1,y1)
		local ssloca2=  getColor(x2,y2)
		local ssloca3=  getColor(x3,y3)
		local ssloca4 = getColor(x4,y4)
		local ssloca5 = getColor(x5,y5)
		local ssloca6 = getColor(x6,y6)
		if ty==1 then
			if ((ysloca1 == ssloca1) or (ysloca2 == ssloca2) or (ysloca3 == ssloca3)) or ((ysloca4 == ssloca4) or (ysloca5 == ssloca5) or (ysloca6 == ssloca6)) then 
				--	ts("不动",'1')
				return false
			else
				--	ts("在动",'1')
				return true
			end
		elseif ty==2 then
			if ((ysloca1 == ssloca1) and (ysloca2 == ssloca2) or (ysloca3 == ssloca3)) and ((ysloca4 == ssloca4) or (ysloca5 == ssloca5) and (ysloca6 == ssloca6)) then 
				--	ts("不动",'1')
				return false
			else
				--	ts("在动",'1')
				return true
			end
		elseif ty==3 then
			if ((ysloca1 == ssloca1) and (ysloca2 == ssloca2) and (ysloca3 == ssloca3)) or ((ysloca4 == ssloca4) and (ysloca5 == ssloca5) and (ysloca6 == ssloca6)) then 
				--		ts("不动",'1')
				return false
			else
				--	ts("在动",'1')
				return true
			end
		elseif ty==4 then
			if ((ysloca1 == ssloca1) and (ysloca2 == ssloca2) and (ysloca3 == ssloca3)) and ((ysloca4 == ssloca4) and (ysloca5 == ssloca5) and (ysloca6 == ssloca6)) then 
				--		ts("不动",'1')
				return false
			else
				--	ts("在动",'1')
				return true
			end	
		end
	end
	ts('传入参数错误')
	return
end
--读取文件夹所有内容
function readName(file)
	local f = io.popen("ls "..file)	
	if f ~= nil then
		local ret = f:read('*all');
		f:close();	
		return ret
	end
end
--获取手机IOS系统
function iphoensb()--获取手机系统
	require "TSLib"
	local sz = require("sz")
	osversion = sz.system.osversion()
	return strSplit(osversion,'.')[1]
end
--读取一个文本全部内容
function readLine(path)
	local f = io.open(path, "r")
	if f ~= nil and f:close() then
	else
		os.execute("touch "..path);
	end
	local file,temp
	file = io.open(path,"r")
	temp = file:read("*all"); 
	file:close()
	return temp 
end
--文本续写
function wbxuxie(fileA,fileB)--文本续写
	local f = io.open(fileA, "r")
	if f ~= nil and f:close() then
	else
		os.execute("touch "..fileA);
	end
	f=io.open(fileA,"a+")
	f:write(fileB..'\n')
	f:flush()
	f:close()
end
--服务器数据传输
function localService(func,note,ids)
	local c=nil
	local ty=true
	if ty then
		c = httpGet("http://"..ip..'/?function='..func..'&content='..note..'&id='..ids..'=end')
	else
		c=myGet(ip..'/?function='..func..'@content='..note..'@id='..ids..'=end')
	end
	if type(c)~='string' then
		return ''
	end
	return 	c
end
--httpget
function myGet(url)
	local handle =io.popen("curl -q -k -s -m 1 "..url)
	local result =handle:read("*a")
	handle:close()
	return result
end
--httppost
function myPost(url,fields)
	local handle =io.popen("curl -q -k -s -m 1 "..url.." -d '"..fields.."'")
	local result =handle:read("*a")
	handle:close()
	return result
end
-- 计算字符串宽度
function strwidth(str)
	local fontSize = 20
	local lenInByte = #str
	local width = 0
	for i=1,lenInByte do
		local curByte = string.byte(str, i)
		local byteCount = 1;
		if curByte>0 and curByte<=127 then
			byteCount = 1
		elseif curByte>=192 and curByte<223 then
			byteCount = 2
		elseif curByte>=224 and curByte<239 then
			byteCount = 3
		elseif curByte>=240 and curByte<=247 then
			byteCount = 4
		end

		local char = string.sub(str, i, i+byteCount-1)
		i = i + byteCount -1

		if byteCount == 1 then
			width = width + fontSize * 0.5
		else
			width = width + fontSize
			prin(char)
		end
	end
	return width
end
--截取字符串
function stringlen(nickname,len)
	if nickname==nil then
		return ""
	end
	local lengthUTF_8 = #(string.gsub(nickname, "[\128-\191]", ""))
	if lengthUTF_8 <= len then
		return nickname
	else
		local matchStr = "^"
		for var=1, len do
			matchStr = matchStr..".[\128-\191]*"
		end
		local str = string.match(nickname, matchStr)
		return string.format("%s",str);
	end
end
---判断文件是否存在
function isFile(file_name)
	local f = io.open(file_name, "r")
	return f ~= nil and f:close()
end
---单点模糊找色
function isColor98(x,y,c,sim)   --封装函数，函数名 isColor
	local s=nil
	if not sim then s=95 else s=sim end
	local fl,abs = math.floor,math.abs
	s = fl(0xff*(100-s)*0.01)
	local r,g,b = fl(c/0x10000),fl(c%0x10000/0x100),fl(c%0x100)
	local rr,gg,bb = getColorRGB(x,y)
	if abs(r-rr)<s and abs(g-gg)<s and abs(b-bb)<s then
		return true
	else
		return  false
	end
end
--文本分割
function FgTxt(szFullString, szSeparator)
	if szFullString=="" or szFullString==nil then
		return ""
	else
		local sz = require("sz")
		local txtfg=szFullString:atrim() 
		return txtfg:split(szSeparator)
	end
end
--获取文件属性
function io.file(path)---获取文件属性
	local _={}
	function _:chmod(mode)
		if mode then
			return os.execute("chmod "..mode.." "..path)
		else 
			return string.sub(io.popen("ls -l "..path):read("*l"),2,10)
		end
	end
	function _:chown(mode)
		if mode then
			return os.execute("chown "..mode.." "..path)
		else 
			return string.match(io.popen("ls -l "..path):read("*l"),string.rep("[^ ]+[ ]+",2).."([^ ]+)")
		end
	end
	function _:size()
		return string.match(io.popen("ls -l "..path):read("*l"),string.rep("[^ ]+[ ]+",4).."([^ ]+)")
	end
	function _:time()
		return string.match(io.popen("ls -l "..path):read("*l"),string.rep("[^ ]+[ ]+",5).."("..string.rep("[^ ]+[ ]+",3)..")")
	end
	return _
end
--创建文件
function newfile(path)
	return os.execute("touch "..path);
end
--创建文件夹
function newfolder(path)--创建文件夹
	os.execute("mkdir "..path);
	local f=io.file(path)
	f:chmod(777)
	return
end
--文件-- 16进制字符串转换成二进制文件
function fileWrite(Path,Hex)
	local bytesfile = io.open(Path, "wb");
	for i = 1, string.len(Hex) - 1, 2 do
		local doublebytestr = string.sub(Hex, i, i+1);
		local n = tonumber(doublebytestr, 16);
		if 0 == n then
			bytesfile:write('\00');
		else
			bytesfile:write(string.format("%c", n));
		end
	end

	bytesfile:close()
end
--清理数据
function DelData(AppBID)
	local datepath
	local apppath=""
	if appIsRunning(AppBID) then
		closeApp(AppBID)
		mSleep(500)
	end
	local lsPath=appDataPath(AppBID)
	datepath=FgTxt(lsPath,"/")
	if datepath[#datepath]=="Documents" then
		apppath=string.sub(lsPath, 1, -10) 
	else
		apppath=lsPath
	end
	os.execute("rm -rf "..apppath.."/Documents")
	os.execute("rm -rf "..apppath.."/StoreKit")
	os.execute("rm -rf "..apppath.."/tmp")
	mSleep(1000)
	clearKeyChain("%com.tencent%")
	clearCookies()
	mSleep(500)
end
---微信数据读取
function WeiChat_TokenRead()
	local bid = 'com.tencent.xin'
	local sz = require("sz")
	if appDataPath(bid) == '' then return false end
	if not isFile(appDataPath(bid) .. '/Library/WechatPrivate/wx.dat') then return false end
	local f = io.open(appDataPath(bid) .. '/Library/WechatPrivate/wx.dat', 'rb')
	if not f then return nil end
	local s = (f:read('*a')):tohex()
	f:close()
	return s
end
---微信数据写入
function WeiChat_TokenWrite(_data)
	local sz = require("sz")
	local bid = 'com.tencent.xin'
	if appDataPath(bid) == '' then return false end
	--os.execute("mkdir -p " .. appDataPath(bid) .. '/Library/WechatPrivate/')
	newfolder(appDataPath(bid) .. '/Library/WechatPrivate/')
	--os.execute("chown -R mobile:mobile " .. appDataPath(bid) .. '/Library/WechatPrivate/wx.dat')
	local f = io.open(appDataPath(bid) .. '/Library/WechatPrivate/wx.dat', 'wb')
	f:write(_data:fromhex())
	f:close()
	toast('数据初始完成',1)
	---fileWrite(appDataPath(bid) .. '/Library/WechatPrivate/wx.dat',_data)
	return true
end
--分割文本
function Split(s, delim)
	if type(delim) ~= "string" or string.len(delim) <= 0 then
		return
	end
	local start = 1
	local t = {}
	while true do 
		local pos = string.find (s, delim, start, true) -- plain find
		if not pos then
			break
		end
		table.insert (t, string.sub (s, start, pos - 1))
		start = pos + string.len (delim)
	end
	table.insert (t, string.sub (s, start))
	return t
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
--点击
function click(x, y,t,s)
	touchDown(x, y)
	mSleep(30)
	touchUp(x, y)
	if t and type(t) == "number" then
		mSleep(t)
	elseif t and type(t) == "string" then
		ts(t,'1')
		mSleep(500)
	elseif t and type(t) == "number" and s then
		ts(s)
		mSleep(t)
	end	
end
--获取本机的广域网Ip
function getHostIp()
	local req = "http://ip.3322.net"
	local data, code = myHttpGet(req);
	if code ~= 200 then
		notifyMessage("获取本机ip异常")
		return nil
	end

	if data == nil then
		notifyMessage("获取本机ip为空")
		return nil
	end

	--匹配到IP地址
	return data:match("(%d+.%d+.%d+.%d+)");
end
--随机字符串
function randomstring(n)
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	local strs = "";
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	for i=1,n do
		local index = math.random(string.len(chars));
		strs = strs..string.sub(chars, index, index);
	end
	return strs;
end

--随机小写字符串
function randomstring_lower(n)
	local chars = "abcdefghijklmnopqrstuvwxyz";
	local strs = "";
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	for i=1,n do
		local index = math.random(string.len(chars));
		strs = strs..string.sub(chars, index, index);
	end
	return strs;
end

--随机数字串
function randomNumString(n)
	local chars = "1234567890";
	local strs = "";
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	for i=1,n do
		local index = math.random(string.len(chars));
		strs = strs..string.sub(chars, index, index);
	end
	return strs;
end

--随机数字串
function randomNumAndString(n)
	local chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	local strs = "";
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	for i=1,n do
		local index = math.random(string.len(chars));
		strs = strs..string.sub(chars, index, index);
	end
	return strs;
end
--手指点击
function clickid(x, y,id)
	touchDown(id, x, y)
	mSleep(50)
	touchUp(id, x,y);
	mSleep(500)
end

--点击延迟抬起
function clickys(x, y,s)
	touchDown(x, y);
	mSleep(s)
	touchUp(x, y);
	mSleep(500)
end

---结束在运行app
function appRunkill(bid,time)
	if not time then time=2000 end
	closeApp(bid)
	mSleep(time)
	runApp(bid)
end

function isColor(x,y,c,s)
	local fl,abs = math.floor,math.abs
	s = fl(0xff*(100-s)*0.01)
	local r,g,b = fl(c/0x10000),fl(c%0x10000/0x100),fl(c%0x100)
	local rr,gg,bb = getColorRGB(x,y)
	if abs(r-rr)<s and abs(g-gg)<s and abs(b-bb)<s then
		return true
	end
end

--多个坐标点找色
function multiColor(array,s)
	if not s then s=95 else s = math.floor(0xff*(100-s)*0.01) end
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		local r = math.floor(array[var][3]/0x10000)
		local g = math.floor(array[var][3]%0x10000/0x100)
		local b = math.floor(array[var][3]%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			keepScreen(false)
			return false
		end
	end
	x,y=array[1][1],array[1][2]
	return true
end
--找色
function zc(c,sim)
	if not sim then sim=15 end
	for i = 1, #c do
		local r, g, b = getColorRGB(c[i][1], c[i][2])
		local r1, g1, b1 = c[i][3]/0x10000, c[i][3]%0x10000/0x100, c[i][3]%0x100
		if math.abs(r - r1) > sim or math.abs(g - g1) > sim or math.abs(b - b1) > sim then
			return false
		end
	end
	return true
end
--找图
function DmFindPic(pic,per,x1,y1,x2,y2)
	keepScreen(true)
	x, y = findImageInRegionFuzzy(pic..'.bmp', per,x1,y1,x2,y2,0)
	if x~=-1 and y~=-1 then	
		keepScreen(false)
		return true		
	else
		keepScreen(false)
		return false
	end	
end
function DmFindPics(pic,per,x1,y1,x2,y2,s)
	keepScreen(true)
	x, y = findImageInRegionFuzzy(pic..'.bmp', per,x1,y1,x2,y2,0,s)
	if x~=-1 and y~=-1 then	
		keepScreen(false)
		return true		
	else
		keepScreen(false)
		return false
	end	
end
-- 忽略色找图
function DmFindPicFuzzy(pic,per,x1,y1,x2,y2,color,s)
	if not s then s=1 end
	keepScreen(true)
	x, y = findImageInRegionFuzzy(pic..'.bmp',per,x1,y1,x2,y2,color,s)
	if x~=-1 and y~=-1 then
		keepScreen(false)
		return true		
	else
		keepScreen(false)
		return false
	end	
end

--[[坐标色md5
--返回1个MD5值 和坐标数量
--x坐标 y坐标 width 宽度 height 高度  s 坐标之间的距离
--s最大坐标值
--s坐标相差距离,距离越大 返回md5值越快
]]
function is_if(x,y, width ,height,s)
	local var=0
	local t={x,y,width,height}
	local max=math.max(table.unpack(t))
	local b=""
	for sim1 = 0,  width -s, s do
		for sim2 = 0, height-s, s do
			if  x+sim1<= max and y+sim2<= max then
				var=var+1
				b=b..getColor(x+sim1,y+sim2)
				--wLog("test","[DATE]"..var.."-X"..(x+sim1)..",".."Y"..(y+sim2));
			end
		end
	end
	local sz = require("sz")
	return b:md5(),var
end

--多点区域找色  
function MulcolorNoOffset(color,posandcolor,degree,xMin, yMin, xMax, yMax)
	x,y = findMultiColorInRegionFuzzy(color,posandcolor,degree,xMin, yMin, xMax, yMax)
	if x~= -1 and y ~= -1 then
		return true
	else
		return false
	end	
end

function MulcolorNoOffset1(t,t1,sim,x1,y1,x2,y2)--多点找色 触动触摸通用
	function table3(t)
		local data = '"'
		for i=1,#t,3 do
			if i==1 then
				data1=string.format("0x%06x",table.unpack(t,i))
			else
				if i~=#t then
					data=data..string.format("%d|%d|0x%06x", table.unpack(t,i-2), table.unpack(t,i-1), table.unpack(t,i))..","
				else
					data=data..string.format("%d|%d|0x%06x", table.unpack(t,i-2), table.unpack(t,i-1), table.unpack(t,i))..'"'
				end
			end
		end
		return data1,data
	end

	function table2(t,t1)
		local a=string.gsub(t1,"|",",")
		local  b={}
		table.insert(b,t)
		local ret=Split(a,',')
		for i=1,#ret do
			table.insert(b,ret[i]);
		end
		return b
	end
	local zsColor='触摸'
	if zsColor=='触动' then
		if type(t)=="table" then
			keepScreen(true)
			local st1,st=table3(t)
			x,y = findMultiColorInRegionFuzzy(st1,st,t1,sim,x1,y1,x2)
			if x~= -1 and y ~= -1 then
				--log(string.format("0x".."%x",t[1]))
				keepScreen(false)
				return true
			else
				keepScreen(false)
				return false
			end	
		elseif type(t1)=="string" then
			keepScreen(true)
			x,y = findMultiColorInRegionFuzzy(t,t1,sim,x1,y1,x2,y2)
			if x~= -1 and y ~= -1 then
				--log(string.format("0x".."%x",t[1]))
				keepScreen(false)
				return true
			else
				keepScreen(false)
				return false
			end	
		end
	elseif zsColor=='触摸' then
		if type(t1)=="string" then
			local tt1=table2(t,t1)
			keepScreen(true)
			x,y = findMultiColorInRegionFuzzy(tt1,sim,x1,y1,x2,y2)
			if x~= -1 and y ~= -1 then
				--log(string.format("0x".."%x",t[1]))
				keepScreen(false)
				return true
			else
				keepScreen(false)
				return false
			end	
		elseif type(t)=="table" then
			keepScreen(true)
			x,y = findMultiColorInRegionFuzzy(t,t1,sim,x1,y1,x2)
			if x~= -1 and y ~= -1 then
				--log(string.format("0x".."%x",t[1]))
				keepScreen(false)
				return true
			else
				keepScreen(false)
				return false
			end	
		end
	end
end

--区域模糊找色  
function isColor_qymhif(color,degree,xMin, yMin, xMax, yMax)
	x, y = findColorInRegionFuzzy(color,degree,xMin, yMin, xMax, yMax); 
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
end

--左右滑动函数: speep 滑动速度
function myMove_RL(x1, y1, x2, y2,speed)
	local step = speed
	if x2 > x1 then 
		step = -speed 
	end 

	local cnt = math.abs((x2 - x1) / speed)
	if cnt == 0 then
		cnt = 1
		step = math.abs(x2 - x1)
	end

	touchDown(x1, y1)
	mSleep(50)
	for i = 1, cnt do
		mSleep(50)
		x1 = x1 - step
		touchMove(x1, y1)
	end
	touchUp(x2, y2);
	mSleep(100)
end

--上下滑动函数
function myMove_UD(x1, y1, x2, y2,speed)
	local step = speed
	if y2 > y1 then step = -speed end 
	local cnt = math.abs((y2 - y1) /speed)
	if cnt == 0 then
		cnt = 1
		step = math.abs(y2 - y1)
	end
	touchDown(0, x1, y1)
	mSleep(50)
	for i = 1, cnt do
		mSleep(50)
		y1 = y1 - step
		touchMove(0, x1, y1)
	end
	touchUp(0)
	mSleep(100)
end

--[[滑动
x1, y1:滑动起始点
x2, y2:滑动结束点
n	  :滑动速度
]]
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

---多点坐标连体滑动
function clickMovels(x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9,x10,y10,n) ---移动
	local s=nil
	local n=nil
	if y10 then 
		s=9
	elseif y9 then 
		s=8
		n=x10
	elseif y8 then 
		s=7
		n=x9
	elseif y7 then 
		s=6
		n=x8
	elseif y6 then 
		s=5
		n=x7
	elseif y5 then 
		s=4
		n=x6
	elseif y4 then 
		s=3
		n=x5
	elseif y3 then 
		s=2
		n=x4
	elseif y2 then
		s=1
		n=x3
	end
	for v=1,s do
		if v==1 then
			x1,y1,x2,y2 = x1,y1,x2,y2
		elseif v==2 then 
			x1,y1,x2,y2=x2,y2,x3,y3
		elseif v==3 then
			x1,y1,x2,y2=x3,y3,x4,y4
		elseif v==4 then
			x1,y1,x2,y2=x4,y4,x5,y5
		elseif v==5 then
			x1,y1,x2,y2=x5,y5,x6,y6
		elseif v==6 then
			x1,y1,x2,y2=x6,y6,x7,y7
		elseif v==7 then
			x1,y1,x2,y2=x7,y7,x8,y8
		elseif v==8 then
			x1,y1,x2,y2=x8,y8,x9,y9
		elseif v==9 then
			x1,y1,x2,y2=x9,y9,x10,y10
		end
		local w = math.abs(x2-x1);
		local h = math.abs(y2-y1);
		touchDown(0,x1,y1);
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
				touchMove(0,x1,y1);
				mSleep(10);
			end
		else
			for i = 1 ,h,n do 
				y1 = y1 + h1;
				if x1 ==x2 then
				else
					x1 = x1 + math.ceil(w*w1/h);
				end
				touchMove(0,x1,y1);
				mSleep(10);
			end
		end
		mSleep(50);
	end
	touchUp(0,x1,y1);
end

--阵点区域找字坐标
function is_FindText(dict,x1,y1,x2,y2,Color, sim)
	if not sim then sim=90 end
	local index = addTSOcrDictEx(d[dict])
	x, y = tsFindText(index,dict,x1,y1,x2,y2,Color, sim)
	if x~=-1 and y~=-1 then
		return true		
	else
		return false
	end	
end
--读一行删一行
function Read_Del(path) 
	local f=io.open (path,"r")
	local a=f:read("*l")
	local s=f:read("*a")
	f:close()
	io.open(path,"w"):write(s):close()
	return a
end
--微信支付密码键盘
function wx_input(zfmm)
	local function clic(x, y)
		touchDown(x, y);
		mSleep(30)
		touchUp(x, y);
		mSleep(200)
	end
	local v=string.len(zfmm)
	local s=0
	for i=1,v,1 do---------------
		s=s+1
		nLog(s)
		if string.sub(zfmm,s,s)== "0" then --第1个数
			clic(320,1079)
		elseif string.sub(zfmm,s,s)== "1" then --第1个数
			clic(104,746)
		elseif string.sub(zfmm,s,s)== "2" then --第1个数
			clic(319,749)
		elseif string.sub(zfmm,s,s)== "3" then --第1个数
			clic(543,748)
		elseif string.sub(zfmm,s,s)== "4" then --第1个数
			clic(100,854)
		elseif string.sub(zfmm,s,s)== "5" then --第1个数
			clic(321,854)
		elseif string.sub(zfmm,s,s)== "6" then --第1个数
			clic(537,856)
		elseif string.sub(zfmm,s,s)== "7" then --第1个数
			clic(101,972) 
		elseif string.sub(zfmm,s,s)== "8" then --第1个数
			clic(322,968)
		elseif string.sub(zfmm,s,s)== "9" then --第1个数
			clic(537,962)
		end
	end
end

--[[获取微信ID账号
与微信账号不一样，也可以用于登陆微信]]
function read_weixin_wxid()
	local weixin_data_path = appDataPath("com.tencent.xin");
	if weixin_data_path == nil or string.len(weixin_data_path) < 2 then 
		return nil
	end

	local file = io.open(weixin_data_path..'/Documents/LocalInfo.lst', "r")
	if file == nil then
		return nil
	end

	local temp = file:read("*all"); 
	file:close()

	if temp == nil then
		return nil;
	end

	local _end = string.find(temp, 'wxid')
	if _end then
		return string.sub(temp, _end, _end+18)
	end
	return nil
end
--[[读取微信设备id]]
function read_weixin_devid()
	local weixin_data_path = appDataPath("com.tencent.xin");
	if weixin_data_path == nil or string.len(weixin_data_path) < 2 then 
		return nil
	end

	local weixin_devid_file = weixin_data_path..'/Library/WechatPrivate/wx.dat';
	local f = io.open(weixin_devid_file, "rb")
	if f == nil then
		return nil;
	end	

	require("ts");
	local weixin_devid_context = (f:read('*a')):tohex();
	f:close()
	if string.len(weixin_devid_context)<300 then
		return nil
	end

	return weixin_devid_context
end

---朋友圈聊天数据
function wechatmsg()
	local msg_table = 
	{
		'人生苦短，千万不要活的太累。要活得舒心，活得快乐。',
		'别在喜悦之时许下承诺，因为喜悦之下容易忘乎所以。',
		'学会认错。人不可能无错，不会认错本身就是错。',
		'如果你竭尽全力，你就没时间担心失败。',
		'要承认自己的不足，不要过于自责。',
		'成功之时不可忘了过去 ，失败之时记得还有未来。',
		'不要谈论自己，更不要议论别人。',
		'爱心使人健康，善心使人美丽，真心使人快乐。',
		'多花些时间和能让你快乐的人在一起 ',
		'生存第一，规则第一，团队第一，忠诚第一 。',
		'忍耐之草是苦的，但最终会结出甘甜而柔软的果实。',
		'正确地做正确的事，这是真正的成功者。',
		'真正认识你的人，除了你的朋友，就是你的对手。',
		'真正的美丽，不是青春的容颜，而是绽放的心灵。',
		'身安，不如心安；屋宽，不如心宽。',
		'天助自助者，成功者自救.',
		'Do not waste time with regret. 别把时间都浪费在后悔上了。',
		'做好最坏的打算——哪怕从头再来',
		'孝敬父亲的人，必在子女身上获得喜乐。',
		'路不平可以铺，人不行不能哭。',
		'仰望别人的幸福时，别人也在仰望你的幸福。',
		'凡事皆有极困难之时，打得通的，便是勇者。',
		'事到万难须放胆，人处逆境须从容。',
		'人性最大的悲哀，是走不出心灵的迷茫。',
		'前进的理由只要一个，后退的理由却要一百。',
		'活着不是靠泪水搏取同情 而是靠汗水获得掌声',
		'自尊是一个人的脊梁，自尊是一种无畏的气概。',
		'当你的才华还撑不起你的野心时，应该静下心去学习。',
		'人生的弓，拉得太满人会疲惫。',
		'如果没有人相信你，那么你就自己相信自己。',
		'世界上没有强大的敌人 只有不够强大的自己',
		'自己做出决定，才是精彩的人生。',
		'人的美德的荣誉比他的财富的荣誉不知大多少倍',
		'书是人类进步的阶梯',
		'青年时种下什么，老年时就收获什么。　',
		'借人之智，完善自己。学最好的别人，做最好的自己。',
		'当你终于放下过去，拥抱明天的时候，你会发现全世界都在帮你。',
		'[成熟的前提就是与孤独为友。]',
		'生活没有绝望，只有想不通，人生没有尽头，只有看不透。',
		'只要你不跪着这个世界没人比你高',
		'期望是你硬塞给别人的 失望是别人甩你脸上回赠你的',
		'Who waits for time loses time【等待时机 就会失去时机】',
		'Do not give in to fear. 【别在恐惧面前低下你的头.】',
		'快乐要懂得分享，才能加倍快乐。',
		'变老并不等于成熟，真正的成熟在于看透。',
		'不悲伤，定会快乐。不犹豫，定会坚持。',
		'谢幕的是昨天，把握的是今天，预告的是明天。',
		'多笃志去细听别人怎么说，不要急着表达你本身的见解。',
		'两个基本点：遇事潇洒一点，看世糊涂一点。',
		'即使輸掉了一切 也不要輸掉微笑、',
		'就算世界有一千個理由讓你哭泣、 你也要有一千零一個理由微笑。',
		'宁愿跌倒无数次 、宁死不过平凡日 。',
		'弱者才会诉苦，强者永远找方法！',
		'μ ·別太高估自己﹣也別太低估自己',
		'成功者只是比失败者 多爬起来一次而已',
		'宁愿选择跌跌撞撞过一辈子、也不平平凡凡混一辈子',
		'别和往事过不去，因为它终究会过去。',
		'一切伟大的行动和思想，都有一个微不足道的开始.',
		'勇于追求是一种精神，懂得放弃是一种境界！',
		'生命不在于活得长与短，而在于顿悟的早与晚。',
		'把不忙不闲的工作做得出色，把不咸不淡的生活过得精彩。',
		'每个人都会跌倒 只看继续趴着还是站起来',
		'只要你保持微笑，生活就会向你微笑！',
		'诚信是人最美丽的外套，是心灵最圣洁的鲜花 ！',
		'美好的一天，上帝不会就这样给你，需要自己去创造。',
		'人有见识，就不轻易发怒。','默默的关怀与祝福别人，是一种无形的布施。',
		'只有承担起旅途风雨，才能最终守得住彩虹满天。',
		'- 姿态可以放低但不可以放弃。','日出东海落西山，富也一天，穷也一天 。',
		'含蓄是一种美，也是对他人的一种尊重。',
		'无论你觉得自己多么的了不起，也永远有人比你更强。',
		'打击与挫败是成功的踏脚石，而不是绊脚石。',
		'成功的人是跟别人学习经验，失败的人只跟自己学习经验。',
		'想要别人尊重你，首先就要学会尊重别人。',
		'Walk by faith, not by sight. 往前走，凭着信心，而不是眼睛。',
		'回避现实，只能将困难推迟。',
		'〆、每一个结局，都是一个新旳开始。',
		'我会用笑脸来迎接我每一个敌人.',
		'停止悲伤、机会从来不为任何人驻足',
		'最宝贵的东西不是你拥有的物质而是陪伴在你身边的人。',
		'当你被失败拥抱时，成功可能正在一边等着吻你 。',
		'人只要生活在这个世界上，就会有很多烦恼 .',
		'控制不住自己，就被别人控制。',
		'贪婪是最真实的贫穷，满足是最真实的财富。',
		'不要抱怨生活对你不公平，因为生活根本就不知道你是谁。',
		'人生活的是经历，幸福总是在路上。',
		'真实不可能完美，完美的绝对不真实 。',
		'没有十全十美的生活，贫贱富贵，开心就好 。',
		'这个时代的规律就是没有绝对公平竞争 ',
		'我们渴望成功，首先要志在成功 。',
		'★、既然选择了开始，在途中就不要放弃。',
		'朋友用心交,父母拿命孝.',
		'怀揣着朝气蓬勃的心迎接每一个黎明与黄昏',
		'放好心态，失去的东西，不要悲伤，你就当，他本身就不属于你。',
		'别让嫉妒长成荆棘，那会扎伤别人，也会刺伤自己。',
		'爱所有人，信任少数人，不负任何人',
		'人的差别在于业余时间',
		'人生因追求而精彩，生命因坚强而美丽。',
		'低调做人，高调做事，遇事要淡定，做事要稳当。',
		'只有忘记自己昨天的成功，才有助于得到明天的胜利。',
		'能力不在于你拥有什么，而在于你能给予什么。',
		'与其用泪水悔恨今天，不如用汗水拼搏今天。',
		'今天放尽悲伤，明天过后选择好好过。',
		'真正的满足来自你的内心，而不是外界的人和物。',
		'放弃想要的东西，才能够选择做正确的事情。',
		'看万卷书不如行万里路，行万里路不如阅人无数！',
		'珍惜和放下，都是生命必须经过的过程。',
		'当你持续说这件事明天再做时 你的明天就永远不会到来',
		'最巨大的遗憾，是被命运安排！',
		'有时候，重新开始，只是一个阶段而已！',
		'人总是要学着自己长大，用旅途的孤单收获成长。',
		'天赋的才华，生命的阅历，加上后天的坚持，是成功。',
		'懂得倾听别人的忠告，懂得分辨别人的赞美。',
		'不倒翁虽然不会摔倒，但也因此不会前进一步。',
		'He that respects not is not respected. 欲受人敬，要先敬人。',
		'没有礁石的阻挡，哪有浪花的激越。',
		'→用最荒芜嘚白，成就最蓬勃嘚绿→。',
		'不要只因一次挫败，就忘记你原先决定想达到的远方。',
		'抛掉过去，不一定有好的开始，但一定不会比过去坏。',
		'To make each day count.要让每一天都有所值。','用这生命中的每一秒，给自己一个不后悔的未来。',
		'哘動卟①啶帶莱啈冨， 卟哘動僦肯啶莈冇啈冨！',
		'如果失去是苦，你怕不怕付出？',
		'受挫一次，对工作和生活的理解加深一层。',
		'快乐没有谁可以左右，只有自己用力握紧。',
		'勇敢，不一定有结果，但不勇敢，一定没有结果。',
		'没有一种不通过蔑视，忍受和奋斗就可以征服的命运。',
		'人生要学会储蓄。你若耕耘，就储存了一次丰收。',
		'最惬意的时候，往往是失败的开始。',
		'如果今天后悔昨天，那明天就会后悔今天。',
		'没有把握的事，不要抱希望，那就不会失望。',
		'活在怀疑与恐惧之中是在浪费生命',
		'小成靠朋友，大成靠敌人。',
		'生活中其实没有绝境，绝境在于你自己的心没有打开。',
		'失败是常有的，成功是偶然的；付出是应该的，得到是暂时的。',
		'人就这么一辈子，开心也是一天，不开心也是一天。',
		'人生，没有永远的伤痛，没有过不去的坎。',
		'切勿贪意外之财，知足者人心常乐。',
		'命运不是放弃，而是努力。命运不是运气，而是选择。',
		'宁可装傻也不要自作聪明，宁可装穷也不要显耀财富。',
		'不要总把自己与别人比，做个最好的自己！ ',
		'勤奋者抓紧时间，懒惰者消磨时间，有志者珍惜时间。',
		'坚信自己，人生往往柳暗花明。',
		'要理想不要幻想，要激情不要矫情，凡事满意常乐。',
		'如果没人认可你，那就自己认可自己 。',
		'态度决定高度 习惯主宰人生',
		'保持青春的秘訣，是有一顆不安分的心。',
		'没有舍就没有得，今天所付出的，明天可能会加倍回报给你...',
		'人若把自己框在一定的范围内，就容易限制了自己的思维和格局。',
		'擁有理想只是一種智力，實現理想才是一種能力！',
		'每一分钟的愤怒，都会损失60秒钟的快乐。',
		'停泊，只是为了走得更远。',
		'不要用你的认为，去套住别人的思维。',
		'使人成熟的是经历，而不是岁月。',
		'不要因为一次挫败，就忘记你远大的理想。',
		'给别人的生命带来阳光的人，自己也会享有阳光。',
		'删除昨天的烦恼，确定今天的快乐，设置明天的幸福。',
		'生命太过短暂，今天放弃了明天不一定能得到。',
		'☆゛要先把手放开，才抓得住精彩旳未来。',
		'戏言不能伤敌，但能伤友。',
		'多一分心力去注意别人、就少一分心力反省自己。',
		'人不能和蜗牛比懒，因为蜗牛生来就自己的房子了。',
		'活的开心最重要，不管有多少挫折，都要努力冲过去。',
		'不能埋怨社会的不公 既然老天没给你你想要的 就要自己去争取',
		'微笑面对自己的将来、会发现世界很美好。',
		'永远成功的秘密，就是每天淘汰自己!',
		'在人之上，要看得起别人；在人之下，要看得起自己。',
		'对信任你的人，永远别撒谎。对你撒谎的人，永远别太相信。',
		'上帝为沵关闭一扇窗口，也会开启另一扇窗口，涐们要知足。',
		'只要还有明天，今天就永远是起跑线。',
		'冇信心 什么事情会办不成丶？',
		'用平常心来生活，用惭愧心来待人。',
		'生活不仅需要享受快乐，更应该去思考痛苦。',
		'人生三修炼：看得透想得开，拿得起放得下，立得正行得直。',
		'每天都要快乐，就当为了自己。',
		'永远不要后退，退到最后是无路可退。',
		'成功便是站起比倒下多一次。',
		'世界从不完美，时间不会给迩2次机会。',
		'用理想去成就人生，不要蹉跎了岁月。',
		'努力不一定会得到 但不努力就什么都得不到',
		'一个人拥有什么样的性格,就拥有什么样的世界',
		'没有不会干的事，只有不去干的人。',
		'生活旳目的在于享受每个当下',
		'你改变不了昨天，但如果你过于忧虑明天，将会毁了今天。',
		'从没有命定的不幸，只有死不放手的执着。',
		'∞ 过度追求完美也是一种障碍',
		'希望掌握永恒，那必须控制现在。',
		'☆゛全心付出过，生命才会精彩。',
		'学会说不，因为做不到的事不要强求，做自已力所能及的事。',
		'人生的真理，只是藏在平淡无味之中',
		'坚强的人只能救赎自己，伟大的人才能拯救他人。',
		'如果你不是经常遇到挫折，这表明你做的事情没有很大的创新性。',
		'是你的想跑也跑不掉，不是你的想得也得不到。',
		'越是被遗弃，越要争口气。',
		'锲而不舍,金石可镂。',
		'耐心是一切聪明才智的基础。',
		'立志不坚，终不济事。',
		'壮志与毅力是事业的双翼。',
		'不经一翻彻骨寒，怎得梅花扑鼻香。',
		'别让过去悄悄偷走了你的当下。',
		'等待是最傻的一件事情，每个人都做过。',
		'铁皮公车是坚硬的，柔软的我们要去哪里呢？',
		'想有个简单的地方、可以容纳我的心情。',
		'人生，总有些黑暗的隧道需要自己穿越。',
		'语言是心灵和文化教养的反映。',
		'学到很多东西的决窍，就是一下子不要学很多的东西。',
		'一个人的度量是一种精神力量，是一股强大的文明力量。',
		'作者不一定能写到老，但是他一定应该学到老。',
		'读书在某种意义上来说是养心。',
		'不信书不能提高境界，光信书不如无书。',
		'多一点无所谓，就少一份忧愁、少一份伤心。',
		'一切只能靠自己，别人能帮你一时，帮不可一世。',
		'明天很近，未来很远，且行且珍惜',
		'记住今日被伤，明日学会坚强......',
		'不要只追求正确 有时错误更可贵',
		'如果放弃，那就等于自取灭亡。',
		'在意自己应该在意的，不去想自己不该想的。',
		'吃别人不能吃的苦，走自己选择的路。',
		'学着做你自己，并优雅地放手所有不属于你的东西……',
		'你要知道，最大的敌人是自己， 无论是什么时候。',
		'失望太多的时候，不能停留，只有带着希望大胆的朝前走.',
		'在任何状况下，不能玩弄别人，玩人必被人玩。',
		'认准了就不要放弃，放弃了就不要回头。',
		'有得有失，才是人生，切忌忿忿不平。',
		'人要学会适可而止，不要无休止的去强求那些不属于自己的东西',
		'要为别人着想，但也要为自己而活。',
		'错一步没关系，一错再错就是自作孽。',
		'失意时不去怨恨，得意时不去张扬。',
		'只有大胆地去放弃一段感情，才会收获一段回忆。',
		'势不可使尽，福不可享尽，便宜不可占尽，聪明不可用尽。',
		'前方路灯不亮，试着换个方向。莫紧张，莫迷茫。',
		'没人给你台阶下，还是自己搬把椅子吧。',
		'你匍匐在地上仰视别人，就不能怪人家站得笔直俯视你。',
		'能做的只有站在自己的位置，扮演好各自的角色。',
		'盲目的寻找属于我的东西 一切总是那么茫然 !',
		'一个人的快乐，不是因为他拥有的多，而是因为他计较的少'
	}
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	return msg_table[math.random(1,#msg_table)]
end

---游戏关键词
function wxgame()
	local table ={
		"王者荣耀","梦幻西游","游戏币","魂斗罗","阴阳师","火影忍者","天下手游",
		"大话西游","梦幻诛仙","神武2","龙之谷","天龙八部","永恒纪元","捕鱼达人千炮版",
		"镇魔曲手游","倚天屠龙记","迷雾世界","放开那三国2","部落冲突","问道","诛仙手游",
		"倩女幽魂","仙灵世界","影之刃2","全民枪战","暗黑黎明","首充号","暗黑黎明2",
		"艾尔战记","艾德尔冒险","暗黑血统","暗黑屠魔者","傲视龙城","爱上传奇","暗黑起源",
		"奥特曼大作战","奥特曼口袋版","暗黑风云","暗黑大冒险","暗黑啪啪啪","暗黑战神3","阿修罗战神",
		"傲世狂仙","暗黑奇迹","傲娇剑客呆萌剑","傲世九重天","暗黑猎人OL","暗黑力量","暗黑传奇",
		"傲世霸主","暗黑妖仙","傲视沙城","艾欧尼亚战纪","暗黑王座","奥创战纪","艾泽英雄传",
		"艾斯战纪2","艾斯战纪","暗黑猎手","代充商品特卖","奥特曼系列OL","傲天录","傲世之剑",
		"暗箭","奥特曼大怪兽之战","暗黑之刃OL","暗黑复仇者2","暗黑3","暗黑挂机","暗黑之光",
		"暗黑联盟","暗黑街区","阿修罗之眼","艾琳传奇","傲视Q传","傲剑","阿瓦贝尔战纪",
		"暗黑战魂","暗黑女王","暗黑战神","兵界之王","不良人","白发魔女传","崩坏学园2",
		"部落风暴","百将行","暴打魏蜀吴","白猫计划","部落战歌","暴走骑士团","宝莲灯",
		"部落指挥官","百花战姬","步战三国","暴走萌部落2","宝贝大冒险","霸刀烈焰","暴走地下城",
		"碧蓝航线","捕鱼千炮来了","布袋英雄","霸业宏图","暴走萌将","捕鱼至尊宝","霸者传奇",
		"部落传奇","捕鱼大作战","冰与火战歌","捕鱼来了","霸业无双","不朽王座","不思议迷宫",
		"暴走三国志OL","部落狂战团","崩坏3rd","霸世群雄","波可龙迷宫","捕鱼达人4","霸刀觉醒",
		"不打不三国","百战屠魔OL","BT篮球","暴风战舰","部落X联盟","暴风战记","北凉悍刀行",
		"奔跑吧牛牛","百万萌娘H","百战仙魔","爆弹西游","壁咚三国","冰火奇缘","百炼成妖",
		"百炼成魔","冰火屠龙","爆爆堂","baby闹三国","捕鱼合伙人","壁咚那三国","百万曹操传",
		"暴走皮卡丘","部落别嚣张","百战仙侠","捕鱼大富翁","伯虎爱炫斗","暴走召唤师","冰火纷争",
		"暴走水浒","把妹大作战","别让我冒险","变变西游","暴风城之怒","别闹怪兽","暴走部落",
		"冰火皇权","霸王的大陆","百战封神","百万大魔王","部落特烦恼","冰火传奇","冰与火传说",
		"百战三界","部落大乱斗","爆笑捉妖记","暴打三国志","冰与火Online","百万精灵王","暴走死神",
		"暴风酒馆","宝贝联盟","冰火战姬","变大吧！吕布","报告大王","暴漫群英传","捕鱼达人",
		"波克斗地主","博雅斗地主","博雅四川麻将","不只三国","冰河世纪大冒险","兵戎天下","爸爸去哪儿2",
		"霸世英雄","百变武侠","暴走草帽团","暴走七龙珠","爆笑西游","部落守卫战","霸天三国",
		"部落英雄传","暴风英雄3D","奔跑三国","变形金刚前线","暴走无双","保卫帝王","冰火魔厨",
		"不败战神","变身吧主公","霸气江湖","崩坏学园","暴走僵尸","暴走武侠","传奇世界",
		"COS终极英雄","超级地城之光","纯三国","苍翼之刃","超时空机战","COK列王的纷争","超神战记",
		"苍穹变","超凡三国","超级英雄","COS英雄团","超级冒险家","沧翼幻想","出击吧比卡丘",
		"刺沙","纯仙侠","赤龙传说BT","楚禾传","超级电玩城捕鱼","楚娇传","赤龙传说",
		"长生决","楚乔传","传世奇迹BT","超神名将传","传奇之路","超次元大冒险","裁决沙城",
		"超级武器","传奇一刀","传奇战域","超级精灵球","草帽小子","赤月争霸","次元大作战",
		"超能学院","潮爆五虎将","宠物大乱斗","传世奇迹","超级英雄OL","超能战区","传奇大陆",
		"超次元矩阵","成吉思汗手机版","宠物精灵","超脱力医院","楚汉传奇","超能游戏王","苍空物语",
		"创世战纪","苍之骑士团","超级数码兽","传奇王者","唱舞团","超时空传说","传奇联萌",
		"次元战争","超级女声","传奇十一人","苍穹绝仙","潮爆无双","宠物精灵OL","超级舰队",
		"宠物精灵物语","超能复仇者","超能僵尸正版","雏蜂之尖兵少女","赤焰之怒","超神挂机","曹操别跑OL",
		"传奇开挂了","裁决之殇","CBA传奇","春秋战雄","COS乱斗女皇","超神合击","宠物小精灵",
		"传奇开挂","炽天使之怒","超时空英雄","超杀女神","超能忍者","超神传说","超级兵王",
		"超能英雄","丛林枪战","长歌行.江山","COS坦克大战","超级数码暴龙","超级提莫","传世挂机",
		"超凡大师","次元大冒险","城堡风暴","超级宗师","苍穹之光","超级英雄2","曹操传",
		"次元学院","超神争霸","超神联盟","超神之怒","重生日","超能继承者","曹操别嚣张",
		"超神之路","超级玛丽3D","长留修仙传","传神","超神风暴","超凡特工","传奇挂机",
		"超级精灵","超级足球3D","唱吧炫舞","赤壁风云","裁决之地","超神战队","穿越吧！主公",
		"宠物小精灵XY","超神吧英雄","苍穹之剑2","大话蜀山","盗梦英雄","巅峰战舰","大富翁9",
		"大航海之路","大掌门","刀锋无双","斗罗大陆神界传说","大主宰","大富豪2","大唐游仙记",
		"渡劫","东方不败","弹弹岛2","刀剑神域黑衣剑士","弹弹堂S","大刀客","大唐荣耀",
		"大话仙境","刀剑诛魔录","大侠II","斗罗大陆神界传说2","大漠霸主","大话武林","斗龙战士4之双龙核",
		"斗将","巅峰战神","弹弹堂手游","大战国","斗魂","帝王的纷争","刀剑少女2",
		"大洋征服者","大圣之怒","巅峰坦克","弹宝奇兵","单机三国志2","盗墓之刃","点兵三国",
		"地下城堡2：黑暗觉醒","大唐仙妖劫","刀剑兵器谱","地下城与冒险","帝王世纪","大圣王/大圣王HD","刀塔新魔兽",
		"帝霸","大秦帝国OL之英雄崛起","道王","大主宰:新版","大海战世界","大侠不哭","达尔文进化岛",
		"大奇幻时代","大大大乱斗","大武当之剑","大魔王","刀塔征途","大话西游热血版","地牢猎手5",
		"刀塔防狼","帝星战魂","帝王战记","第三国立女子高中","道友请留步","刀剑笑新传","大宋OL",
		"大唐无双","斗战OL","大赤壁","斗战三国","大航海HD","大话仙灵","大圣降魔录",
		"弹弹猴","地产风云","电视萌萌哒","大侠归来","大屠龙","刀塔之刃","巅峰英雄",
		"蛋蛋挂机","斗魂战神","独行道","德州扑克手机版","斗战封神","弹指天下","斗魔三国志",
		"大挂西游","狄仁杰传奇","大战国-樱花与刀","诞生吧！魔王殿下","斗阵西游","刀锋美人","大话仙缘",
		"大圣传说","点爆那暗黑","独孤九剑","大话聊斋","大皇帝OL","电玩街机捕鱼","大话封神3D",
		"大话三国志","斗恶龙战神篇","刀剑封神","地下城X勇士","大话梦三国","夺堡奇兵","大宗师",
		"斗武林","大神仙","刀剑如梦","屌爆三国","大漠风云","斗脑三国","大兵小将",
		"弹射英雄","捣蛋连萌","点点点三国","逗B啪啪啪","大秦芈月传","大圣回来了","代表星星消灭你",
		"大神来了","盗墓之王","大侠不要不要","大圣捉妖记","大圣顶住","滴滴挂机","大话封神",
		"帝国塔防Ⅲ","大明群英传","大英雄","钓鱼发烧友","大航海传奇","斗斗堂","独立防线",
		"大航海时代5","大圣归来","帝国战争","巅峰篮球","东邪西毒","刀剑天下","帝国OL",
		"帝国荣耀","刀剑传奇","斗萌西游","刀剑神域OL","地下城挂机","大圣捉妖","第一滴血",
		"帝王三国2","大武侠物语","动漫X乱斗","大侠挂个机","大闹天宫3D正版","东京食尸鬼","弹弹堂口袋版",
		"斗魂之刃","大挂武林","盗墓OL-寻龙诀","叮叮堂","弹弹岛战纪","帝国传奇","斗破封神",
		"帝尊","大唐双龙传","刀塔西游","盗墓笔记","帝王三国","刀塔来了","刀塔女神",
		"EVA适格者","恶魔狂想曲","二哥别走","二战","二战世界","恶魔骑士","二次元幻想",
		"二战风云","烽火王师","风云","风暴乱斗","放开我二弟","浮空岛与勇士","凤火连城",
		"封神争霸3D","复仇猎人","风爆远征","风云天下OL","方圆之战","封魔战神","封神召唤师",
		"疯狂原始人","封神英雄","烽火戏诸侯","烽火九州","非常三国志","凤舞三国","伏魔者2",
		"飞刀又见飞刀","放开大小乔","凡人修仙传","烽火三国OL","飞机大战3D","风云天下重燃","反恐突击队",
		"封神大主宰","法兰城的回忆","风之旅团","封神策","反恐精英之枪王对决","伏魔天师令","封神之刃",
		"蜂鸟五虎将","封神传奇","封神无敌","风暴部落","疯狂捕鱼","凡人遮天传","复联纪元",
		"焚天弑神/造化乾坤","反恐枪战","风暴之眼","烽火战国","风暴帝国","反恐通缉令","封神小鲜肉",
		"范冰冰魔范学院","风中奇缘","风暴荣耀","复仇装甲","反斗三国","非神勿扰","翻滚吧主公",
		"飞鹰战队","风语战士","愤怒吧三国","封神3D","凡人诛仙","封天之战","风色英雄传ol",
		"风暴幻想","封神杀OL","风暴军团","fate英灵战记","富甲封神传","疯狂联盟","风流少侠",
		"疯狂点击","法术石","Fate魔都战争","放开那唐僧","封神来了","放开那童年","封神幻想",
		"风暴传说","疯狂挂机","放三国","放逐之刃","焚天之怒","风暴战神","凡仙",
		"风暴纪元","凡人修真","功夫熊猫3","怪咖联盟","钢铁少女","乖离性百万亚瑟王","敢达决战",
		"功夫少林","功夫熊猫","关门放吕布","格斗猎人2","关云长","格斗猎人","鬼吹灯3D",
		"国战来了","钢铁华尔兹","鬼武三国志","怪兽大作战","光之荣耀BT","Garena 传说对决","攻城三国",
		"钢铁雄狮","公会大师","钢铁黎明","国战纪元","攻城OL","国战三国志","古云传奇",
		"攻守兼备","光明大陆","掼蛋联盟","挂江湖","怪物X联盟2","鬼话三国","古惑三国志",
		"光之后裔","国王与地下城","挂机打装备","钢铁风暴","高校三国 ","盖世仙尊","果实战争",
		"功夫传奇-熊猫归来","鬼面无双","格斗者联盟2","国战之名将劫","挂机吧武侠","鬼面王","鬼吹灯昆仑神宫",
		"光明传说","共和国之辉","功夫全明星","鬼吹灯之挖挖乐","钢铁咆哮","格斗学院","挂机吧兄弟",
		"古剑奇谭壹之莫忘初心","光暗觉醒","挂挂三国","鬼武者之神兵","宫爆三国","格子RPG","公主别闹了",
		"怪物猎人大狩猎","古树旋律","功夫西游","古剑奇谭","挂机破坏神","挂机西游","挂机争霸",
		"挂机三国志","挂机吧主公","攻城掠地","格斗无双","宫廷风云","怪兽岛2","灌篮高手",
		"挂机传说","怪物X联盟","挂个皮卡丘","宫廷Q传","高达战争","古惑仔Online","鬼舞三国",
		"古龙群侠传","格斗宝贝","格斗火影","格斗江湖","格斗之皇","皇室战争","航海王强者之路",
		"葫芦娃","花千骨","横扫千军","航海王启航","航海之路","火线精英","魂之幻影",
		"皇图","火影忍者-忍者大师","海岛奇兵","混沌与秩序2","幻想编年史","皓月怒斩","欢乐球吃球",
		"魂战三国","还魂门","火焰纹章：英雄","海蛇传奇","红警复仇","欢乐送","豪情水浒",
		"幻世英雄","还珠格格","航海王激战","豪门足球风云","黑龙波3D","胡莱三国2","洪荒之力",
		"洪荒之刃","幻灵奇缘","幻影纹章","幻游猎人","火线特工","横扫沙城","悍刀行",
		"后宫甄嬛传","欢乐魏蜀吴","红龙传说","海洋战争","幻姬霸业","狠西游","幻灵",
		"幻城之剑","皇途霸业","海岛战争","火炬之光","横冲直撞/世界英雄","猴哥去哪儿","红尘侠客",
		"合金弹头OL","幻斗英雄","魂之轨迹","红雀2","幻城","皇室西游","海域争霸",
		"Hello赵云","混沌修仙","火鸡英雄传","HIT：我守护的一切","红色帝国","红警4-英雄复仇","幻想东游记",
		"黑暗与荣耀","幻灵仙域","皇室守卫","皇牌机娘","幻想大乱斗","红警前线","黑暗圣经",
		"唤龙者-魔法与剑","红警战争","幻影旅团ol","号令三国","混斗女神战纪","合金三国","红警5：现代战争",
		"红警：世界大战","葫芦兄弟","合体吧主公","红警风暴","红警世界","欢乐斗牛牛","幻翼物语",
		"红警:共和国之辉","欢乐斗牛","混沌赞歌","皇家骑士团","幻影无双","海神之路","黑龙风暴",
		"灰烬之战","黑色剑士","幻想英雄传说","呵呵江湖","合金军团","幻想三国","花满谷",
		"幻想勇者传","红警5-终极坦克","黄金魂","火拼萌萌消","画江湖之灵主","混沌与秩序：英雄战歌","红颜水浒2",
		"黑暗风暴","横行冒险王","合金子弹","黑暗启元","皇城霸主","幻月之灵","海贼炫斗",
		"航海归来","横扫天下","欢乐斗地主","红警前传","海岛争霸","欢乐麻将","荒岛英雄",
		"航海争霸","黑暗光年","合体三国","红警4:大国崛起","汉风西游","幻想英雄","悍将三国",
		"黑夜传说","欢乐西游","绝世唐门","剑侠情缘","机动战姬","机甲无双","九阴真经",
		"九阴真经3D","剑与魔法","君临天下","精灵宝可梦GO","九州无双","绝世武神","巨龙之战",
		"剑魂之刃","绝代双骄OL","京门风月","究极数码暴龙","镜花奇缘","聚义三国","究极进化",
		"激战沙城","九州天空城3D","剑魂觉醒","军师联盟","极品芝麻官","究极数码进化","剑雨苍穹",
		"机动战队","剑心情缘","绝世剑神","剑雨天涯","叫我官老爷","决斗之城","舰姬",
		"军团降临","净化","九州天空城","集结号千炮捕鱼","街篮高手移动版","禁地之战","剑凌苍穹",
		"剑指秦时","军团荣耀","剑啸江湖","剑雨九天","激战通灵王","决战恶魔城","剑侠风云",
		"舰指太平洋","街机三国","将军之战场争锋","剑仙情缘传","将行天下","剑道风云","剑侠仙迹",
		"决战光明顶","街篮","决战幻城","降龙诀","剑雨逍遥","囧西游2","街球联盟",
		"江湖X","绝对领域极战纪","极无双","剑指中原","剑侠世界手游","君王权谋","剑灵江湖",
		"决胜千里","进击的少女","绝地逃亡","决战中州","将魂录","劲舞团","军师三国",
		"激战-触龙神","江山争霸","决战沙巴克","绝世战祖","精灵战歌OL","激斗西游","金光群侠传",
		"巨星足球","军团再临","剑雨主宰","剑与江湖","九歌","究极机甲暴龙","绝代仙侠",
		"极品君王","寂寞空欲晚","进化吧数码兽","绝世战神 ","舰娘Collection","剑与火之歌","尖叫女神",
		"决策三国","九层妖塔","机器人少女z","金秀贤明星学院","金陵十三钗","街机千炮捕鱼","就是要三国",
		"军团冲突","激萌主公","僵尸侠","街机无双","江山美人OL","继承者","激战:领袖之证",
		"进击的挂机","进击的巨人2","决战三国","疾风剑魂","街机之王","进击吧英雄","街头猎人",
		"绝色霸业","剑风传奇","江湖霸图","舰娘出击","绝对领域","进击的部落","街头篮球",
		"疾风猎人","九龙战","加勒比海盗OL","精忠岳飞","剑侠奇缘","决斗王","进化吧皮卡丘 ",
		"街机群英传","将临天下","机甲风暴","金箍棒OL","君王2","剑仙缘","君王3",
		"开天霸业","口袋有火影BT","昆仑剑仙","口袋妖怪3","狂战","狂龙争霸","口袋妖怪VS",
		"开天一剑","口袋妖怪Z","口袋数码兽OL","口袋征服","口袋妖怪重制","口袋暴龙","口袋精灵复刻",
		"口袋宝贝魅影","孔明没想到","狂龙之怒","口袋剑魂","口袋宠物世界","口袋街霸online","口袋召唤师",
		"口袋妖怪超进化","口袋侏罗纪","狂龙无双","快点三国","KO三国","空战帝国争霸","开心火锅店",
		"开挂的赛亚人","开心疯狂足球","开炮吧坦克","口袋大冒险","可可魔城","口袋妖怪-萌娘进化","空战之王",
		"空战帝国","卡卡西游2","块块传奇","口袋机战","开挂江湖","狂神无双","口袋妖怪进化",
		"狂战天下","口袋妖怪3D","口袋精灵 ","口袋幻兽OL","口袋奇迹","六龙争霸3D","陆小凤传奇",
		"龙门镖局","乱斗堂2","乱斗西游2","龙虎门","琅琊榜","炉石传说","萝莉有杀气",
		"灵域","龍/我们的传奇","乱斗奇兵","六扇门","龙之大陆","洛神战纪","龙泣",
		"龙族世界","罗小黑战记妖灵簿","雷神战记","龙与勇士","六界神王","蓝月武尊","龙王传",
		"龙脉","龙焰酒馆","猎妖","龙之神域","雷鸣三国","萝莉保卫战","灵域仙魔",
		"龙虎风云 ","灵文对决","龙虎三国","灵魂撕裂","六界飞仙","龙之岛战纪","聊斋OL",
		"狼人杀","灵狐小倩","猎鱼达人","篮球经理梦之队","烈焰封天","猎人外传","雷霆射击",
		"烈火之刃","烈焰裁决","龙战天下","吕布戏貂蝉","龙城传说","龙神之光","萝莉小精灵",
		"龙将OL","猎魔勇士","龙城主宰","龙心战纪","龙痕守护","螺旋境界线","聊斋妖魔道",
		"罗马帝国时代","猎魔传说","老九门","罗马帝国","龙魂神裔","琉璃仙途","黎明之光",
		"烈焰手游","亮有一计","兰空VOEZ","雷霆海战","乱轰三国志","雷霆战舰","六道忍者",
		"龙战于野","六界仙途","联盟崛起","龙骑士传","烈焰奇迹","列王战歌","陆战雄狮",
		"领战天下","龙裔战记","乱斗精灵","猎国杀场","龙珠激斗","猎杀联盟","龙戒",
		"烈火狂刀","龙之地下城","灵域传奇","灵剑奇缘","龙刃","灵魂战歌","乱斗魔兽",
		"领主争霸","列王时代","篮球高手","烈火传奇","撸撸联盟","灵剑侠侣","连环夺宝",
		"龙灵之刃","兰陵王妃","乱舞之刃","烈火奇迹","龙狼传说","六界","炼妖壶传奇",
		"擂台抢亲","龙之牧场 ","来自星星的你","路飞新世界","龙之契约","龙战争","烈焰天下",
		"龙珠炫斗","龙将斩千","烈火裁决","露娜物语","乱斗天下Online","龙族传说","浪漫庄园",
		"烈焰屠龙","龙珠挂机","灵域修真","乱斗英雄","烈焰三国","落樱散华抄","猎魔人",
		"乱斗之王","烈火遮天","乱神道","撸塔传奇","龙珠Q传","龙之力量","雷霆战机",
		"兰陵王","龙珠Z神与神","烈火战神","浪漫修仙","篮球飞人","乱世曲","联盟英雄传",
		"联盟传说","龙之影","烈焰遮天","烈火一刀","烈火屠龙","恋姬乱舞","烈焰仙尊",
		"烈焰之刃","灵魂契约","雷霆舰队","恋舞OL","龙骑战歌","妙战天下","魔龙世界",
		"魔灵幻想","梦想世界","魔灵觉醒","芈月传","梦三国","冒险岛手游","冒险王2",
		"梦幻神域","魔天记","魔域口袋版","冒险与挖矿","魔灵召唤","魔兽X魔兽","名将曲",
		"魔法英雄","萌三国","暮影战神","萌兽不要停","梦想江湖","魔法狩猎者","梦回山海",
		"梦幻星辰","梦仙侠","猛将兄留步","梦幻遮天","梦幻天骄","魔法与冒险","魔域迷宫",
		"梦幻战记","马踏千军","冒险王3D","魔女骑士团","末日之刃","梦想情缘","梦想昆仑HD",
		"蛮荒幻想","猛虎遮天","冒险与宝藏","萌仙蜜语","萌妹军团","美人如画将无双","美杜莎传奇",
		"萌龙战记","莽荒纪之无尽疆域","魔法少女小圆","魔境英雄","萌新出击","梦想世界3D","梦仙灵",
		"魔兽远征团","莽荒纪3","魔龙决","魔龙战纪","秘宝猎人","命运-冠位指定","魔兽之歌",
		"魔灵战纪","梦间集","冒险战记","魔兽再临","猛龙过江","魔王契约","魔龙战记",
		"冒牌三国","魔塔之英雄无敌","梦幻戮仙","魔灵兵团","梦仙缘","摸金三国志","漫漫西游",
		"梦幻修仙3D","萌宠时代","魔龙骑士团","梦幻轩辕","魔神战纪","梦幻传奇","美美小店",
		"明珠三国2","魔力契约","魔法门传奇","迷城物语","梦幻足球经理","冒险骑士团","魔兽人争霸",
		"萌漫大乱斗","魔法门挂机","梦幻石器OL","魔兽永恒","魔兽部落","魔法学园","魔兽传奇",
		"梦幻仙魔","梦幻降魔录","魔剑奇谭","魅影三国","梦幻诸仙","萌兽群英传","梦回仙游",
		"魔戒外传","猫靈","魔兽归来OL","魔王与公主","魔戒之火焰纹章","萌娘契约","梦幻侠侣",
		"魔霸风暴","魔龙之魂","梦回轩辕","魔法学徒","梦回江湖","魔王与后宫 ","魔神世界",
		"灭战国","芈月Q传","芈月天下","梦幻驯龙记","梦幻战神","魔王萌将","漫威格斗",
		"萌番乱舞","萌斗水浒","魔霸三国","梦想仙侠2","梦幻挂机","芈月传奇","魔力手游版",
		"魔兽英雄传","魔君","梦想城镇","魔兽战役","梦幻仙境","魔霸之王","明星大乱斗3D",
		"萌宠冒险岛","萌回三国","漫天花剑雨","萌神战记","魔龙勇士","魔兽无双","梦幻灵域",
		"梦幻神魔","妹型杀器","梦想星城","美少女梦工厂","梦幻三国","梦想三国志","梅露可物语",
		"冒险之光","魔兽英雄V传","梦想死神","美少女联盟","梦幻寻仙","萌卡篮球","美人记",
		"萌将冲冲冲","卖个萌仙","梦西游","魔刃之魂","名侦探柯南","梦幻仙灵","魔卡幻想",
		"魔域英雄","萌斗士","马上三国","梦想仙侠","明珠三国","明珠轩辕","梦幻神界",
		"梦梦爱三国","魔力时代","梦灵","魔力宝贝","萌江湖","迷你西游","女神联盟",
		"暖暖环游世界","奶块","怒焰屠龙","你好三国","怒焰三国杀","女王的纷争","怒火一刀",
		"拿下那三国","逆天魔仙","怒斩屠龙","诺文尼亚","逆乾坤","那兔之大国梦","怒破千军HD/萌兵战将",
		"宁采臣","怒火焚天","南征北战","暖暖女仆","女神星球","逆天神器","逆天记",
		"逆转三国","娘舰","逆天修真","怒破千军","奶嘴三国","女皇之刃","女神之12星将",
		"女仆大人是会长","女神大陆","女神西游","念奴娇","女神弹珠","女王号令","男神女神",
		"NBA梦之队2","NBA范特西","女神消消乐","女王大人","逆战三国志","那年那兔那些事儿","男神执事团",
		"女神争夺战","怒斩轩辕2","逆天仙魔录","女妖","啪啪巫妖王","啪啪三国","皮卡丘PK数码兽",
		"破晓之光","蟠龙裁决","破天一剑","飘渺灵域","啪啪西游","破军天下","啪啪武将",
		"乒乓大魔王","泡泡大乱斗","霹雳天下","皮卡丘战记","普天之下","破阵无双","皮克斯战记",
		"破千魂","啪啪亚瑟王","霹雳江湖","啪啪江湖","跑跑卡丁车","皮卡丘2015","破天武狂",
		"皮卡丘萌萌哒","飘邈之旅","青丘狐传说","去吧皮卡丘","拳皇98终极之战ol","青云志","枪战英雄",
		"全民神将","奇迹2016","秦时明月","秦时明月2","全民突击","全民奇迹","全民神魔",
		"拳皇97OL","奇迹无双","全民飞机大战","全民大主宰","全民sf","奇迹暖暖","球球大作战",
		"千人斩","群战三国","青龙偃月传","权御三国","权倾三国","全明星大乱斗","全明星幻想",
		"情剑江湖","群雄崛起","青云诀","全民三国","全民大航海","权力之歌","群p传奇",
		"器灵","全职猎手","青云寻龙诀","全民江湖","犬夜叉-寻玉之旅","倩女","全民口袋争霸",
		"齐天降魔记","权力与荣耀","抢滩登陆3D","权御天下","全民召唤师","全民大爆斗","骑士冲突",
		"倾世西游","全民X结义","全民仙灵","群雄风云","全民足球经理2016","全民忍者","枪魂",
		"全民三国大战 ","青龙战纪","奇迹破坏神","全民斗战神","漆黑的魅影","奇迹SF","全民修仙2",
		"全民热血","全民烧猪","全民战群英","擒天记","全能英雄","奇迹之门","权力的游戏OL",
		"QQ降龙2","奇迹战神","全民数码兽","千年杀","全民打BOSS","全民暗黑","全民坦克",
		"全民小镇","全民君王","全民风暴 ","全民进化","全民三国战纪","全民大灌篮","骑士法则",
		"全民捉妖记","群雄召唤","群雄天地ol","奇迹英雄","权倾天下","全民水浒","全民格斗王",
		"青龙偃月刀","奇葩大乱斗","全民弹弹","全民英雄无敌","全民漂移","拳击少女","全民生化",
		"全民爱主公","全民攻城","全民海战","全民霸业","全球反恐","全民主公","奇缘幻境",
		"全民爱斗牛","全民蜀山OL","全民天团","全民打街机","全民枪王","全职猎人X","千姬变",
		"青春全力忍","全民死神","全民修仙","七国","全职猎人","全民篮球","全民封神",
		"晴天小狗","全民斗三国","全民打魔兽","蔷薇梦想","全民打飞机OL","全民挂机","千里走单骑",
		"全民蒸汽","全民超神","全民足球经理","全民西游2","全民猎妖","酋长挂机","奇迹西游",
		"倩女幽魂录","契约2","热血传奇","忍将","热血街霸3D","热血高校","热血三国",
		"热血屠城","热血三国志","热血轩辕","热血航海王","热血传世","热血英豪 ","热血荣耀",
		"儒道至圣","热血地下城","热血物语","热血江湖","热血之怒","热血豪侠","热血至尊",
		"热血战神","热血杀城","荣耀崛起","热血办公室","热血新手村","热血霸业","如果的世界",
		"热血三国传奇","热血死神","热血修仙","热血沙城","热血仙魔","忍者龟OL ","热血仙域",
		"热血屠龙","热血联盟","热血学园","热血归来","忍者龙贱传","忍界大战","热血坦克",
		"热血斗魂","热血学院3D","热血屠魔","燃烧战歌","热血挂机","热血精灵王","热血弑神",
		"软妹天国","忍者疾风传","忍者无敌","燃烧的英雄","忍者必须死","热血格斗","忍者风暴",
		"热血问战","热血封神传","热血冒险岛","少年西游记","水浒Q传","三剑豪2","射雕英雄传3D",
		"谁是卧底","神仙道2016","神魔圣域","时空之刃","沙巴克传奇","蜀山战纪","师父有妖气",
		"时空猎人","少女前线","曙光之战","山口山战记","神魔","神威启示录","少年勇者团",
		"神曲之符文英雄","誓约之剑","少年西游","死神斩之灵","率土之滨","守护者们","三国群英传",
		"三国杀","三国杀传奇","丧尸之战","神雕侠侣","十万个冷笑话","山海经OL","山海经之赤影传说",
		"沙战荣耀","失落之城","少年江湖令","神道纪元","三国战起来","狩猎者","弑血沙城",
		"三国卡牌大战","少年悟空传","数码兽BT进化","神道","三世情缘","蜀山奇异录","三国大英雄",
		"三国英雄传","数码兽之王","蜀山传奇","沙城荣耀SF","射雕英雄传手游","思美人","三生萌唐录",
		"三国传说","圣剑守护","三国无双","三生三世十里桃花","隋唐霸业","舌尖上的中国","守护小精灵",
		"扫荡三国","神泣","神仙道2","圣杯三国","少年驱魔教团","水浒群英传","神兵奇迹",
		"神话永恒","上古封神","三国群侠传","三国群英纪","盛世群侠传","神域天堂","少年群英传",
		"散人传奇","数码世界","三英战吕布","胜者为王","少年幻兽团","生死狙击","神之荣耀",
		"三界仙缘","蜀山剑纪","沙城争霸","石器总动员","沙城主宰","圣斗士传说","三少爷的剑",
		"三国情仇录","SD敢达手机游戏","三国挂机名将传","三国归来","嗜血之巅","水晶之歌","数码宝贝复刻",
		"时空枪战","死神斩魂","守护圣域","三国大乱斗","神谕幻想","数码大冒险","数码挂兽",
		"数码暴龙PY版","守望者联盟","神犬小七2","少年封神榜OL","闪电突袭","神域之门","宿命大乱斗",
		"少女咖啡枪","骚年卧龙传","三英逗吕布","蜀山天下","圣域之光","数码兽大作战","侍魂OL",
		"兽血再燃","蜀山修仙传","少年三国","三国战纪","神龙武士","神武赵子龙","收了那小妖",
		"死神之主宰","神奇宝贝联盟","三国富翁","神鬼传奇","上古奇迹","十万个修仙者","盛世枭雄",
		"石器挂机","世纪海战","赏金猎人","神武传","时空炫斗","散人霸业","神仙联盟",
		"时空大乱斗","圣魂","神魔问道","数码宝贝新秩序","神魔世界","三国辣么萌","十万个救兵",
		"三国霸业","蜀山奇缘","神魔幻想","死亡阴影","兽欲三国","死亡扳机2","神之兵团",
		"嗜血攻沙","山海战记","三国龙翔传","神将三国","神奇小精灵加强版","三打白骨精","赛尔号超级英雄",
		"时界物语","神宠大作战2","神经侠侣","三国群英OL","三国女神","撕暴魏蜀吴","上帝之手",
		"三萌争霸","神秘传奇","神机三国","圣光骑士团","圣衣战争","神域大乱斗","兽人大逃亡",
		"三国LOL","沙城屠龙","十万个大魔王","兽人战争","神将奇兵","圣骑士之歌","时空召唤",
		"神魔之战","三国志之九州战","三国挂机传奇","神奇宝贝绿宝石","圣剑契约","散人SF","少年四大名捕",
		"三国杀OL","时空物语","石破天惊","三国神将传","圣剑","三国乌托邦","兽人崛起",
		"神奇宝贝","神墓OL","蜀山剑道","圣灵勇士","三国志国战版","四大萌捕","水浒英雄",
		"尸兄","少女舰队","上古神话","少年龙骑士","神图腾","神将传HD","三国之乱舞",
		"三国世界","圣火英雄传","搜神记","三国派","三国威力加强版","兽人计划","神魔英雄传",
		"三国梦工厂","神啊救救我吧","三国名将","杀神","实况俱乐部","死神2","神龙骑士团",
		"上帝也疯狂","少年剑心","圣斗士2","神域之光","死神来了","世界OL","神影战歌",
		"三国战天下","三国弹一闪","神魔劫","神秘力量","少年魔兽团","圣域龙斗士","三国吧兄弟",
		"石器时代2","世界2风暴帝国","圣斗士星矢","三国我为王","神魔大陆3D","三国战神","天天打波利",
		"天天幻灵","天天数码兽","天天一拳","天天酷跑","天天枪战","太极熊猫2","天魔幻想",
		"天龙3D","天子","天堂杀戮","屠龙霸主","天珠传奇","铁血舰魂","铁血沙巴克",
		"天空的魔幻城","坦克风云OL","天神传说","天使之石","铁王座-战争之歌","天堂之心","天堂荣耀",
		"天阶岛 ","屠龙战役","天下英雄","天天狼人杀","坦克冲锋","桃花源记手游","天命传说",
		"天天驯兽师","天天富翁","天天打三国","天启之门","坦克王者","屠龙决战沙城","坦克传奇",
		"特勤姬甲队","塔防三国志3D","天天打妖怪","天诀","屠神归来","天使舰队","天天怼三国",
		"探墓风云","童话西游记 ","通天西游","坦克争霸23D","天启OL","天天SF","天启的狂怒",
		"坦克之战","屠龙霸业","坦克世纪","坦克火线","天域幻想","吞食天地","坦克连",
		"天天爱超神","天天战争","天天飞车","天天爆三国","铁血沙城","天剑","天天爱消除",
		"坦克射击","天天挂奇迹","屠龙战","贪婪洞窟","甜心格格","甜甜萌物语","屠龙传奇",
		"天尊HD","天使幻想","天剑小师妹","吞食天地2","塔塔三国","天天暴走","童话大冒险",
		"唐僧与女妖精","天剑情","坦克突击","天天乱斗","天子传奇","天天酷跑3D","天天有喜",
		"天武争霸","坦克特战队","塔防无双","天殇之怒","屠龙杀","天天魏蜀吴","坦克战神",
		"坦克指挥官","土豪德州王","投翔三国","天使童话online","天堂战记","提莫必须死3D","天天挂传奇",
		"天下狂刀","天天传奇","天剑奇缘","天天塔防战","天天约三国","天机变","台球帝国",
		"铁血武林","泰坦之光","坦克警戒","坦克前线","天下江湖","童话啪啪啪","坦克帝国",
		"天魔","塔王之王","天下群英","天天帝国","塔防三国志","天天忍者","太古",
		"天天世界杯","坦克少女","天天挂机","屠龙之刃","天天炫斗","坦克风云","天将雄师",
		"坦克争霸3D","天朝小将","天天足球","天天爱仙侠","唐门世界","屠龙令","天天炫舞",
		"天天撸啊撸","天天英雄","天天爱西游","我在大清当皇帝HD","武神赵子龙","我叫MT3","完美世界3D",
		"武林外传电影手游 ","王牌战舰","我叫MT","我叫MT2","武极天下","卧虎藏龙","我是火影",
		"忘仙","无双剑姬","我是死神","问鼎天下","无限幻斗","无双西游","武侠Q传",
		"我的虚空星球","卧龙","我是车神2","武当剑","王的荣耀","王者传奇","五行天手游",
		"王者军团","王权的战争","王者雄风","文明霸业","万灵召唤","我的使命","无敌战王",
		"我们的沙城","武林豪侠传","无敌战舰","我叫MT英雄杀","无敌战神","王牌NBA","卧龙杀",
		"我是大主宰","蔚蓝少女","我叫张小盒","无双飞将","无双兵团","王者征途","王与异界骑士",
		"万神之王","王室纷争","万炮金鲨捕鱼","无敌OL","无限之心","王者永恒","我的战争",
		"王者远征","我的天下","我欲逆仙","无上神王","悟空","我的文明","无极魔道",
		"我欲封天之至尊归来","我朝有马","我欲独尊Ⅱ","无双战国","武布天下","围攻大菠萝","舞动青春",
		"微微一笑很倾城","无尽神域","无限战争","我叫MT3","无主之地","武娘联萌","武娘",
		"武圣赵子龙","王者SF","武圣关云长","万古至尊","万古修仙","我是篮板王","我有上将",
		"武林乱挂","悟空别走开","我最传奇","问仙奇录","无双赵子龙","武神霸业","五福捕鱼",
		"无尽争霸","完美幻想","王国纪元","我是指挥官","我的后宫时代","我欲封魔","王国交锋",
		"武神传","武林群侠传","我欲封天","我的舰娘","武林侠客","我的三国","问战三国",
		"我欲X神","无尽魔兽","武缘","伟大航路","舞神","玩弹去OL","万万没想到3D",
		"无极神魔传","无尽之塔","无双战神","武器大师","无尽大冒险","王者风暴","卫子夫",
		"无双小师妹","我的兽人","武动乾坤","乌鸦嘴妙女郎","武侠大宗师","无双之刃","我爱皮卡丘",
		"王朝的女人","王者之路","王者霸业","我欲封神","万千回忆","武尊","武林神功",
		"无间狱","卧龙吟","无双三国志","无双三国","悟空传说","无敌唤灵","武媚娘传奇",
		"武侠外传","雪刀群侠传","新全职猎人","西游降魔篇3D","新仙剑奇侠传","逍遥西游2","新古龙群侠传",
		"新花千骨","星际传奇","寻秦OL","逍遥西游","心动劲舞团","小时代","新秦时明月",
		"仙剑奇侠传五前传","新大主宰","侠隐江湖","星辰奇缘","仙迹","炫舞浪漫爱","仙灵奇缘",
		"仙语","西游神魔决","仙逆","寻仙手游","仙语情缘","雄霸隋唐","星辰之翼",
		"仙神之怒","星河护卫队","西游取经","西游记口袋版","新莽荒纪OL","虚化之刃","修仙劫",
		"星空传奇","修仙诀","仙境物语","轩辕传奇手游","仙境奇兵","新功夫少林","夏目妖怪录",
		"修仙无双","心动女友","箱庭战纪","雪鹰领主","星河战姬","小兵快跑","驯龙战记",
		"仙剑奇侠传5","西游修仙传","悬空城","驯龙三国","逍遥吟","仙剑奇侠传幻璃镜","轩辕剑3",
		"寻找前世之旅","西游伏魔篇","炫龙记","侠义","星座英雄","新我欲封天","仙魔奇谈",
		"仙缘录","小小空城计","玄界修真","西游萌萌","侠侣降临","仙圣奇缘","秀逗军团",
		"星座联萌","修仙萌主","行侠仗义五千年","西游奇遇记","西游记","仙剑奇侠传online","小小龙骑士",
		"修真界","夏日甜心","校花的贴身高手","仙君修真","轩辕修仙传","寻龙剑","侠客行",
		"小小大眼萌","西游纪","炫舞么么哒","西游之紫霞仙子","星际要塞","星际火线","星之轨迹",
		"小仙看招","仙武","心动庄园2","星魂之刃","修仙挂机","玄天神魔录","新三国OL",
		"修罗武神","血饮屠龙","修仙物语","雪鹰领主","仙战灵域","西游征途","虚空物语",
		"X战西游","新世纪福音战士OL","血爆挂机","仙灵江湖","仙剑奇侠传3D回合","仙境传奇","西游降魔记",
		"仙域OL","寻仙记","西游魔神传","羞羞的魔女","仙灵后裔","西游美人传","心跳战姬",
		"玄女传说","仙逆世界","仙灵的后裔","笑谈三国","仙辰变","西游伏妖篇","星域帝尊",
		"新西游记OL","仙缘幻剑","仙缘传说","小小无双","新世界","修仙奇缘","心之城堡",
		"咸蛋超人","新口袋妖怪手游","炫斗无双","仙魔幻境","星之后裔","小小军团","新傲视天地",
		"仙剑情缘","西游记OL之三打白骨精","星际联盟","轩辕剑之天之痕","小小三国","西游记之大圣归来","小熊料理",
		"仙王","小李飞刀","西游奇遇","新三国志挂机","血拼赢三张","小小三国OL","消灭星星官方正版",
		"希望之光","血战江湖3D","修仙OL","新仙剑奇谭","星河乱斗","星刃","小小西游OL",
		"西游啪啪啪","星球大战指挥官","西游Q传","新三国演义","小小屠龙","夏目的美丽日记","新嘻哈四重奏",
		"旋风保镖 ","星际总动员","星战少女","新三国争霸","轩辕争霸","血色纪元","消灭都市",
		"仙路争锋","星之契约","星河战神","仙魂","星战风暴","新英雄联盟","仙剑奇缘",
		"星际战场","炫斗地下城","仙战2","仙道","像三国","仙侠","新勇者前线",
		"小小魔兽","仙侠奇缘","仙剑神域","小三国","星座女神","新特种部队","星纪元",
		"仙战","仙剑幻境","新武林挂机","新金瓶梅OL","新神曲","小小破坏神","血色挂机",
		"校花的贴身高手3D","小小帝国","仙魔决","雄霸天地","X战娘","血饮天下","新苍穹之剑",
		"仙国志","仙变2","仙变","笑傲江湖3D","御剑情缘","英雄团","有杀气童话",
		"一个人的江湖 ","永恒","妖精的尾巴3D","永恒星语","御龙三国志","御龙在天","云中歌",
		"樱花三国","英雄万岁","遇剑修仙","御剑奇缘","御剑凌仙","英雄枪战","游梦三国",
		"永恒传奇","一剑屠龙","英雄与冒险","月光之城","英雄契约2","英雄战歌","一起来跳舞",
		"一拳少年","月影传说","永恒岛","妖神传说","英雄来挂机","御剑青云传","永恒仙域",
		"娱乐全明星","英灵召唤师","炎之轨迹","阴阳西游","勇者大作战","银河舰队","勇者打不死",
		"一起来飞车","异界大主宰","异族","伊洛纳","御史大冒险","源计划","音律进化",
		"妖灵富翁","御剑青云","英雄计划","英魂之刃","一血敢死队","英灵幻想","英雄归来",
		"一剑遮天","音速少女队","胭脂","勇敢者西游","妖怪百姬","异次元战姬","妖萌战姬",
		"御天下","元气战姬学院","妖来也","永恒边境","一刀满级","妖姬决","御龙英雄",
		"约会大作战","妖神：山海经传说","妖尾魔导士","英雄浪起来","叶罗丽","妖姬三国","悠悠恋物语",
		"英雄无敌之魔卡联盟","御女宝鉴","妖刀传说","妖刀少女异闻录","有妖气的尾巴","永恒文明","永恒之歌",
		"英雄战纪OL","英雄本色","妖姬与少年","药丸三国","一剑飞仙","一拳超人","游戏王联盟",
		"妖怪别跑","英雄爱三国","英雄泰坦国际版","英雄之刃","亚特兰蒂斯","御剑仙境","元素王座online",
		"一剑天下","英雄守卫战","英雄冲冲冲","约吗大宝剑","叶问3","永夜之帝国双璧","浴血长空",
		"勇者斗恶魔","有妖气尾巴","英雄要塞","英雄觉醒","银时之魂","英雄兵团","英雄无敌",
		"永恒幻想","永夜君王","遗落战境","永恒奇迹","远古传说","云中歌3D","英雄与迷宫",
		"英雄契约","英雄无间道","御龙无双","御龙三国","英雄别闹","永恒之源","英雄杀",
		"有侠气","永恒战士4","一骑当千","妖精的尾巴","倚天","妖玉奇谭","妖怪哪里跑",
		"一起闯三国","一剑灭天","英雄之战","一路向西","一刀流","英雄战魂","自由之战",
		"征途手游","装甲少女","战龙之刃","主公莫慌","战斗吧剑灵","造梦西游OL","最佳阵容",
		"战舰少女R","甄嬛传","中超风云","斩魂","战场双马尾","战地风暴","作妖计",
		"指尖刀塔","战舞幻想曲","战痕","择天传","战天纪","朕的传奇","斩幻想",
		"战舰联盟","众神风云","主宰无双热血版","最终零式战姬","择天记之仙界穿越","斩妖录","择天情缘",
		"主宰奇迹","泽天记","战舰帝国OL","战吕布","战地指挥官","造梦西游4","醉天下",
		"指挥官","中华英雄","战斗吧！精灵","主宰灵域","主宰无双","主公快跑","真三少女",
		"战国归来","主宰苍穹","战沙城","战姬前线","战娘少女","战舰黎明","朕的江山",
		"造梦西游外传","战域狂潮","智胜三国","造物法则","战神传奇","真江湖HD","战神SF",
		"装甲联盟","捉妖手机","战舰猎手","镇魂街","战争时刻","逐鹿沙城","诛仙封神",
		"紫青双剑","中州霸业","战国修罗魂","战机风暴","最终幻想：觉醒","主公无双","真霸王大陆",
		"战火与秩序","战斗吧蘑菇君","战之海贼","至尊OL","战将天下","战舰天下","战国之王",
		"诛神黄昏","最后一个三国志","最无双","再战沙城","战车世纪-重装机兵","战舰传奇OL","再无三国",
		"斩将封神","遮天3D","醉千秋","诛神传","战斗吧暴龙兽","主公驾到","掌上西游",
		"战神屠龙","至尊星魂","诸神之刃","战神之子","主宰世界","战舰大海战","真三国3.9D",
		"斩龙封神","斩魂诀","足球风云","祖玛再临","战国英雄","战龙城","真人街机捕鱼",
		"战歌联萌","植物大战僵尸3","至尊战纪","斩魔无双","真心英雄","捉妖传","终极酷跑",
		"至高征服","战歌","战机帝国","斩龙之刃","最强联盟","造化之门手游","自由战歌",
		"战车世纪","战神王座","足球大师2","纵横四海OL","战术大师","逐鹿天下","罪恶之城",
		"真萌神无双","智龙迷城","镇魂之战","最强弃少","真三国无双","最萌英雄","战神宝贝",
		"战争学院","逐梦江湖","中国小伙伴","战争风云","真三帝国","众神王座","众妖之怒",
		"这不是刀塔","诸神之战","战争之王","战姬天下","掌门传奇","战苍穹","正妹物语",
		"诸神传奇","其它游戏","真三国快打","真正男子汉","战舰帝国","足球大师","英雄之剑",
		"妖姬OL","王者之剑2","天尊","神之刃","热血群侠","七龙珠","秦时明月Q传",
		"炮妹","NBA英雄","龙与精灵","龙纹三国","口袋银魂","决战沙城","火影传说",
	}
	math.randomseed(tostring(os.time()):reverse():sub(1, 6));
	return table[math.random(1,#table)]
end

--判断当前界面是否是APP界面
function AppRunning(AppBID,t,tt)
	if tt then
		if isFrontApp(AppBID) ~=1 and os.difftime(os.time(),t)> tt then
			mSleep(4*1000)
			runApp(AppBID)
			return false
		else
			return true
		end
	else
		if isFrontApp(AppBID) ~=1 then
			mSleep(4*1000)
			runApp(AppBID)
			return false
		else
			return true
		end
	end
end

--无极VPN
function WJvpn(itype)
	runApp("com.juejin.VPN-IOS")
	local nowip = nil
	local newip = nil
	local start_time = os.time(); 
	local one_click = false;
	local fstime=os.time()
	while os.difftime(os.time(),fstime)< 50 do 
		---5c
		if itype == "0" then
			--登录
			if multiColor({{82,857,0xfbc32e},{220,898,0xfbc32e},{240,853,0xfbc32e},{422,859,0xfbc32e},{546,897,0xfbc32e},{117,239,0xffffff},{491,222,0xffffff},{536,280,0xffffff},{343,277,0xffffff}}) then
				click(x,y)
			end
			--开启vpn --更换ip
			if multiColor({{85,735,0x26ae62},{106,779,0x26ae62},{507,732,0x26ae62},{546,777,0x26ae62},{514,852,0xffffff},{529,892,0xffffff},{537,204,0xffffff},{116,163,0xffffff},{342,200,0xffffff}}) then
				nowip = getHostIp()
				mSleep(1000)
				click(x,y)
				mSleep(4*1000);
			end
		end

		--[[iphone 6]]
		if itype == "1" then
			--登录
			if multiColor({{83,932,0xfbc32e},{261,991,0xfbc32e},{447,936,0xfbc32e},{626,999,0xfbc32e},{629,943,0xfbc32e},{263,976,0xfbc32e},{130,256,0xffffff},{396,303,0xffffff},{641,306,0xffffff},{478,221,0xffffff}}) then
				click(x,y)
			end
			--开启vpn --更换ip
			if multiColor({{567,829,0x26ae62},{660,887,0x26ae62},{166,827,0x26ae62},{183,882,0x26ae62},{82,825,0x26ae62},{84,877,0x26ae62},{94,968,0xffffff},{616,989,0xffffff},{131,181,0xffffff},{644,227,0xffffff}}) then
				nowip = getHostIp()
				mSleep(1000)
				click(x,y)
				mSleep(4*1000);
			end
		end

		---判断VPN是否连接
		local flag = getVPNStatus()
		if flag.active and  nowip~=nil then
			for var= 1, 10 do
				newip = getHostIp()
				if newip~=nil then
					break
				end
			end

			if newip==nil then
				return false;
			end
			if newip ~= nowip then
				notifyMessage('上次ip:'..nowip..'\n'..'当前ip'..newip)
				mSleep(1000)
				return true
			else
				mSleep(5*1000)
			end 
		end
		notifyMessage(string.format("等待连接VPN:%s/30",os.difftime(os.time(), fstime)));		
		mSleep(1000)
	end
	notifyMessage('vpn连接超时')
	return false;
end

---微信实名
function weixin_sm(pwd)
	init(0)
	--appRunkill(PACKAGE_NAME) 
	ts("开始实名")
	local weixin_name,weixin_sfzhm=nil,nil
	local cstime1=os.time()
	local zjtx=0--输入判断
	local smpd=0--实名判断
	local smcs=0
	local cdkz=0
	while (true) do
		if os.difftime(os.time(),cstime1) > 100 then
			smcs=smcs+1
			if smcs>20 then  return false  end
			ts("微信实名超时次数:"..smcs) 
			appRunkill(PACKAGE_NAME,5*1000)
			mSleep(3*1000)
			cstime1=os.time()  zjtx=0  smpd=0 cdkz=0
		elseif multiColor({{74,1090,0x1aad19},{94,1084,0x1aad19},{85,1062,0x1aad19},{65,1066,0x1aad19},{67,1078,0x1aad19},{588,71,0xffffff},{588,84,0xffffff},{601,84,0xffffff},{580,84,0xffffff}},97) then
			ts("点我") click(559,1070)

		elseif multiColor({{571,1092,0x1aad19},{544,1093,0x1aad19},{559,1092,0x1aad19},{558,1078,0x1aad19},{558,1063,0x1aad19},{559,1072,0x1aad19},{325,91,0xffffff},{322,79,0xffffff}},98) then
			if MulcolorNoOffset(0x10aeff, "8|-1|0xffffff,8|-14|0x10aeff,7|13|0x10aeff,-3|12|0x10aeff,-28|14|0x10aeff,-28|-14|0x10aeff,-21|-13|0x10aeff,-21|7|0x10aeff",98,20,376,86,667) then
				ts("钱包") click(x,y,2000)
			end
			--elseif multiColor({{608,83,0xffffff},{605,83,0xffffff},{592,83,0xffffff},{587,83,0xffffff},{25,84,0xffffff},{38,70,0xffffff},{37,97,0xffffff},{331,71,0xffffff},{352,94,0xffffff},{291,96,0xffffff},98) and
		elseif multiColor({{608,83,0xffffff},{605,83,0xffffff},{592,83,0xffffff},{587,83,0xffffff},{25,84,0xffffff},{38,70,0xffffff},{37,97,0xffffff},{331,71,0xffffff},{352,94,0xffffff},{291,96,0xffffff}},98) and
		multiColor({{308,91,0xffffff},{290,72,0xffffff},{314,97,0xffffff},{6,145,0x686f78},{628,151,0x686f78}},98) then
			ts("菜单") click(589,84,1000)
			cdkz=cdkz+1
			if cdkz>=3 then
				cdkz=0
				appRunkill(PACKAGE_NAME,5*1000)
				mSleep(5*000)
			end
		elseif multiColor({{605,84,0x7f7f7f},{590,83,0x7f7f7f},{574,83,0x7f7f7f},{291,96,0x7f7f7f},{308,92,0x7f7f7f},{352,94,0x7f7f7f},{25,84,0x7f7f7f},{38,98,0x7f7f7f},{627,142,0x34373c},{11,143,0x34373c}},98) then	
			ts("支付管理") click(379,778)
		elseif  multiColor({{606,202,0xc7c7cc},{598,194,0xc7c7cc},{263,92,0xffffff},{290,77,0xffffff},{364,92,0xffffff},{328,95,0xffffff},{328,84,0xffffff},{310,73,0xffffff},{310,94,0xffffff},{263,73,0xffffff}},98) and  MulcolorNoOffset(0x000000, "0|9|0x000000,14|-10|0x000000,14|-2|0x000000,34|1|0x000000,34|11|0x000000",97,100,184,144,215) then

			if multiColor({{606,331,0xc7c7cc},{606,418,0xc7c7cc},{597,409,0xc7c7cc},{599,427,0xc7c7cc}},99) then
				ts('已经认证') smpd=smpd+1
			end
			if multiColor({{606,203,0xc7c7cc},{606,300,0xefeff4},{606,330,0xefeff4},{606,419,0xefeff4}},99) then
				ts('立即认证') click(x,y) smpd=0
			end

			if smpd>3 then
				return true,'实名完成'
			end
			--ts('认证')
		elseif  multiColor({{606,469,0xc7c7cc},{606,292,0xc7c7cc},{25,84,0xffffff},{38,98,0xffffff},{264,70,0xffffff},{298,85,0xffffff},{327,93,0xffffff},{342,79,0xffffff},{363,94,0xffffff},{599,87,0x0a0a0a}},98) then

			ts('大陆身份证') click(x,y) mSleep(2000)
		elseif multiColor({{44,377,0xa3dea3},{571,445,0xa3dea3},{49,444,0xa3dea3},{578,262,0x9cabcd},{564,255,0x9cabcd},{595,254,0x9cabcd},{274,75,0xffffff},{345,83,0xffffff},{392,81,0xffffff},{310,96,0xffffff}},98) then
			ts('银行卡') click(42,87)
		elseif multiColor({{50,509,0xa3dea3},{181,520,0xa3dea3},{416,510,0xa3dea3},{581,509,0xa3dea3},{265,87,0xffffff},{298,85,0xffffff},{327,93,0xffffff},{342,79,0xffffff},{364,94,0xffffff}}) and  multiColor({{627,112,0x444347},{17,116,0x454448}}) then
			weixin_name,weixin_sfzhm=wx_sfz()
			cstime1=os.time()
			if  weixin_name~=nil and weixin_sfzhm~=nil then
				mSleep(1000)
				inputText(weixin_name)  --黄国强----360702199006052850
				mSleep(1000)
				click(554,308)
				--click(589,333)
				mSleep(500)
				inputText(weixin_sfzhm)
				mSleep(1000)
				--if multiColor({{190,539,0x1aad19},{430,543,0x1aad19}}) then
				--click(x,y)	
				--end
				zjtx=0
			else
				ts('身份证获取失败')
			end
		elseif multiColor({{44,532,0x1aad19},{191,539,0x1aad19},{396,539,0x1aad19},{586,535,0x1aad19},{298,85,0xffffff},{342,79,0xffffff},{327,93,0xffffff},{363,94,0xffffff}},98) then
			--ts('身份证提交')
			if zjtx==0 then
				click(x,y)	
			else
				click(42,87)
			end
		elseif multiColor({{41,508,0x10680f},{25,509,0x10680f},{40,577,0x10680f},{596,507,0x10680f},{597,573,0x10680f},{613,543,0x10680f},{265,87,0x999999},{298,85,0x999999},{327,93,0x999999},{342,80,0x999999}}) then
			ts('身份证信息错误')
			if isColor_qymhif(0x007aff,98,288,628,344,652) then
				zjtx=1  click(x,y)
			end
		elseif  multiColor({{216,94,0xffffff},{232,93,0xffffff},{301,92,0xffffff},{328,76,0xffffff},{348,76,0xffffff},{348,95,0xffffff},{400,81,0xffffff}}) and MulcolorNoOffset(0x7493d4, "-8|5|0x7493d4,-8|79|0x7493d4,7|89|0x7493d4",97,16,363,41,462) and  multiColor({{573,413,0x000000},{562,553,0x1aad19}})==false then
			wx_input('591400')  
			mSleep(500) 
			--ts('输入密码')
			if multiColor({{581,546,0x1aad19},{50,550,0x1aad19},{491,517,0x1aad19},{574,412,0x000000}}) then
				ts('下一步') click(x,y) mSleep(3000) cstime1=os.time()-90
			end
		elseif multiColor({{342,522,0x1aad19},{39,521,0x1aad19},{168,573,0x1aad19},{422,524,0x1aad19},{599,579,0x1aad19},{575,412,0x000000},{472,414,0x000000},{369,411,0x000000},{216,94,0xffffff},{301,92,0xffffff},{327,76,0xffffff}}) then
			ts('下一步') click(x,y) mSleep(3000) cstime1=os.time()-90
		elseif multiColor({{25,84,0xffffff},{37,71,0xffffff},{262,86,0xffffff},{291,94,0xffffff},{328,95,0xffffff},{375,87,0xffffff},{375,76,0xffffff},{413,97,0xffffff},{572,83,0xffffff},{606,83,0xffffff}},99) and
		multiColor({{18,138,0xefeff4},{17,192,0xefeff4},{623,193,0xefeff4},{625,283,0xffffff},{50,366,0xffffff},{61,453,0xffffff},{625,477,0xefeff4},{13,527,0xefeff4},{9,552,0xffffff},{609,586,0xc8c8cd}},99) then
			ts('实名中心')
			return true
		elseif multiColor({{263,92,0x999999},{263,73,0x999999},{290,76,0x999999},{310,76,0x999999},{310,93,0x999999},{25,84,0x999999},{310,89,0x999999},{606,202,0x77777a}},98) and isColor_qymhif(0x007aff,98,286,614,355,667) then
			ts('使用业务多') click(x,y)
		elseif multiColor({{217,94,0x999999},{233,92,0x999999},{301,92,0x999999},{326,77,0x999999},{399,82,0x999999},{371,83,0x999999},{348,75,0x999999},{26,542,0x0f680f},{605,543,0x0f680f}}) then
			toast('超出设置')
			local cstime=os.time()
			cstime1=os.time()
			while (true) do
				if os.difftime(os.time(),cstime) > 40 then
					appRunkill(PACKAGE_NAME) 
					cstime1=os.time()  zjtx=0  smpd=0
					break
				elseif multiColor({{31,526,0x0f680f},{30,568,0x0f680f},{607,530,0x0f680f},{608,573,0x0f680f}}) and isColor_qymhif(0x007aff,98,289,653,336,716) then
					click(x,y)  toast('超出设置确定')
				elseif multiColor({{555,548,0x1aad19},{65,545,0x1aad19},{571,414,0x000000},{472,410,0x000000},{232,92,0xffffff},{301,92,0xffffff},{328,76,0xffffff},{400,82,0xffffff}}) then
					click(43,87)  toast('超出设置取消')
				elseif multiColor({{44,532,0x1aad19},{191,539,0x1aad19},{396,539,0x1aad19},{586,535,0x1aad19},{298,85,0xffffff},{342,79,0xffffff},{327,93,0xffffff},{363,94,0xffffff}},98) then
					click(43,87)  toast('提交取消')
				elseif  multiColor({{606,469,0xc7c7cc},{606,292,0xc7c7cc},{25,84,0xffffff},{38,98,0xffffff},{264,70,0xffffff},{298,85,0xffffff},{327,93,0xffffff},{342,79,0xffffff},{363,94,0xffffff},{599,87,0x0a0a0a}},98) then

					ts('大陆身份证')
					break
				end
			end	
		end
		AppRunning(PACKAGE_NAME)
	end
end

--nzt状态结果
function get_nzt_result()
	local result = nil;
	local f = io.popen("cat /private/var/mobile/NZTResult.plist")
	if f == nil then
		return nil
	end

	result = f:read("*all")
	f:close();

	if string.find(result, "<key>retCode</key>") == nil then
		return nil
	end

	local match_ret = string.match(result, "<string>%d</string>");
	if match_ret == nil then
		return nil
	end

	local ret_code = string.match(match_ret, "%d");
	if ret_code == nil then
		return nil;
	end

	return tonumber(ret_code);
end
--下一条
function NZTnextrecord()		
	--删除上一次命令执行结果，保证上一次命令结果已经被清除
	appRunkill('NZT')
	mSleep(2000)
	for var= 1, 10 do
		if not AppRunning('NZT') then
			appRunkill('NZT')
			mSleep(3000)
		else
			break
		end
	end
	if  AppRunning('NZT') then
		os.execute("rm -f /private/var/mobile/NZTResult.plist");
		local del_ok = false;
		local file = io.open("/private/var/mobile/NZTResult.plist")
		if file ~= nil and  file:close() then
			os.execute("rm -f /private/var/mobile/NZTResult.plist");
			del_ok = true;
		else
			del_ok = true;
		end

		--若删除失败，直接退出
		if del_ok ~= true then
			return false;
		end

		--下一条记录
		openURL("nzt://cmd/nextrecord");

		--读取结果,等待下一条记录超时时间 10s	
		for i=1,10 do						
			local ret_code = get_nzt_result()
			if ret_code == 2 then
				ts( string.format("等待下一条记录:%s/10", i))
			elseif ret_code == 1 then	
				return true
			end
			mSleep(1000);
		end
		notifyMessage(NZT_RESULT_MSG[ret_code]);
		return ret_code;
	end
end
--一键新机
function changeDevInfo(rm)		
	--删除上一次命令执行结果，保证上一次命令结果已经被清除
	appRunkill('NZT')
	mSleep(2000)
	for var= 1, 10 do
		if not AppRunning('NZT') then
			appRunkill('NZT')
			mSleep(3000)
		else
			break
		end
	end
	if  AppRunning('NZT') then
		if zh~='' and zh ~=nil then
			nztclel(zh)
		end

		os.execute("rm -f /private/var/mobile/NZTResult.plist");
		local del_ok = false;
		local file = io.open("/private/var/mobile/NZTResult.plist")
		if file ~= nil and  file:close() then
			os.execute("rm -f /private/var/mobile/NZTResult.plist");
			del_ok = true;
		else
			del_ok = true;
		end

		--清空NZT数据目录
		if rm then
			os.execute("rm -rf "..'/private/var/mobile/iGrimace')
		end

		--若删除失败，直接退出
		if del_ok ~= true then
			return false;
		end

		--使用命令进行一件新机
		openURL("nzt://cmd/newrecord");

		--读取结果,一键新机的执行超时时间 10s	
		for i=1,20 do						
			local ret_code = get_nzt_result()
			if ret_code == 2 then
				toast(string.format("等待一键新机:%s/20", i))
			elseif ret_code == 1 then	
				return true
			end
			mSleep(1000);
		end
		toast(NZT_RESULT_MSG[ret_code]);
		return ret_code;
	end
end
--nzt重命名
function nztclel(config)
	toast("备份重命名。。。。")
	local ts = require("ts")
	local servertime = nil
	local nzt_result_file = "/private/var/mobile/NZTResult.plist";

	--重命名当前数据，便于恢复。命令执行10次，等待执行结果
	local rename_ok = false;
	for i = 1, 10 do		
		if isFileExist(nzt_result_file) then
			--删除上一次的执行结果
			for j = 0, 10 do
				os.execute("rm -Rf "..nzt_result_file);				
				mSleep(1000);

				--已经删除成功，尽快退出
				if isFileExist(nzt_result_file) == false then
					break;
				end
			end

			if isFileExist(nzt_result_file) then
				toast("删除nzt上一次执行结果失败")
				return nil;
			end
		end

		--重命名后，等待一定的时间
		openURL("nzt://cmd/renamecurrentrecord?"..config);		
		mSleep(200);

		local f = io.popen("ls /private/var/mobile/iGrimace/")	
		if f ~= nil then
			ret = f:read('*all');
			f:close();	
		end

		--指令执行成功，并且目录中已经存在指定的目录
		local ret_code = get_nzt_result()
		if ret_code == 1 and string.find(ret, config) then
			rename_ok = true;
			break;
		end
		mSleep(1000);
	end

	--重命名失败
	if rename_ok ~= true then		
		toast("重命名失败")
		return nil
	end
end
-------------封装函数--------------
function notifyMessage(msg,t)
	if not t then t=1 end
	toast(msg,t)
end
--一、检测数组中是否包含某个值
function IsInTable(value, tbl)
	for k,v in ipairs(tbl) do
		if v == value then
			return true;
		end
	end
	return false;
end
--判断一个字符是否存在某个数组
--判断字符b,是否存在于数组list中
function in_array(b,list)
	if not list then
		return false 
	end 
	if list then
		for k, v in pairs(list) do
			if v.tableName ==b then
				return true
			end
		end
	end
end 
--验证码平台名称转换
function severname(name)
	if name=='快码' then 
		return 'kuaima'  
	elseif  name=='飞码' then 
		return 'feima'  
	elseif  name=='E码' then 
		return 'ema6'  
	elseif  name=='卓码' then 
		return 'zhuoma'  
	elseif  name=='Q码' then 
		return 'qma'  
	elseif  name=='海码' then 
		return 'haima'  
	elseif  name=='科技虫' then 
		return 'mapi'  
	elseif  name=='神话' then 
		return 'shenhua'  
	elseif  name=='纸牌屋' then 
		return 'zipaiwu'  
	elseif  name=='玉米' then 
		return 'yumi'  
	elseif  name=='尚一品' then 
		return 'shangyipin'  
	elseif  name=='爱乐赞' then 
		return 'ailezan' 
	end
end

--[[获取短信验证码类: 
	app: 			应用包名
	server: 		kuaima/feima/shenhua/ema6/zhuoma/qma
	uid:   			验证码平台用户名
	pwd:   			验证码平台密码
	pid :   		项目ID
	province:		指定手机号归属地
	notProvince:	排除指定区域
	utoken:	        验证码平台需要的登录token
	phoneType:		验证码平台支持运营商过滤
	vno:			指定或排除虚拟运营商。不是所有的验证码平台都支持该选项
]]
function MobileCode(app, sever, uid, pwd, pid, province, notProvince, utoken, phoneType, vno,phone)
	local Tmp = {}
	Tmp.token = nil;
	Tmp.Mobile = nil;
	--海码平台登陆后返回一个UID 和 token
	Tmp.HaiMaUid = nil;

	--纸牌屋，使用msgid作为号码标识
	Tmp.MSGID = nil;

	--纸牌屋:获取登录令牌
	function ziPaiWuGetToken()				
		local data, code = myHttpGet(string.format('http://kama.quanhuini.com/Login?User=%s&Password=%s&Logintype=0', uid, pwd))
		if code ~= 200 then
			notifyMessage("纸牌屋登录错误:"..code)
		else
			if data == nil then
				notifyMessage("纸牌屋登录消息非法")
				return nil;
			end

			local token_index = string.find(data, "Token");
			if token_index == nil then
				notifyMessage("海码:"..data)
				return nil;
			end	

			--当成功返回时，token的位置和长度是固定的
			return string.sub(data, token_index + 8,  token_index + 39)					
		end
		return nil;
	end

	--纸牌屋:获取手机号
	function ziPaiWuGetMobileNum()				
		if Tmp.token == nil then
			Tmp.token = ziPaiWuGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("纸牌屋登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("纸牌屋登录,长度错误:"..string.len(Tmp.token));
			return nil;
		end

		notifyMessage("纸牌屋:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;

		--[[		
		GET方式调用实例：http://kama.quanhuini.com/GetPhoneNumber?Token=abe0a4e474705b4d6a1251cbf658c001&ItemId=3&Phone=&Operator=0&Developer=liangmingnan
		Token: 登录token
		ItemId: 项目代码
		Operator:运营商 [不填为 0] 0 [随机] 1 [移动] 2 [联通] 3 [电信]
		Phone: 指定号码
		]]
		if phoneType ~= nil then
			req = "http://kama.quanhuini.com/GetPhoneNumber?"..
			"Token="..Tmp.token.."&"..				  
			"ItemId="..pid.."&"..
			"Operator="..phoneType
		else
			req = "http://kama.quanhuini.com/GetPhoneNumber?"..
			"Token="..Tmp.token.."&"..				  
			"ItemId="..pid..
			"&Developer=yubinpk1"
		end
		data, code = myHttpGet(req);

		--正确返回：13112345678
		if code ~= 200 then
			notifyMessage("纸牌屋,获取手机号码失败:"..code)
			return nil
		end

		if data == nil then
			notifyMessage("纸牌屋,获取手机应答错误")
			return nil
		end

		--[[返回实例：{"code":0,"msg":"success","data":{"Phone":"1677141831","MSGID":"179759"}}]]		
		local phone_index = string.find(data, "Phone");
		local msgid_index = string.find(data, "MSGID");
		if phone_index == nil or msgid_index == nil then
			notifyMessage("纸牌屋:"..data)
			return nil;
		end

		--成功返回时，phone、msgid 的位置是固定的
		--Tmp.Mobile = string.sub(data,phone_index):match("%d+")
		--Tmp.MSGID = string.sub(data,msgid_index):match("%d+")
		Tmp.Mobile = string.match(data, 'Phone%p*(%d+)')
		Tmp.MSGID = string.match(data, 'MSGID%p*(%d+)')
		return Tmp.Mobile, Tmp.MSGID;
	end

	--纸牌屋:获取短信验证码
	function ziPaiWuGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil or Tmp.MSGID == nil then
			notifyMessage("纸牌屋:获取短信，手机号为空")
			return nil;
		end

		local req = "http://kama.quanhuini.com/GetMessage?"..
		"Token="..Tmp.token.."&"..
		"MSGID="..Tmp.MSGID
		local data, code = myHttpGet(req);		
		if code ~= 200 then
			notifyMessage("纸牌屋,获取号码失败:"..code)
			return nil;
		end

		--发送号码|验证码
		if data == nil then
			notifyMessage("纸牌屋,获取验证码应答错误")
			return nil;
		end		

		--[[{"code":0,"msg":"success","data":"WeChat verification code (2926) is only used to change linking. Forwarding the code to others may compromise your account."}]]		
		local phone_index = string.find(data, "code");
		local msgid_index = string.find(data, "msg");
		if phone_index == nil or msgid_index == nil then
			notifyMessage("纸牌屋,获取验证码失败:"..data)
			return nil
		end

		--消息获取成功时候，格式是固定的。关键字符的位置也是固定的
		local tab = Split(data, ",", true)	
		if(#tab ~= 3) then
			notifyMessage("纸牌屋,验证码消息非法:"..data)
			return nil
		end

		--得到各字段的值，便于调试
		local code = string.sub(tab[1], 9);
		local msg = string.sub(tab[2], 7);
		local vcode = string.sub(tab[3], 8);

		--仅返回短信内容。短信内容包含引号，解析时，需要自行过滤
		return vcode;
	end

	--纸牌屋:加黑号码
	function ziPaiWuAddIgnoreList(remark)
		if Tmp.Mobile ~= nil or Tmp.MSGID == nil then
			return
		end

		--[[http://kama.quanhuini.com/AddBlackPhone?Token=7bc1f5ad026f12e4cc87ac9db60642b6&MSGID=55]]			
		local req = "http://kama.quanhuini.com/AddBlackPhone?"..
		"Token="..Tmp.token.."&"..
		"MSGID="..Tmp.MSGID
		local data, code = myHttpGet(req);		

		--公司网站加黑
	end

	--[[简单校验消息合法性]]
	function haiMaRespToJson(json)
		if string.find(json, "{\"Uid\"") == nil then
			return nil
		end

		local sub_json = string.sub(json, 2, string.len(json) - 1);

		local tab = Split(sub_json, ",");
		local haima_uid = string.sub(tab[1], 7, string.len(tab[1]))
		local haima_token = string.sub(tab[2], 10, string.len(tab[2]) - 1)		
		return haima_uid, haima_token;
	end

	--海码:获取登录令牌
	function haiMaGetToken()				
		local data, code = myHttpGet(string.format('http://www.haima668.com:8008/ActionApi/loginIn?uid=%s&pwd=%s', uid, pwd))
		if code ~= 200 then
			notifyMessage("海码登录错误:"..code)
		else
			if data == nil then
				notifyMessage("海码登录消息非法")
				return nil;
			end

			if string.find(data, "{\"Uid\"") == nil then
				notifyMessage("海码:"..data)
				return nil;
			end

			return haiMaRespToJson(data);			
		end
		return nil;
	end

	--海码:获取手机号
	function haiMaGetMobileNum()				
		if Tmp.token == nil or Tmp.HaiMaUid == nil then
			Tmp.HaiMaUid, Tmp.token = haiMaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("海码登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("海码登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("海码:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;

		--[[
		type：运营商类型(1:移动,2:联通,3:电信-不传默认随机，需要请附带)
		province:地区(归属地默认随机，需要请附加，地区注意要url中文编码，
			比如传入广东就是province=%e5%b9%bf%e4%b8%9c]]
		if province ~= nil and phoneType ~= nil then
			req = "http://www.haima668.com:8008/ActionApi/getMobilenum?"..
			"token="..Tmp.token.."&"..
			"uid="..Tmp.HaiMaUid.."&"..
			"pid="..pid.."&"..
			"province="..province.."&"..
			"type="..phoneType
		end

		if province == nil and phoneType ~= nil then			
			req = "http://www.haima668.com:8008/ActionApi/getMobilenum?"..
			"token="..Tmp.token.."&"..
			"uid="..Tmp.HaiMaUid.."&"..
			"pid="..pid.."&"..						
			"type="..phoneType			
		end

		if province ~= nil and phoneType == nil then			
			req = "http://www.haima668.com:8008/ActionApi/getMobilenum?"..
			"token="..Tmp.token.."&"..
			"uid="..Tmp.HaiMaUid.."&"..
			"pid="..pid.."&"..
			"province="..province			
		end

		if province == nil and phoneType == nil then			
			req = "http://www.haima668.com:8008/ActionApi/getMobilenum?"..
			"token="..Tmp.token.."&"..
			"uid="..Tmp.HaiMaUid.."&"..
			"pid="..pid			
		end		
		data, code = myHttpGet(req);

		--正确返回：13112345678
		if code ~= 200 then
			notifyMessage("海码,获取手机号码失败:"..code)
			return nil
		end

		if data == nil then
			notifyMessage("海码,获取手机应答错误")
			return nil
		end

		local haima_num = tonumber(data);
		Tmp.Mobile = haima_num;
		if haima_num == nil then
			notifyMessage("海码:"..data)
			return nil;
		end

		--return haima_num;
		return Tmp.Mobile;
	end

	--海码:获取短信验证码
	function haiMaGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("海码:获取短信，手机号为空")
			return nil;
		end

		local req = "http://www.haima668.com:8008/ActionApi/getVcodeAndReleaseMobile?"..
		"token="..Tmp.token.."&"..
		"mobile="..Tmp.Mobile.."&"..
		"uid="..Tmp.HaiMaUid.."&"..
		"pid="..pid
		local data, code = myHttpGet(req);		
		if code ~= 200 then
			notifyMessage("海码,获取号码失败:"..code)
			return nil;
		end

		--发送号码|验证码
		if data == nil then
			notifyMessage("海码,获取验证码应答错误")
			return nil;
		end		

		local index = string.find(data, Tmp.Mobile);
		if index == nil then
			notifyMessage("海码:"..data);
			return nil;				
		end

		index = string.sub(data, string.len(Tmp.Mobile) + 2, string.len(data))		
		--return string.sub(data, index, string.len(data))
		return index;
	end

	--海码:加黑号码
	function haiMaAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			return
		end

		local req = "http://www.haima668.com:8008/ActionApi/addIgnoreList?"..
		"token="..Tmp.token.."&"..
		"mobile="..Tmp.Mobile.."&"..
		"uid="..Tmp.HaiMaUid.."&"..
		"pid="..pid
		local data, code = myHttpGet(req);		

		--公司网站加黑
	end

	--快码:获取登录令牌
	function kuaiMaGetToken()				
		if utoken == nil then
			notifyMessage("快码登录参数错误")
		end
		--登录token&账户余额&最大登录客户端个数&最多获取号码数&单个客户端最多获取号码数&折扣
		local data, code = myHttpGet(string.format('http://www.kuaima9.com:7002/Api/userLogin?Code=Utf8&uName=%s&pWord=%s&Developer=%s', uid, pwd, utoken))			
		if code ~= 200 then
			notifyMessage("快码登录错误:"..code)
		else
			if data ~= nil then					
				if string.find(data, 'False') ~= nil then
					notifyMessage(data);				
				else
					local index = string.find(data, '&') - string.len('&');
					local token = string.sub(data, 0, index)
					return token;
				end
			end	
		end
		return nil;
	end

	--快码:获取手机号
	function kuaiMaGetMobileNum()				
		if Tmp.token == nil then
			Tmp.token = kuaiMaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("快码登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("快码登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("快码:发送请求...")		
		local data = nil;
		local code = nil;
		if province ~= nil then
			data, code = myHttpGet(string.format('http://www.kuaima9.com:7002/Api/userGetPhone?Code=Utf8&token=%s&ItemId=%s&Area=%s', Tmp.token, pid, province))
		else
			data, code = myHttpGet(string.format('http://www.kuaima9.com:7002/Api/userGetPhone?Code=Utf8&token=%s&ItemId=%s', Tmp.token, pid))
		end

		--正确返回：13112345678;13698763743;13928370932;
		if code ~= 200 then
			notifyMessage("快码,获取手机号码失败:"..code)
		else
			if data ~= nil then
				if string.find(data, 'False') ~= nil then
					notifyMessage(data);				
				else	
					if string.len(data) == 11 then
						Tmp.Mobile = data;
						notifyMessage("快码:"..data);
						return Tmp.Mobile	
					else
						notifyMessage("快码,手机号长度错误:"..data);
					end						
				end
			end
		end
		notifyMessage("快码:获取手机号码失败...")
		return nil;		
	end

	--快码:获取短信验证码
	function kuaiMaGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("kuaiMa:获取短信，手机号为空")
			return nil;
		end
		while(true)do
			notifyMessage("kuaiMa:send req not finish");		
			mSleep(1000);
		end

		req = string.format('http://www.kuaima9.com:7002/Api/userGetMessage?Code=Utf8&token=%s', Tmp.token)				
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("快码,获取号码失败:"..code)
			return nil;
		end
		return data;		
	end

	--快码:加黑号码
	function kuaiMaAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			--itemId-phone,phone,phone;
			req = myHttpGet(string.format('http://www.kuaima9.com:7002/Api/userAddBlack?Code=Utf8&token=%s&phoneList=%s-%s', Tmp.token, pid, Tmp.Mobile))		
			myHttpGet(req);	
		end
	end

	--飞码:获取登录令牌
	function feiMaGetToken()		
		--成功返回：token(下面所有方法都要用的令牌)&账户余额&最大登录客户端个数&最多获取号码数&单个客户端最多获取号码数&折扣
		local req = "http://xapi.yika66.com/User/login?"..
		"uName="..uid.."&"..
		"pWord="..pwd.."&"..
		"code=utf8".."&"..
		"VER=99";					
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("飞码,登录失败:"..code)
			return nil;			
		end

		if data ~= nil then					
			if string.find(data, 'False') ~= nil then
				notifyMessage(data);				
			else
				--JA579AFd85mp28p7pXMVvDWS5hVN573031&514.416&500&1000&500&0.9&0.386
				if string.find(data, '&') ~= nil and string.len(data) > 34 then
					local index = string.find(data, '&') - string.len('&');
					local token = string.sub(data, 0, index)
					return token;
				end
			end
		end				
		return nil;
	end

	--飞码:获取手机号
	function feiMaGetMobileNum()
		if Tmp.token == nil then
			Tmp.token = feiMaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("飞码登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("飞码登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("飞码:发送请求...")		
		local data = nil;
		local code = nil;

		if province ~= nil and phoneType ~= nil then					
			local req = "http://xapi.yika66.com/User/getPhone?"..
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"Area="..province.."&"..
			"PhoneType="..phoneType.."&"..
			"code=utf8"
			data, code = myHttpGet(req);
		end

		if province == nil and phoneType ~= nil then			
			local req = "http://xapi.yika66.com/User/getPhone?"..	
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"PhoneType="..phoneType.."&"..
			"code=utf8"
			data, code = myHttpGet(req);
		end

		if province ~= nil and phoneType == nil then			
			local req = "http://xapi.yika66.com/User/getPhone?"..	
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"Area="..province.."&"..
			"code=utf8"
			data, code = myHttpGet(req);
		end

		if province == nil and phoneType == nil then			
			local req = "http://xapi.yika66.com/User/getPhone?"..		
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"code=utf8"
			data, code = myHttpGet(req);
		end

		if code ~= 200 then
			notifyMessage("飞码,获取号码失败:"..code)
			return nil;			
		end

		--正确返回：13112345678;13698763743;13928370932;
		if data ~= nil then
			if string.len(data) == 12 then		
				Tmp.Mobile = string.sub(data, 0, 11);
				notifyMessage("飞码:"..Tmp.Mobile);
				return Tmp.Mobile	
			else
				notifyMessage("飞码:"..data);
			end
		else
			notifyMessage("飞码,获取手机号为空");
		end		
		return nil;
	end

	--飞码:获取短信验证码
	function feiMaGetVcodeAndReleaseMobile()				
		if Tmp.Mobile == nil then
			notifyMessage("飞码:获取短信，手机号为空")
			return nil;
		end

		--http://xapi.yika66.com/User/getMessage?token=登陆token&Phone=13555555555&code=utf8
		notifyMessage("飞码:send req");		
		local req = "http://xapi.yika66.com/User/getMessage?"..										
		"token="..Tmp.token.."&"..
		"Phone="..Tmp.Mobile.."&"..
		"code=utf8"
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("飞码,获取短信失败:"..code)
			return nil;			
		end		
		return data;
	end

	--飞码:加黑号码
	function feiMaAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then			
			--itemId-phone,phone,phone;
			req = myHttpGet(string.format('http://xapi.yika66.com/User/addBlack?code=utf8&token=%s&phoneList=%s-%s', Tmp.token, pid, Tmp.Mobile))		
			myHttpGet(req);	
		end
	end

	--神话:获取登录令牌
	function shenHuaGetToken()
		--成功返回：token(下面所有方法都要用的令牌)&账户余额&最大登录客户端个数&最多获取号码数&单个客户端最多获取号码数&折扣		
		local req = "http://api.shjmpt.com:9002/pubApi/uLogin?"..
		"uName="..uid.."&"..
		"pWord="..pwd.."&"..				
		'Developer=4DO0STtvoX6ErCX4i4%2bdHQ%3d%3d'
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("神话, 登录失败:"..code)
			return nil;			
		end	

		if data ~= nil then					
			if string.find(data, 'False') ~= nil then
				notifyMessage(data);				
			else
				--JA579AFd85mp28p7pXMVvDWS5hVN573031&514.416&500&1000&500&0.9&0.386
				if string.find(data, '&') ~= nil and string.len(data) > 34 then
					local index = string.find(data, '&') - string.len('&');
					local token = string.sub(data, 0, index)
					return token;
				end
			end
		end				
		return nil;
	end

	--神话:获取手机号
	function shenHuaGetMobileNum()
		if Tmp.token == nil then
			Tmp.token = shenHuaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("神话登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("神话登录,长度错误:"..string.len(Tmp.token));
		end

		local req = nil;		
		--GET /pubApi/GetPhone?token=HN8HXTvLlapqfVIihEA70J5Fk3BKFL1660&ItemId=10015&Count=1&Area=%E4%B8%8D%E9%99%90&PhoneType=0&Phone= HTTP/1.1
		if province ~= nil and phoneType ~= nil then					
			req = "http://api.shjmpt.com:9002/pubApi/GetPhone?"..						
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"Area="..encodeURI(province).."&"..
			"PhoneType="..phoneType.."&"..
			"VER=3&Code=UTF8"
		end

		if province == nil and phoneType ~= nil then			
			req = "http://api.shjmpt.com:9002/pubApi/GetPhone?"..						
			"ItemId="..pid.."&"..
			"token="..Tmp.token.."&"..					
			"PhoneType="..phoneType.."&"..
			"Code=UTF8"			
		end

		if province ~= nil and phoneType == nil then			
			req = "http://api.shjmpt.com:9002/pubApi/GetPhone?"..						
			"ItemId="..pid.."&"..
			"token="..Tmp.token.."&"..
			"Area="..encodeURI(province).."&"..					
			"Code=UTF8"
		end

		if province == nil and phoneType == nil then			
			req = "http://api.shjmpt.com:9002/pubApi/GetPhone?"..						
			"ItemId="..pid.."&"..
			"token="..Tmp.token.."&"..					
			"Code=UTF8"			
		end

		notifyMessage("神话:准备请求号码")				
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("神话, 获取手机号错误:"..code)
			return nil;					
		end	

		--正确返回：13112345678;13698763743;13928370932;
		if data ~= nil then
			if string.len(data) == 12 then		
				Tmp.Mobile = string.sub(data, 0, 11);
				notifyMessage("神话:"..Tmp.Mobile);
				return Tmp.Mobile	
			else
				--神话Bug，重新登录
				notifyMessage("神话,手机号长度错误:"..data);	
			end
		else
			notifyMessage("神话,获取手机号为空");
		end		
		return nil;
	end

	--神话:获取短信验证码
	function shenHuaGetVcodeAndReleaseMobile()				
		if Tmp.Mobile == nil then
			notifyMessage("神话:获取短信，手机号为空")
			return nil;
		end

		--token=登陆token
		notifyMessage("神话:send req");		
		local req = "http://api.shjmpt.com:9002/pubApi/GMessage?"..
		"token="..Tmp.token.."&"..
		"ItemId="..pid.."&"..
		"Phone="..Tmp.Mobile;
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("神话, 获取短信验证码错误:"..code)
			return nil;			
		end

		if data ~= nil and pid ~= nil then
			data = string.sub(data,18 + string.len(pid),string.len(data))
		end
		return data;
	end

	--神话:加黑号码
	function shenHuaAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then					
			--http://www.shjmpt.com:9002/pubApi/ReleasePhone?token=登陆token&phoneList=phone-itemId;phone-itemId;
			local req = "http://api.shjmpt.com:9002/pubApi/ReleasePhone?"..										
			"token="..Tmp.token.."&"..										
			string.format("phoneList=%s-&s&", pid, Tmp.Mobile)..				
			"Code=UTF8"
			myHttpGet(req)
		end
	end

	--E码6:获取登录令牌
	function ema6GetToken()
		--成功返回：token(下面所有方法都要用的令牌)&账户余额&最大登录客户端个数&最多获取号码数&单个客户端最多获取号码数&折扣
		local req = "http://api.ema666.com/Api/userLogin?"..
		"uName="..uid.."&"..
		"pWord="..pwd.."&"..				
		"VER=3&Code=UTF8"
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("ema6 登录失败:"..code);				
			return nil;
		end

		if data ~= nil then					
			if string.find(data, 'False') ~= nil then
				notifyMessage(data);				
			else
				--LlJOU5iKTGK0Jp35d3jJV9jHOQHs612542&10&3&10&5&1&0
				if string.find(data, '&') ~= nil and string.len(data) > 34 then
					local index = string.find(data, '&') - string.len('&');
					local token = string.sub(data, 0, index)
					return token;
				end
			end
		end				
		return nil;
	end

	--E码6:获取手机号
	function ema6GetMobileNum()
		if Tmp.token == nil then
			Tmp.token = ema6GetToken();
		end

		if Tmp.token == nil then
			notifyMessage("ema6登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("ema6登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("ema6:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;

		if province ~= nil and phoneType ~= nil then					
			req = "http://api.ema666.com/Api/userGetPhone?"..						
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"Area="..province.."&"..
			"PhoneType="..phoneType.."&"..
			"Code=UTF8"			
		end

		if province == nil and phoneType ~= nil then			
			req = "http://api.ema666.com/Api/userGetPhone?"..						
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..				  
			"PhoneType="..phoneType.."&"..
			"Code=UTF8"			
		end

		if province ~= nil and phoneType == nil then			
			req = "http://api.ema666.com/Api/userGetPhone?"..						
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..
			"Area="..province.."&"..				  
			"Code=UTF8"			
		end

		if province == nil and phoneType == nil then			
			req = "http://api.ema666.com/Api/userGetPhone?"..						
			"token="..Tmp.token.."&"..
			"ItemId="..pid.."&"..				  
			"Code=UTF8"			
		end		

		data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("ema6 获取手机号错误"..code);
			return nil
		end

		--正确返回：13112345678;13698763743;13928370932;
		if data ~= nil then
			notifyMessage("ema6:"..data);
			if string.find(data, '过期') ~= nil then
				Tmp.token = nil
			else
				if string.len(data) == 12 then		
					Tmp.Mobile = string.sub(data, 1, 11);
					if string.len(Tmp.Mobile) == 11 then
						return Tmp.Mobile	
					else
						Tmp.Mobile = nil;
					end
				else
					--ema6Bug，重新登录
					notifyMessage("ema6,手机号长度错误:"..data);	
				end
			end
		else
			notifyMessage("ema6,获取手机号为空");
		end		
		return nil;
	end

	--E码6:获取短信验证码
	function ema6GetVcodeAndReleaseMobile()				
		if Tmp.Mobile == nil then
			notifyMessage("ema6:获取短信，手机号为空")
			return nil;
		end

		notifyMessage("ema6:send req");		 
		local req = "http://api.ema666.com/Api/userGetMessage?"..										
		"token="..Tmp.token.."&"..				
		"Code=UTF8"
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("ema6 获取短信错误:"..code)
			return
		end
		return data
	end

	--E码6:加黑号码
	function ema6AddIgnoreList(remark)
		if Tmp.Mobile ~= nil then								
			local req = "http://api.ema666.com/Api/userAddBlack?"..										
			"token="..Tmp.token.."&"..				
			string.format("phoneList=%s-&s&", pid, Tmp.Mobile)..				
			"Code=UTF8"
			myHttpGet(req)
		end
	end

	--卓码:获取登录令牌
	function zhuoMaGetToken()		
		--成功返回：用户名|token(下面所有方法都要用的令牌)
		local req = "http://api.jmyzm.com/http.do?"..
		"action=loginIn"..
		"&uid="..uid..
		"&pwd="..pwd
		local data,code = myHttpGet(req)

		if code ~= 200 then
			notifyMessage("卓码登录失败:"..code);				
			return
		end

		if data ~= nil then				
			local index = string.find(data, uid);
			if index == nil then
				notifyMessage(data);				
			else					
				index = index + string.len(uid) + 1;
				return string.sub(data, index, string.len(data))
			end
		end			
		return nil;
	end

	--卓码:获取手机号
	function zhuoMaGetMobileNum()
		if Tmp.token == nil then
			Tmp.token = zhuoMaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("卓码登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("卓码登录,长度错误:"..string.len(Tmp.token));
		end

		--GET方式加地区筛选调用实例：http://api.jmyzm.com/http.do?action=getMobilenum&pid=项目ID&uid=用户名&token=&mobile=&size=1&province=广东&operator=CMCC
		notifyMessage("卓码:发送请求...")		
		local data = nil;		
		local req = "http://api.jmyzm.com/http.do?action=getMobilenum"..						
		"&pid="..pid..
		"&uid="..uid..
		"&token="..Tmp.token..
		"&size=1"
		if province ~= nil and phoneType ~= nil then								
			req = string.format("%s&province=%s&operator=%s", req, province, phoneType)
		end

		if province == nil and phoneType ~= nil then			
			req = string.format("%s&operator=%s", req, phoneType)
		end

		if province ~= nil and phoneType == nil then			
			req = string.format("%s&province=%s", req, province)
		end

		if notProvince ~= nil then
			req = string.format("%s&notProvince=%s", req, notProvince)
		end

		if vno ~= nil then
			req = string.format("%s&vno=%s", req, vno)
		end

		data, code = myHttpGet(req)				
		if code ~= 200 then
			notifyMessage("卓码获取手机号错误:"..code);
			return
		end

		--.成功返回：手机号码|token注意：多个号码返回值：手机号;手机号;手机号| token
		if data ~= nil then
			local index = string.find(data, Tmp.token)
			if index ~= nil then
				Tmp.Mobile = string.sub(data, 0, index - 2);
				notifyMessage("卓码:"..Tmp.Mobile);
				return Tmp.Mobile	
			else
				notifyMessage("卓码,获取手机号为空");
			end
		end
		return nil;
	end

	--卓码:获取短信验证码
	function zhuoMaGetVcodeAndReleaseMobile()				
		if Tmp.Mobile == nil then
			notifyMessage("卓码:获取短信，手机号为空")
			return nil;
		end

		notifyMessage("卓码:send req");		
		local req = "http://api.jmyzm.com/http.do?action=getVcodeAndReleaseMobile"..										
		"&uid="..uid..				
		"&token="..Tmp.token..				
		"&mobile="..Tmp.Mobile
		local data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("卓码获取短信验证码错误："..code);		
			return nil
		end
		return data;
	end

	--zhuoma:加黑号码
	function zhuoMaAddIgnoreList(remark)		
		if Tmp.Mobile ~= nil then								
			local req = "http://api.jmyzm.com/http.do?"..	
			"action=addIgnoreList"..
			"&uid="..uid..
			"&token="..Tmp.token..
			"&mobiles="..Tmp.Mobile..
			"&pid="..pid
			myHttpGet(req)
		end
	end

	--Q码:获取登录令牌
	function qMaGetToken()						
		local data, code = myHttpGet(string.format('http://dx1.mtmo.com.cn:5002/qma/ValidateCodeSvl?action=loginIn&uid=%s&pwd=%s', uid, pwd))			
		if code ~= 200 then
			notifyMessage("Q码登录错误："..code);		
			return nil
		end

		if data ~= nil then							
			local index = string.find(data, uid);
			if index == nil then
				notifyMessage(data);				
			else					
				index = index + string.len(uid) + 1;
				return string.sub(data, index, string.len(data))
			end			
		end		
		return nil;
	end

	--Q码:获取手机号
	function qMaGetMobileNum()				
		if Tmp.token == nil then
			Tmp.token = qMaGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("Q码登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("Q码登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("Q码:发送请求...")
		if province == nil then
			province = ""
		end
		if phoneType == nil then
			phoneType = ""
		end

		local req = "http://dx1.mtmo.com.cn:5002/qma/ValidateCodeSvl?"..
		"action=getMobilenum"..
		"&uid="..uid..
		"&token="..Tmp.token..
		"&pid="..pid..						
		"&size=1"..						
		"&province="..province..
		"&operator="..phoneType
		local data, code = myHttpGet(req)		
		if code ~= 200 then
			notifyMessage("Q码获取手机号错误"..code)
			return nil;
		end

		--成功返回：手机号码|token注意：多个号码返回值：手机号;手机号;手机号| token
		if data ~= nil then
			local index = string.find(data, Tmp.token)
			if index ~= nil then
				Tmp.Mobile = string.sub(data, 0, index - 2);				
				return Tmp.Mobile	
			else
				notifyMessage("Q码,获取手机号为空");
			end
		else
			notifyMessage("Q码:获取手机号码失败...")
		end
		return nil;		
	end

	--Q码:获取短信验证码
	function qMaGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("qMa:获取短信，手机号为空")
			return nil;
		end

		local req = "http://dx1.mtmo.com.cn:5002/qma/ValidateCodeSvl?"..
		"action=getVcodeAndReleaseMobile"..
		"&uid="..uid..
		"&token="..Tmp.token..
		"&mobile="..Tmp.Mobile		
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("Q码:获取验证码错误"..code)
			return nil;
		end
		return data
	end

	--Q码:加黑号码
	function qMaAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			local req = "http://dx1.mtmo.com.cn:5002/qma/ValidateCodeSvl?"..
			"action=addIgnoreList"..
			"&uid="..uid..
			"&token="..Tmp.token..
			"&mobiles="..Tmp.Mobile..					
			"&pid="..pid					
			myHttpGet(req)			
		end
	end

	--爱乐赞:获取登录令牌
	function aiLeZanGetToken()						
		local data, code = myHttpGet(string.format('http://api.xingjk.cn/api/do.php?action=loginIn&name=%s&password=%s', uid, pwd))			
		if code ~= 200 then
			notifyMessage("爱乐赞:登录错误"..code)
			return nil;
		end

		if data ~= nil then							
			local key = "1|"
			local index = string.find(data, key);
			if index == nil then
				notifyMessage(data);				
			else					
				index = index + string.len(key)
				return string.sub(data, index, string.len(data))
			end		
		end		
		return nil;
	end

	--爱乐赞:获取手机号
	function aiLeZanGetMobileNum(phone)				
		if Tmp.token == nil then
			Tmp.token = aiLeZanGetToken();
		end

		if Tmp.token == nil then
			notifyMessage("爱乐赞登录失败。。");
			return Tmp.Mobile;
		end

		if string.len(Tmp.token) < 3 then
			notifyMessage("爱乐赞登录,长度错误:"..string.len(Tmp.token));
		end

		notifyMessage("爱乐赞:发送请求...")
--MobileCode(app, sever, uid, pwd, pid, province, notProvince, utoken, phoneType, vno)
--	app: 			应用包名
--	server: 		kuaima/feima/shenhua/ema6/zhuoma/qma
--	uid:   			验证码平台用户名
--	pwd:   			验证码平台密码
--	pid :   		项目ID
--	province:		指定手机号归属地
--	notProvince:	排除指定区域
--	utoken:	        验证码平台需要的登录token
--	phoneType:		验证码平台支持运营商过滤
--	vno:			指定或排除虚拟运营商。不是所有的验证码平台都支持该选项
		local data = nil;		
		local req = nil;	
		req="http://api.xingjk.cn/api/do.php?"..
		"action=getPhone"..
		"&sid="..pid..
		"&token="..Tmp.token
		if province ~= nil and phoneType ~= nil then								
			req = string.format("%s&locationMatching=include&locationLevel=c&location=%s&phoneType=%s", req, province, phoneType)
		end
		if province == nil and phoneType ~= nil then			
			req = string.format("%s&phoneType=%s", req, phoneType)
		end
		if province ~= nil and phoneType == nil then			
			req = string.format("%s&locationMatching=include&locationLevel=c&location=%s", req, province)
		end
		if notProvince ~= nil then
			req = string.format("%s&locationMatching=exclude&locationLevel=c&location=%s", req, notProvince)
		end
		if vno ~= nil then
			req = string.format("%s&vno=%s", req, vno)
		end
		if phone~=nil then
			req = string.format("%s&phone=%s", req, phone)
		end
		local data, code = myHttpGet(req)		
		if code ~= 200 then
			notifyMessage("爱乐赞:获取手机号错误"..code)
			return nil;
		end
		if data ~= nil then
			local key = "1|"
			local index = string.find(data, key);
			if index == nil then
				notifyMessage(data);				
			else					
				index = index + string.len(key);
				Tmp.Mobile = string.sub(data, index, string.len(data))
				return Tmp.Mobile;
			end		
		else
			notifyMessage("爱乐赞:获取手机号码失败...")
		end
		return nil;		
	end

	--爱乐赞:获取短信验证码
	function aiLeZanGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("爱乐赞:获取短信，手机号为空")
			return nil;
		end

		local req = "http://api.xingjk.cn/api/do.php?"..
		"action=getMessage"..
		"&sid="..pid..
		"&author=yubinpk1"..
		"&token="..Tmp.token..
		"&phone="..Tmp.Mobile
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("爱乐赞:获取短信错误"..code)
			return nil;
		end
		return data;
	end

	--爱乐赞:加黑号码
	function aiLeZanAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			local req = "http://api.xingjk.cn/api/do.php?"..
			"action=addBlacklist"..
			"&sid="..pid..
			"&token="..Tmp.token..
			"&phone="..Tmp.Mobile			
			myHttpGet(req)			
		end
	end

	--玉米:获取登录令牌
	function yumiGetToken()						
		local data, code = myHttpGet(string.format('http://api.jyzszp.com/Api/index/loginIn?uid=%s&pwd=%s', uid, pwd))			
		if code ~= 200 then
			notifyMessage("玉米:登录错误"..code)
			return nil;
		end
		--15033|15033-ixp|eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1
		if data~=nil then
			local key = "|"
			local index = string.find(data, key);
			if index==nil then
				notifyMessage("玉米:登录错误"..data)
				return nil	
			end
			local ret=strSplit(data,key)
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
		data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("玉米,获取手机号码失败:"..code)
			return nil
		end

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

		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("玉米:获取短信错误"..code)
			return nil;
		end
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

	--尚一品:用户登录 
	function shangyipinUserInfo()
		local data=nil
		local req =nil
		req='http://merchant.shangyipin.net/openapi.action?method=UserInfo&account='..uid..'&pwd='..pwd
		data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("尚一品,登陆失败:"..code)
			return nil
		end
		if data == nil then
			notifyMessage("尚一品,登陆错误")
			return nil
		end
		return string.match(data, 'score%p*(%d+)')
	end
	--尚一品:释放手机
	function shangyipinReleasePhone()
		if Mobile ~= nil then			
			httpGet('http://merchant.shangyipin.net/openapi.action?method=Release&account='..uid..'&pwd='..pwd..'&pId='..pid..'&pn='..Tmp.Mobile)			
		end
	end
	--尚一品:发送短信
	function shangyipinSendMsg()
		notifyMessage("尚一品:发送短信...")	
		if Tmp.Mobile == nil then
			notifyMessage("尚一品:发送短信，手机号为空")
			return nil;
		end
		local data = nil;
		local code = nil;
		local req = nil;
		req = 'http://merchant.shangyipin.net/openapi.action?method=SendMsg&account='..uid..'&pwd='..pwd..'&pId='..pid..'&pn='..Tmp.Mobile..'&sm='..SM..'&sn='..SN..'&dev=yubinpk1'		

		data, code = myHttpGet(req);
		if code ~= 200 then
			notifyMessage("尚一品,发送短信失败:"..code)
			return nil
		end

		if data == nil then
			notifyMessage("尚一品,发送短信应答错误")
			return nil
		end
		local msd=string.match(data, 'c%p*(%d+)')
		if msd~='1' then
			notifyMessage("尚一品:"..data)
			return nil;
		end
		return '短信发送成功';
	end
	--尚一品:获取手机号
	function shangyipinGetMobileNum()				
		notifyMessage("尚一品:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;
		req='http://merchant.shangyipin.net/openapi.action?method=GetPhone&account='..uid..'&pwd='..pwd..'&pId='..pid
		data, code = myHttpGet(req);

		if code ~= 200 then
			notifyMessage("尚一品,获取手机号码失败:"..code)
			return nil
		end

		if data == nil then
			notifyMessage("尚一品,获取手机应答错误")
			return nil
		end
		--[[返回实例：{"code":0,"msg":"success","data":{"Phone":"1677141831","MSGID":"179759"}}]]		
		local phone_index = string.find(data, "phones");
		if phone_index == nil  then
			notifyMessage("尚一品:"..data)
			return nil;
		end

		--成功返回时，phone、msgid 的位置是固定的
		--Tmp.Mobile = string.sub(data,phone_index):match("%d+")
		Tmp.Mobile = string.match(data, 'phones%p*(%d+)')
		return Tmp.Mobile;
	end
	--尚一品:获取验证码
	function shangyipinGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("尚一品:获取短信，手机号为空")
			return nil;
		end
		local req = 'http://merchant.shangyipin.net/openapi.action?method=GetCode&account='..uid..'&pwd='..pwd..'&pId='..pid..'&pn='..Tmp.Mobile..'&dev=yubinpk1'	
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("尚一品:获取短信错误"..code)
			return nil;
		end
		return data;
	end
	--尚一品:加黑手机
	function shangyipinAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			local req = 'http://merchant.shangyipin.net/openapi.action?method=AddBlack&account='..uid..'&pwd='..pwd..'&pId='..pid..'&pn='..Tmp.Mobile
			myHttpGet(req)			
		end
	end

	--科技虫:获取手机号
	function mapiGetMobileNum()				
		notifyMessage("科技虫:发送请求...")		
		local data = nil;
		local code = nil;
		local req = nil;
		req = string.format("http://mapi.aiputime.com/http.action?apiType=GetPhone&apiId=%s&apiSecret=%s&pId=%s",uid,pwd,pid)
		data, code = myHttpGet(req);

		if code ~= 200 then
			notifyMessage("科技虫,获取手机号码失败:"..code)
			return nil
		end

		if data == nil then
			notifyMessage("科技虫,获取手机应答错误")
			return nil
		end
		--[[返回实例：{"code":0,"msg":"success","data":{"Phone":"1677141831","MSGID":"179759"}}]]		
		local phone_index = string.find(data, "data");
		if phone_index == nil  then
			notifyMessage("科技虫:"..data)
			return nil;
		end

		--成功返回时，phone、msgid 的位置是固定的
		--Tmp.Mobile = string.sub(data,phone_index):match("%d+")
		Tmp.Mobile = string.match(data, 'data%p*(%d+)')
		return Tmp.Mobile;
	end
	--科技虫:获取短信
	function mapiGetVcodeAndReleaseMobile()		
		if Tmp.Mobile == nil then
			notifyMessage("科技虫:获取短信，手机号为空")
			return nil;
		end

		local req =string.format("http://mapi.aiputime.com/http.action?apiType=GetCode&apiId=%s&apiSecret=%s&pId=%s&pn=%s&dev=yuxuebinpk1",uid,pwd,pid,Tmp.Mobile)
		local data, code = myHttpGet(req)
		if code ~= 200 then
			notifyMessage("科技虫:获取短信错误"..code)
			return nil;
		end
		return data;
	end
	--科技虫:加黑号码
	function mapiAddIgnoreList(remark)
		if Tmp.Mobile ~= nil then
			local req =string.format("http://mapi.aiputime.com/http.action?apiType=AddBlack&apiId=%s&apiSecret=%s&pId=%s&pn=%s",uid,pwd,pid,Tmp.Mobile)	
			myHttpGet(req)			
		end
	end

	--获取手机号
	function Tmp.getMobileNum(phone)				
		notifyMessage(string.format("卡商:[%s]", sever));

		if Tmp.Mobile ~= nil then            
			if sever == "kuaima" then
				notifyMessage("快码，加黑号码")
				kuaiMaAddIgnoreList("get_next");
			end
			if sever == "feima" then
				notifyMessage("飞码，加黑号码")
				feiMaAddIgnoreList("get_next");
			end

			if sever == "shenhua" then
				notifyMessage("神话，加黑号码")
				shenHuaAddIgnoreList("get_next");
			end

			if sever == "ema6" then
				notifyMessage("ema6，加黑号码")
				ema6AddIgnoreList("get_next");
			end

			if sever == "zhuoma" then
				notifyMessage("卓码，加黑号码")
				zhuoMaAddIgnoreList("get_next");
			end

			if sever == "qma" then
				notifyMessage("Q码，加黑号码")
				qMaAddIgnoreList("get_next");
			end

			--爱乐赞
			if sever == "ailezan" then
				notifyMessage("爱乐赞，加黑号码")
				aiLeZanAddIgnoreList("get_next");
			end

			--海码
			if sever == "haima" then
				notifyMessage("海码，加黑号码")
				haiMaAddIgnoreList("get_next");
			end

			--纸牌屋
			if sever == "zipaiwu" then
				notifyMessage("纸牌屋，加黑号码")
				ziPaiWuAddIgnoreList("get_next");
			end
			--玉米 yumi 
			if sever == "yumi" then
				notifyMessage("玉米，加黑号码")
				yumiAddIgnoreList("get_next");
			end
			--尚一品 shangyipin
			if sever == "shangyipin" then
				notifyMessage("尚一品，加黑号码")
				shangyipinAddIgnoreList("get_next");
			end
			--科技虫 mapi
			if sever == "mapi" then
				notifyMessage("科技虫，加黑号码")
				mapiAddIgnoreList("get_next");
			end

			--复位手机号
			Tmp.Mobile = nil;
			Tmp.MSGID = nil;
		end

		--快码
		if sever == "kuaima" then
			notifyMessage("快码:获取手机号码...")
			return kuaiMaGetMobileNum();
		end		

		--飞码
		if sever == "feima" then
			notifyMessage("飞码:获取手机号码...")
			return feiMaGetMobileNum();
		end

		--神话
		if sever == "shenhua" then
			notifyMessage("神话:获取手机号码...")
			return shenHuaGetMobileNum();
		end

		--ema6
		if sever == "ema6" then
			notifyMessage("ema6:获取手机号码...")
			return ema6GetMobileNum();
		end

		--卓码
		if sever == "zhuoma" then
			notifyMessage("卓码:获取手机号码...")
			return zhuoMaGetMobileNum();
		end

		--Q码
		if sever == "qma" then
			notifyMessage("Q码:获取手机号码...")
			return qMaGetMobileNum();
		end

		--爱乐赞
		if sever == "ailezan" then
			notifyMessage("爱乐赞:获取手机号码...")
			return aiLeZanGetMobileNum(phone);
		end

		--海码
		if sever == "haima" then
			notifyMessage("海码:获取手机号码...")
			return haiMaGetMobileNum();
		end

		--纸牌屋
		if sever == "zipaiwu" then
			notifyMessage("纸牌屋:获取手机号码...")
			return ziPaiWuGetMobileNum();
		end
		--玉米 yumi 
		if sever == "yumi" then
			notifyMessage("玉米:获取手机号码...")
			return yumiWuGetMobileNum();
		end
		--尚一品 shangyipin
		if sever == "shangyipin" then
			notifyMessage("尚一品:获取手机号码...")
			return shangyipinGetMobileNum();
		end
		--科技虫 mapi
		if sever == "mapi" then
			notifyMessage("科技虫:获取手机号码...")
			return mapiGetMobileNum();
		end
	end

	--获取短信并释放号码
	function Tmp.getVcodeAndReleaseMobile()		
		--快码
		if sever == "kuaima" then
			notifyMessage("快码:接收验证码")
			return kuaiMaGetVcodeAndReleaseMobile();
		end

		--飞码
		if sever == "feima" then
			notifyMessage("飞码:接收验证码")
			return feiMaGetVcodeAndReleaseMobile();
		end

		--神话
		if sever == "shenhua" then
			notifyMessage("神话:接收验证码")
			return shenHuaGetVcodeAndReleaseMobile();
		end

		--ema6
		if sever == "ema6" then
			notifyMessage("ema6:接收验证码")
			return ema6GetVcodeAndReleaseMobile();
		end

		--卓码
		if sever == "zhuoma" then
			notifyMessage("卓码:接收验证码")
			return zhuoMaGetVcodeAndReleaseMobile();
		end

		--Q码
		if sever == "qma" then
			notifyMessage("Q码:接收验证码")
			return qMaGetVcodeAndReleaseMobile();
		end

		--爱乐赞
		if sever == "ailezan" then
			notifyMessage("爱乐赞:接收验证码")
			return aiLeZanGetVcodeAndReleaseMobile();
		end

		--海码
		if sever == "haima" then
			notifyMessage("海码:接收验证码")
			return haiMaGetVcodeAndReleaseMobile();
		end

		--纸牌屋
		if sever == "zipaiwu" then
			notifyMessage("纸牌屋:接收验证码")
			return ziPaiWuGetVcodeAndReleaseMobile();
		end
		--玉米 yumi
		if sever == "yumi" then
			notifyMessage("玉米:接收验证码")
			return yumiGetVcodeAndReleaseMobile();
		end
		--尚一品 shangyipin 科技虫 mapi
		if sever == "shangyipin" then
			notifyMessage("尚一品:接收验证码")
			return shangyipinGetVcodeAndReleaseMobile();
		end
		--科技虫 mapi
		if sever == "mapi" then
			notifyMessage("科技虫:接收验证码")
			return mapiGetVcodeAndReleaseMobile();
		end
	end	

	--加黑手机号
	function Tmp.addIgnoreList(remark)
		--快码
		if sever == "kuaima" then
			kuaiMaAddIgnoreList(remark);
		end

		--飞码
		if sever == "feima" then
			feiMaAddIgnoreList(remark);
		end

		--神话
		if sever == "shenhua" then
			shenHuaAddIgnoreList(remark);
		end

		--ema6
		if sever == "ema6" then
			ema6AddIgnoreList(remark);
		end

		--卓码
		if sever == "zhuoma" then
			zhuoMaAddIgnoreList(remark);
		end

		--Q码
		if sever == "qma" then
			qMaAddIgnoreList(remark);
		end

		--爱乐赞
		if sever == "ailezan" then
			aiLeZanAddIgnoreList(remark);
		end

		--海码
		if sever == "haima" then
			haiMaAddIgnoreList(remark);
		end

		--纸牌屋  
		if sever == "zipaiwu" then			
			ziPaiWuAddIgnoreList();
		end
		--玉米
		if sever == "yumi" then			
			yumiAddIgnoreList();
		end
		--尚一品
		if sever == "shangyipin" then			
			shangyipinAddIgnoreList();
		end
		--科技虫
		if sever == "mapi" then			
			mapiAddIgnoreList();
		end

		--复位手机号
		Tmp.Mobile = nil;
		Tmp.MSGID = nil;
	end

	--复位登陆
	function Tmp.reLogin(remark)
		Tmp.Mobile = nil;		
		Tmp.MSGID = nil;		
		Tmp.token = nil;
		Tmp.HaiMaUid = nil;
	end
	return Tmp;
end

--获取本地身份证号码
function wx_sfz()
	local fstime=os.time()
	while os.difftime(os.time(),fstime)< 50 do 
		local Path='/private/var/mobile/Media/TouchSprite/log/身份证号码.txt'
		if isFileExist(Path) then
			local ms=Read_Del(Path) 
			if ms~='' and type(ms)=='string' then
				if string.len(ms)>=20 then
					if string.find(ms,'-') then
						local ret = strSplit(ms,'----')
						local sfz=ret[2] 
						local sfzxm=ret[1]
						if string.len(sfz)>=18 and sfzxm~="" then
							return sfzxm,sfz
						end
					end

				end
			end
		else
			ts(Path..'\n'..'文件不存在')
		end
	end
	return nil
end
--清除相册信息 清除通讯录 下载图片 下载通讯录
function load_user_data()
	--清空通讯录
	removeAllContactsFromAB();
	--清空相册	
	clearAllPhotos();

end

---加载群二维码
function wx_erweima(Path)
	clearAllPhotos();
	saveImageToAlbum(Path)
end

--验证码分割
function parasevCode(data)	
	if data ~= nil then
		local key = "验证码";	
		local _start = string.find(data, key);
		if _start ~= nil then
			ts(data,0.1)		
			_start = _start + string.len(key)
			local code = string.sub(data, _start, string.len(data));							
			return string.match(code,'%d+');
		end
	end
	return nil;	
end

--登陆微信
function weixin_dl()--6.5.12
	appRunkill(AppBID)
	local cstime1=os.time()
	local dlcs=0
	while (true) do
		if os.difftime(os.time(),cstime1) > 30 then
			dlcs=dlcs+1
			if smcs>=1 then  return false  end
			ts('登陆超时')
			changeDevInfo(1)
			appRunkill(AppBID,5*1000)
			cstime1=os.time()
		elseif multiColor({{64,1014,0xf8f8f8},{238,1014,0xf8f8f8},{65,1076,0xf8f8f8},{250,1082,0xf8f8f8},{361,1019,0x1aad19},{367,1053,0x1aad19},{576,1083,0x1aad19},{570,1015,0x1aad19},{396,1053,0x1aad19},{530,1049,0x1aad19}},98) then
			click(x,y)--登陆
		elseif multiColor({{69,711,0xa3dea3},{553,786,0xa3dea3},{544,707,0xa3dea3},{76,785,0xa3dea3},{50,84,0x000000},{574,83,0x000000},{107,216,0x000000},{283,228,0x000000},{67,233,0x000000},{393,803,0xf3f3f3}},98) then
			if isColor_qymhif(0x576b95,95,334,587,391,616) then
				click(x,y)--微信登陆
			end
		elseif multiColor({{67,710,0xa3dea3},{549,787,0xa3dea3},{70,782,0xa3dea3},{308,803,0xf3f3f3},{49,84,0x000000},{574,83,0x000000},{290,242,0x000000},{248,242,0x000000},{443,231,0x000000},{49,225,0x000000}},98) then
			mSleep(300)
			click(505,417)
			inputText(zh..'\n'..mm..'\n')
			mSleep(2000)
		elseif MulcolorNoOffset(0x000000, "0|11|0x000000,0|-8|0x000000,18|-8|0x000000,10|-8|0x000000,18|3|0x000000,10|3|0x000000",95,305,442,333,471) and multiColor({{67,1067,0x0f680f},{80,1083,0x0f680f},{93,1081,0x0f680f},{73,1073,0x0f680f},{70,1084,0x0f680f}}) and isColor_qymhif(0x007aff,97,438,673,470,712) then		
			click(x,y)--通讯匹配-否 
		elseif multiColor({{68,1090,0x1aad19},{62,1075,0x1aad19},{68,1067,0x1aad19},{78,1067,0x1aad19},{77,1079,0x1aad19},{91,1076,0x1aad19},{89,1087,0x1aad19},{72,1076,0x1aad19},{587,70,0xffffff},{587,81,0xffffff}},98) and  multiColor({{403,1072,0x7a7e83},{395,1080,0x7a7e83}}) then
			ts("登陆成功")	
		end
		AppRunning(AppBID)
	end
end
---切换VPN
function Getvpn()--vpn
	local lsip=getHostIp()()
	::WE::
	setVPNEnable(false)--关闭
	mSleep(4000)
	setVPNEnable(true)--开启
	mSleep(4000)
	flag = getVPNStatus()
	if flag.active then
		toast("打开状态"..flag.status,0.5)
		local xzip=getHostIp()()
		if xzip~=lsip then
			toast("上次ip:"..lsip.."\n".."当前ip:"..xzip,1)
			return true
		else
			toast("ip重复:"..xzip,1)
			goto WE
		end
	else
		mSleep(2000)
		goto WE
	end
end
---触摸转触动找色
function table3(t)--
	local data = '"'
	for i=1,#t,3 do
		if i==1 then
			data1=string.format("0x%06x",table.unpack(t,i))
		else
			if i~=#t then
				data=data..string.format("%d|%d|0x%06x", table.unpack(t,i-2), table.unpack(t,i-1), table.unpack(t,i))..","
			else
				data=data..string.format("%d|%d|0x%06x", table.unpack(t,i-2), table.unpack(t,i-1), table.unpack(t,i))..'"'
			end
		end
	end
	return data1,data
end

---触摸转触动找色
function MulcolorOffsettabTostr(t,sim,x1,y1,x2,y2)
	local function tabTostr(t)
		local _head = t[1]
		--sysLog(string.format("0x".."%x",_head))
		--sysLog(_head)
		--table.remove(t,1)

		local str=""	
		--local length = #t
		for i=2,#t do
			if i %3 == 1 then	
				if i==#t then
					str = str..string.format("0x%06x",t[i])
				else
					str = str..string.format("0x%06x,",t[i])
				end
			else
				str = str..string.format("%d".."|",t[i])
			end
		end
		--sysLog(str)
		return str
	end
	if t == nil then
		return false
	else
		keepScreen(true)
		--sysLog(x1..','..y1..','..x2..','..y2)
		local color = t[1]
		local tab = tabTostr(t)
		x,y = findMultiColorInRegionFuzzy(color,tab,sim,x1-5,y1-5,x2-5,y2-5)
		if x ~= -1 and y ~= -1 then
			sysLog(string.format("0x".."%x",color))
			--sysLog(color)
			keepScreen(false)
			return true
		else
			keepScreen(false)
			return false
		end	
	end
end

--切换飞行模式
function Getmode()--打开飞行模式
	local fstime=os.time()
	while os.difftime(os.time(),fstime)< 50 do 
		local lsip=iplog()
		::WE::
		setAirplaneMode(true);  --打开飞行模式
		mSleep(4000)
		setAirplaneMode(false); --关闭飞行模式
		mSleep(3000)
		::WS::
		local xzip=iplog()
		if xzip~='' or xzip~=nil then
			if xzip~=lsip then
				toast("上次ip:"..lsip.."\n".."当前ip:"..xzip,1)
				return true
			else
				toast("ip重复:"..xzip,1)
				goto WE
			end
		else
			setAirplaneMode(false); --关闭飞行模式
			mSleep(3000) goto WS
		end
	end
end

function UrlEn(str) --URL编码
	str = string.gsub(str, "([^%w%.%- ])", function(c) return string.format("%%%02X", string.byte(c)) end)
	return string.gsub(str, " ", "+")
end
function wx_input(zfmm)
	local function clic(x, y)
		touchDown(x, y);
		mSleep(50)
		touchUp(x, y);
		mSleep(400)
	end
	local v=string.len(zfmm)
	local s=0
	for i=1,v,1 do---------------
		s=s+1
		if string.sub(zfmm,s,s)== "0" then --第1个数
			clic(320,1079)
		elseif string.sub(zfmm,s,s)== "1" then --第1个数
			clic(104,746)
		elseif string.sub(zfmm,s,s)== "2" then --第1个数
			clic(319,749)
		elseif string.sub(zfmm,s,s)== "3" then --第1个数
			clic(543,748)
		elseif string.sub(zfmm,s,s)== "4" then --第1个数
			clic(100,854)
		elseif string.sub(zfmm,s,s)== "5" then --第1个数
			clic(321,854)
		elseif string.sub(zfmm,s,s)== "6" then --第1个数
			clic(537,856)
		elseif string.sub(zfmm,s,s)== "7" then --第1个数
			clic(101,972) 
		elseif string.sub(zfmm,s,s)== "8" then --第1个数
			clic(322,968)
		elseif string.sub(zfmm,s,s)== "9" then --第1个数
			clic(537,962)
		end
	end
end
--tlbb_yhyx()

function zhifubaoshoujhao()
	local phone_num=nil
	local husjcs=0
	local zfbst=0
	while true do
		if multiColor({{107,768,0xffffff},{58,596,0x108ee9},{74,651,0x108ee9},{551,607,0x108ee9},{586,664,0x108ee9},{260,414,0x3e3a39},{296,423,0x3e3a39},{381,454,0x3e3a39},{380,408,0x3e3a39},{334,332,0xffffff}}) then
			click(200,634)--登录
		elseif multiColor({{263,151,0x1f90e6},{374,158,0x1f90e6},{336,233,0xffffff},{317,173,0xffffff},{386,255,0xffffff},{282,268,0xffffff},{313,258,0xffffff},{27,84,0x108ee9}},98) then 
			--click(567,375)--18340947036-17056650514--18340903283--15724318373
			phone_num = vCode.getMobileNum(); 
			if phone_num ~= nil then
				ts(phone_num,'1')
				mSleep(500)
				click(567,375)
				inputText('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
				inputStr(phone_num)
				mSleep(500)
				click(532,466)
				mSleep(300)
				inputText('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
				inputStr(randomNumString(8))
				mSleep(200)
				click(371,584)
				mSleep(2000)
			end
			husjcs=husjcs+1
			if husjcs>20 then
				city=nil
			end
		elseif multiColor({{382,285,0x0a2e4a},{250,283,0x0a2e4a},{378,153,0x0a2e4a},{261,152,0x0a2e4a},{336,236,0x525252},{318,185,0x525252},{601,579,0x052e4b},{38,584,0x052e4b}},98) and MulcolorNoOffset1({0x000000,0,11,0x000000,8,11,0x000000,14,0,0x000000,23,2,0x000000,23,17,0x000000,14,12,0x000000,18,-4,0x000000,4,-4,0x000000},90,153,635,178,658) then
			ts('注册帐号:')
			if phone_num~=nil then
				return true,phone_num
			end
		elseif multiColor({{600,553,0x052e4b},{600,596,0x052e4b},{37,555,0x052e4b},{38,606,0x052e4b},{365,286,0x0a2e4a},{280,243,0x0a2e4a},{267,152,0x0a2e4a},{333,232,0x525252},{345,209,0x525252},{379,150,0x0a2e4a}},98) and isColor_qymhif(0x108ee9,98,317,668,366,712) then


			click(x,y)
			ts('非大陆手机号') 
			mSleep(1000) 
		elseif multiColor({{382,285,0x0a2e4a},{250,283,0x0a2e4a},{378,153,0x0a2e4a},{261,152,0x0a2e4a},{336,236,0x525252},{318,185,0x525252},{601,579,0x052e4b},{38,584,0x052e4b}},98) and MulcolorNoOffset1({0x000000,10,3,0x000000,18,13,0x000000,16,-3,0x000000,22,-10,0x000000,13,-14,0x000000,42,-13,0x000000,57,-13,0x000000,41,-3,0x000000,50,2,0x000000},90,144,636,203,665) then
			click(443,646) mSleep(1000) 
			ts('忘记密码')  
		elseif multiColor({{382,285,0x0a2e4a},{250,283,0x0a2e4a},{378,153,0x0a2e4a},{261,152,0x0a2e4a},{336,236,0x525252},{318,185,0x525252},{601,579,0x052e4b},{38,584,0x052e4b}},98) and MulcolorNoOffset1({0x000000,9,7,0x000000,9,20,0x000000,1,22,0x000000,1,11,0x000000,-13,0,0x000000,-13,12,0x000000,-13,21,0x000000,4,11,0x000000,3,22,0x000000},90,121,637,145,661) then
			click(443,646) mSleep(1000) 
			ts('扫描登录1') 

		elseif multiColor({{382,285,0x0a2e4a},{250,283,0x0a2e4a},{378,153,0x0a2e4a},{261,152,0x0a2e4a},{336,236,0x525252},{318,185,0x525252},{601,579,0x052e4b},{38,584,0x052e4b}},98) and MulcolorNoOffset(0x000000, "10|0|0x000000,11|8|0x000000,-5|8|0x000000,-26|1|0x000000,-25|-6|0x000000,-20|-9|0x000000,-35|-6|0x000000,-42|-4|0x000000,-40|-19|0x000000",90,154,635,209,664) then
			click(443,646) mSleep(1000) 
			ts('扫描登录2')
		elseif multiColor({{291,78,0xffffff},{301,73,0xffffff},{342,68,0xffffff},{363,94,0xffffff},{372,95,0xffffff},{379,95,0xffffff},{379,82,0xffffff},{379,71,0xffffff},{44,83,0x21273d},{595,84,0x21273d}},99) then
			ts('验证')
			return false
		elseif multiColor({{224,242,0x000000},{240,259,0x000000},{261,260,0x000000},{282,256,0x000000},{318,252,0x000000},{328,252,0x000000},{344,252,0x000000},{240,253,0x000000},{261,253,0x000000}},98) and isColor_qymhif(0x007aff,96,425,437,487,496) and isColor_qymhif(0x007aff,96,157,454,203,480) then
			click(x,y)	 ts('appid')
		elseif multiColor({{601,627,0x052e4b},{38,636,0x052e4b},{275,260,0x052e4b},{369,260,0x052e4b},{317,308,0x052e4b},{334,369,0x052e4b},{335,330,0x525252},{573,456,0xffffff},{64,450,0xffffff},{301,874,0x525252}},98) then
			ts('程序出错')  gjccccxj()
		end
		if AppRunning(AppBID)==false then
			zfbst=zfbst+1
			if zfbst>=4 then
				gj()
				zfbst=0
			end
		end
	end
end
function zhifubaozhuce(phonesj)
	local phone_code=nil
	local codefalse=false
	local srwc=false
	local zhmima=randomstring_lower(4)..randomNumString(4)
	local zfmima=randomNumString(6)
	ts(phonesj..'-'..zhmima..'-'..zfmima)
	local msg=''
	local zcwc=false
	local mimacw=0
	local sccq=0
	local smtime=os.time()
	local dltime=os.time()
	local zfbst=0
	while true do
		if os.difftime(os.time(),smtime) > 260 then
			return false 
		elseif multiColor({{107,768,0xffffff},{58,596,0x108ee9},{74,651,0x108ee9},{551,607,0x108ee9},{586,664,0x108ee9},{260,414,0x3e3a39},{296,423,0x3e3a39},{381,454,0x3e3a39},{380,408,0x3e3a39},{334,332,0xffffff}}) then
			ts('登录')
			click(x,y)--登录
		elseif  multiColor({{58,544,0x108ee9},{62,614,0x108ee9},{579,546,0x108ee9},{576,617,0x108ee9},{192,159,0x000000},{193,192,0x000000},{239,170,0x000000},{427,175,0x000000},{452,175,0x000000},{391,180,0x000000}}) then  
			ts('获取手机')
			phone_num = vCode.getMobileNum(phonesj); 
			if phone_num ~= nil then
				mSleep(1000)
				click(552,437)
				inputText(phone_num)
				mSleep(500)
				click(246,586) 
				mSleep(1500)
			else
				return false
			end
		elseif multiColor({{255,152,0x000000},{366,188,0x000000},{427,166,0x000000},{27,83,0x108ee9},{39,71,0x108ee9},{38,96,0x108ee9},{166,166,0x000000},{295,166,0x000000},{382,167,0x000000},{382,185,0x000000}}) then 	
			ts('获取短信')
			if codefalse==false then
				for i = 1,10 do
					phone_code = parasevCode(vCode.getVcodeAndReleaseMobile());
					if phone_code ~= nil then
						mSleep(1500)
						codefalse=true
						break;
					end
					ts(string.format("等待获取验证码:%s/30",i))
					mSleep(3000)
				end
			end
			if phone_code == nil then
				return false
			end
			wx_input(phone_code)
			mSleep(1000)
		elseif multiColor({{561,562,0x108ee9},{75,566,0x108ee9},{277,562,0x108ee9},{142,199,0x000000},{351,184,0x000000},{459,179,0x000000},{351,184,0x000000},{167,196,0x000000},{407,181,0x000000},{464,157,0x000000}},98) and isColor_qymhif(0xffffff,98,289,572,353,602)==false then
			ts('密码登录')
			inputText(zhmima)
			mSleep(500)
			click(362,586)
		elseif multiColor({{56,550,0x108ee9},{569,620,0x108ee9},{545,552,0x108ee9},{68,614,0x108ee9},{206,585,0x108ee9},{438,589,0x108ee9},{340,237,0xffffff},{333,278,0x1f90e6},{207,365,0x000000},{512,553,0x108ee9}}) then
			ts('输入密码')
			mSleep(300)
			click(483,466)
			mSleep(500)
			inputText('\b\b\b\b\b\b\b\b\b\b\b\b')
			inputText(zhmima)
			mSleep(1000)
			click(337,587)
		elseif multiColor({{70,562,0x108ee9},{207,612,0x108ee9},{437,574,0x108ee9},{559,622,0x108ee9},{142,200,0x000000},{168,196,0x000000},{406,181,0x000000},{459,178,0x000000},{142,173,0x000000}}) then
			click(x,y)
			ts('密码确定')
		elseif multiColor({{33,84,0x108ee9},{291,79,0x000000},{363,94,0x000000},{379,82,0x000000},{379,96,0x000000},{52,536,0xdddddd},{555,544,0xdddddd},{570,595,0xdddddd},{69,297,0xf5f5f9},{592,161,0xffffff}},98) and
		multiColor({{21,138,0xffffff},{42,246,0xffffff},{606,304,0xf5f5f9},{327,301,0xf5f5f9},{307,254,0xffffff},{339,156,0xffffff},{507,360,0xffffff}},98) then
			ts('被限制')
			return false
		elseif multiColor({{361,491,0x000000},{293,487,0x000000},{225,506,0x000000},{170,498,0x000000},{427,462,0x000000},{358,447,0x000000},{325,443,0x000000},{183,460,0x000000},{208,446,0x000000}}) and	
		isColor_qymhif(0x007aff,98,423,680,479,716) and isColor_qymhif(0x007aff,98,174,681,219,709)then
			click(x,y)  ts('不允许')
		elseif multiColor({{221,772,0xffca4b},{417,782,0xffc54b},{414,742,0xffd94d},{241,743,0xffd94d},{488,768,0xdd3748},{153,768,0xdd3748},{415,513,0xe73f50},{206,520,0xe73f50},{317,501,0xebb33f}}) then	
			click(520,220)
			ts('关闭')
		elseif multiColor({{84,1087,0x29a1f7},{92,1076,0x29a1f7},{75,1062,0x29a1f7},{63,1074,0x29a1f7},{94,1078,0x29a1f7},{604,84,0xffffff},{77,1059,0x29a1f7},{63,1073,0x29a1f7},{84,1091,0x29a1f7}}) then 	
			if sccq==0 then
				appRunkill(AppBID)
				sccq=1
				dltime=os.time()
			else
				click(563,1078) ts('我的','1') mSleep(3000)
			end
		elseif multiColor({{463,411,0x000000},{367,412,0x000000},{272,411,0x000000},{561,410,0xffffff},{583,497,0xdddddd},{83,503,0xdddddd},{54,540,0xdddddd},{587,549,0xdddddd},{327,78,0x000000},{33,84,0x108ee9}},98) then
			mimacw=mimacw+1
			if mimacw>4 then
				click(31,82)
				mimacw=0
			end
		elseif multiColor({{568,1086,0x29a1f7},{573,1071,0x29a1f7},{559,1061,0x29a1f7},{544,1069,0x29a1f7},{548,1082,0x29a1f7},{559,1091,0x29a1f7}}) and multiColor({{606,353,0xc7c7cc}}) and isColor_qymhif(0xf76b25,100,249,335,333,365) then
			if zcwc==false then
				click(x,y) ts('我的实名1','1') srwc=false
			else
				click(48,654) ts('查看余额')
			end
		elseif multiColor({{568,1086,0x29a1f7},{573,1071,0x29a1f7},{559,1061,0x29a1f7},{544,1069,0x29a1f7},{548,1082,0x29a1f7},{559,1091,0x29a1f7}}) and multiColor({{564,353,0xff3b30},{565,356,0xff3b30},{565,350,0xff3b30},{561,353,0xff3b30}}) and isColor_qymhif(0xf76b25,100,249,335,333,365) then	

			if zcwc==false then
				click(x,y) ts('我的实名','1') srwc=false
			else
				click(48,654) ts('查看余额')
			end	
		elseif multiColor({{137,757,0x108ee9},{482,797,0x108ee9},{510,750,0x108ee9},{137,796,0x108ee9},{252,397,0x108ee9},{252,410,0x108ee9},{365,326,0xd7e7fe},{281,317,0xd7e7fe},{325,348,0x108ee9},{407,358,0xffffff}}) then
			click(x,y) ts('立即设置') mSleep(3000) dltime=os.time()

		elseif multiColor({{164,248,0x000000},{251,233,0x000000},{363,246,0x000000},{388,232,0x000000},{454,237,0x000000},{327,78,0x000000},{220,84,0x000000},{398,83,0x000000},{33,83,0x108ee9},{46,70,0x108ee9}}) and multiColor({{78,411,0xffffff},{176,410,0xffffff}}) then	
			wx_input(zfmima)	ts('设置支付密码1','1')
		elseif multiColor({{33,84,0x108ee9},{45,71,0x108ee9},{45,97,0x108ee9},{220,84,0x000000},{302,93,0x000000},{327,78,0x000000},{398,82,0x000000},{585,495,0xdddddd},{61,525,0xdddddd},{329,275,0xffffff}}) and multiColor({{78,411,0xffffff},{176,410,0xffffff}}) then
			wx_input(zfmima)	ts('设置支付密码2','1')
			mSleep(500)
			click(418,514) 
		elseif multiColor({{571,541,0x108ee9},{432,502,0x108ee9},{93,492,0x108ee9},{175,543,0x108ee9},{76,410,0x000000},{177,412,0x000000},{271,411,0x000000},{33,84,0x108ee9},{398,82,0x000000},{327,78,0x000000}}) then	
			click(x,y) ts('下一步') mSleep(1000)
		elseif multiColor({{33,83,0x108ee9},{46,70,0x108ee9},{274,85,0x000000},{290,78,0x000000},{363,95,0x000000},{372,96,0x000000},{379,96,0x000000},{379,72,0x000000},{379,83,0x000000},{18,141,0xf5f5f9}},98) and	
		multiColor({{106,592,0x108ee9},{552,597,0x108ee9},{203,592,0x108ee9},{412,597,0x108ee9}}) and multiColor({{458,619,0x108ee9},{183,620,0x108ee9}}) then
			click(34,83) ts('返回')
		elseif multiColor({{73,294,0xffffff},{128,383,0xffffff},{159,344,0xffffff},{211,340,0xffffff},{295,340,0xffffff},{626,454,0x1b82d2},{11,448,0x1b82d2},{22,151,0x1b82d2},{626,141,0x1b82d2},{302,86,0xffffff}}) then
			if multiColor({{36,739,0xf96268},{52,724,0xf96268},{41,612,0xf59901},{41,600,0xf59901},{67,513,0x108ee9},{40,514,0x108ee9}}) then
				ts('实名完成')
				return true,phonesj,zhmima,zfmima,Split(msg,'&')[1]	
			end
			if multiColor({{52,653,0x108ee9},{562,694,0x108ee9},{580,655,0x108ee9},{52,524,0xf96268},{37,524,0xf96268},{41,944,0xf59901},{65,853,0x108ee9}}) then
				return false
			end

		elseif multiColor({{33,84,0x108ee9},{45,71,0x108ee9},{104,263,0x96d3ff},{103,348,0x96d3ff},{149,304,0x96d3ff},{62,306,0x96d3ff},{290,78,0x000000},{363,95,0x000000}},98) then
			ts('实名OK')
			zcwc=true
			appRunkill(AppBID)
		elseif multiColor({{33,83,0x108ee9},{46,70,0x108ee9},{274,85,0x000000},{290,78,0x000000},{363,95,0x000000},{372,96,0x000000},{379,96,0x000000},{379,72,0x000000},{379,83,0x000000},{18,141,0xf5f5f9}},98) and	
		(multiColor({{116,585,0xdddddd},{491,583,0xdddddd},{585,585,0xdddddd},{50,582,0xdddddd}},98) or  multiColor({{55,487,0xdddddd},{174,489,0xdddddd},{430,490,0xdddddd},{569,491,0xdddddd}},98)) then
			ts('身份验证')sccq=2
			if srwc==false then
				::SD::
				msg=localService('获取资料','','')
				if msg~='' then
					local b=''
					for ch in string.gmatch(msg, '[aA-zZ]') do 
						b=b..ch
					end
					if b~='' then
						if b>1 then
						toast('身份证错误:'..msg,1)
						goto SD
						end
					end
					local ret=Split(Split(msg,'&')[1],'----')
					if string.len(ret[2])~=18 then
						toast('身份证长度错误',1)
						goto SD
					end 
					mSleep(500)
					click(582,382)
					mSleep(500)
					inputText('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					inputStr(ret[1])
					mSleep(500)
					click(587,439)
					mSleep(1000)
					--if multiColor({{598,353,0xcccccc}}) then
					inputText('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					--end
					inputStr(ret[2])
					mSleep(500)
					if multiColor({{435,514,0x108ee9}}) then
						click(x,y) srwc=true
					end
				end
			end
		elseif multiColor({{224,242,0x000000},{240,259,0x000000},{261,260,0x000000},{282,256,0x000000},{318,252,0x000000},{328,252,0x000000},{344,252,0x000000},{240,253,0x000000},{261,253,0x000000}},98) and isColor_qymhif(0x007aff,96,425,437,487,496) and isColor_qymhif(0x007aff,96,157,454,203,480) then
			click(x,y)	 ts('appid')
		elseif multiColor({{601,627,0x052e4b},{38,636,0x052e4b},{275,260,0x052e4b},{369,260,0x052e4b},{317,308,0x052e4b},{334,369,0x052e4b},{335,330,0x525252},{573,456,0xffffff},{64,450,0xffffff},{301,874,0x525252}},98) then
			ts('程序出错')  gjccccxj()
		elseif multiColor({{606,587,0x052e4b},{609,631,0x052e4b},{28,580,0x052e4b},{24,632,0x052e4b},{64,683,0xffffff},{561,683,0xffffff},{566,710,0x4f4f50},{46,70,0x052e4b},{290,79,0x000000},{65,510,0xffffff}})  and isColor_qymhif(0x108ee9,96,290,634,326,660) then	
		click(x,y)	 ts('号码格式错误')
		elseif multiColor({{594,547,0x052e4b},{594,616,0x052e4b},{44,551,0x052e4b},{44,614,0x052e4b},{193,182,0x000000},{391,180,0x000000},{441,175,0x000000},{38,72,0x052e4b},{578,487,0xffffff},{59,673,0xffffff}}) and isColor_qymhif(0x108ee9,96,337,631,366,665) then	
		ts('手机注册超限') return false
		end
		if os.difftime(os.time(),dltime)>20 and sccq==1 then
			appRunkill(AppBID)
			dltime=os.time()
		end
		if AppRunning(AppBID)==false then
			zfbst=zfbst+1
			if zfbst>=4 then
				gj()
				zfbst=0
			end
		end
	end
end

--hd一键新机
function hdchange()
	appRunkill('com.workhard.hdfakerset')
	mSleep(2000)
	::HD::
	for var= 1, 10 do
		if not AppRunning('com.workhard.hdfakerset') then
			appRunkill('com.workhard.hdfakerset')
			mSleep(3000)
		else
			break
		end
	end
	if AppRunning('com.workhard.hdfakerset') then
		local sj=1
		if yjxqyz=='0' then
			sj=0
		end
		if xzfs=='0' then
			sj=1
		end
		while (true) do
			if  multiColor({{61,368,0x38b549},{45,368,0x38b549},{60,347,0x38b549},{96,1072,0x007aff},{112,1071,0x007aff},{312,1057,0x929292},{319,1098,0x929292},{319,1077,0x929292}}) then
				if sj==1 then
					click(52,259) mSleep(2000)
				else
					click(308,1056)
				end
			elseif multiColor({{97,1075,0x00244c},{116,1074,0x00244c},{108,1065,0x00244c},{185,658,0x22b573},{470,645,0x22b573},{391,653,0x22b573},{238,651,0x22b573}}) then	
				mSleep(4000)
				return
			elseif multiColor({{295,1056,0x007aff},{340,1055,0x007aff},{340,1097,0x007aff},{298,1096,0x007aff},{298,1076,0x007aff},{338,1075,0x007aff},{99,1073,0x929292},{111,1072,0x929292}}) then
				if  MulcolorNoOffset(0x00aaee, "26|16|0x00aaee,43|-16|0x00aaee,-2|-39|0x00aaee,41|-40|0x00aaee,22|-4|0xfffffe,16|-28|0xfffffe,-14|17|0x00aaee",95,26,410,107,1024) then	
					if sj==0 then
						click(x,y)
					else
						click(107,1067)
					end
				elseif multiColor({{63,261,0x00b200},{51,261,0xffffff},{42,264,0x00ad00},{44,241,0x48d85b},{213,256,0x000000},{249,254,0x000000},{225,254,0x000000},{206,242,0x000000},{588,258,0xff0000}}) then
					if sj==0 then
						for var= 1, 2 do
							click(598,80)
							mSleep(1000)
						end
						sj=1
					end
					if sj==1 then
						click(20,83)
					end
				end
			end
			AppRunning('com.workhard.hdfakerset')
		end

	else
		goto HD
	end
end

function gj()
	closeApp(AppBID)
	if yjxj=='NZT' then
		changeDevInfo()
	else
		hdchange()
	end
end
function gjccccxj()
	closeApp(AppBID)
	if yjxj=='NZT' then
		changeDevInfo()
	else
		hdchange()
	end
end
--15724318373--q670907352-591400-刘久强----612328198002070016		
--18340903283--qwer59147--354752-刘久强----612328198002070016
--18340947036-sdf654625-134546-杨志刚----230103195703080319
--18340974046 sdf654625 134546 胡金连----430124197610082647

init('0',0)

zcpt='爱乐赞'
account='api-837sgntt'
pwd='q670907352'
pid='1023'
ccccxj='HD'
yjxqyz='0'
city=UrlEn(gsdcity)
vCode = MobileCode(AppBID, severname(zcpt), account, pwd, pid,city,nil,nil,nil,'0');
gj()
while (true) do
	runApp(AppBID)
	local insc,inwe=false,nil
	insc,inwe=zhifubaoshoujhao()
	--insc,inwe=true,'18340974046'
	if insc then
		closeApp(AppBID)
		gj()
		runApp(AppBID)
		indxa,indxb,indxc,indxs,indxd=false,nil,nil,nil,nil
		indxa,indxb,indxc,indxs,indxd=zhifubaozhuce(inwe)
		if indxa==true then
			newmsg=indxb..'----'..indxc..'----'..indxs..'----'..indxd
			ts(newmsg)
			msg=localService('数据账号2',newmsg,'')
		end
	end
	closeApp(AppBID)
	gj()
end
--local ms=localService('PC','','')
--if ms~='QQ1009313252' then
--	dialog('中控连接失败!!!'..'\n'..'1.请检查ip端口是否与电脑中控端一致'..'\n'..'2.检测防火墙是否关闭'..'\n'..'3.网络是否与电脑同一局域网', 5)
--	lua_exit()
--end

