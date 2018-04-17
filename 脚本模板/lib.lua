---------------------------
--基础函数库
--by滨州IT疯子
--------------------------
function F检查分辨率() --检查分辨率函数 from 云耳
  if w == 640 and h==1136 then 
      require('t640')
			_w,_h=640,1136
	elseif w == 768  or h == 1024  then
	   lua_exit()
			--_w,_h=768,1024
	else                 
      needScale = true
      if w== 750 or w==1242 or w == 720 or w== 1080 or w==1440 or h== 1334 or h == 2208 then
        require('t640')
				_w,_h=640,1136
      elseif w == 1536 or w == 2048 then
        lua_exit()
				--t=t4_3
				--_w,_h=768,1024
      else
        toast("您的手机分辨率为"..h.."*"..w.."。很抱歉，不支持您的手机分辨率。")
        mSleep(1000)
        lua_exit()
      end
    end
end
function F点击(x, y)  --点击函数
	local x, y = x, y
  math.randomseed(tostring(os.time()):reverse():sub(1, 6))  --设置随机数种子
  local index =0 --math.random(1,5)
  x = x + math.random(-3,3) 
  y = y + math.random(-3,3)
  touchDown(index,x, y)
  mSleep(math.random(60,180))                --某些特殊情况需要增大延迟才能模拟点击效果
	touchUp(index, x, y)
	taptime=mTime()
	mSleep(500)
end
function F多点比色(array,s) --多点比色
	s = s or 95
	s = math.floor(0xff*(100-s)*0.01)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		local rgb = array[var][3]
    
		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			return false
		end
	end
	return true
end
function F多点找色(t)  --多点找色
	return findMultiColorInRegionFuzzy(t[1],t[2], t[3], t[4], t[5], t[6], t[7])
end
function F获取当前页面() --获取当前页面函数
	local res = '未知页面'
	keepScreen(true)
	if needScale then
	setScreenScale(_w,_h,0)
	end
	for _, v in pairs(界面列表) do
		if F多点比色(v[2]) then
			res = v[1]  --界面名称
			break
		end
	end
	if needScale then
	resetScreenScale()
	end
keepScreen(false)
sysLog(res)
return res
end
function F点击页面元素(page,unit) --点击元素
  sysLog('点击模块当前页面：'..page.n)
	sysLog('点击模块当前元素：'..unit)
	local x,y
	local res=false
	keepScreen(true)
  if needScale then --缩放
	setScreenScale(_w,_h,0)
	end
	for _ , v in pairs(page) do
		if v.w=='CC' then
		  --sysLog('循环K：'..v[1])
			if F多点比色(v.c) and v[1]==unit then
			  sysLog('当前点击：'..v[1])
				F点击(v.tap[1],v.tap[2])
				res = true
				break
			end
		elseif v.w=='MSC' then
			x,y=F多点找色(v.c)
			sysLog('找:'..v[1]..'x='..x..'y='..y)
			if x>-1 and y>-1 and v[1]==unit then
			  F点击(x,y)
				res=true
				break
			end
		end
	end
	if needScale then
	--setScreenScale(_w,_h,0)
	resetScreenScale()
	end
	keepScreen(false)
	return res
end
function F运行(t) --运行任务函数
	B记录时间=mTime()
	while true do
	  if mTime()-B记录时间>B超时时间 then
			break
		end
	  B当前页面=F获取当前页面() --获取当前页面
		for k,v in pairs(t) do
		  --sysLog(v[1].n)
			if B当前页面==v[1].n then
				for _,_v in pairs(v[2]) do
				  sysLog('传入点击元素：'.._v)
			    if F点击页面元素(v[1],_v) then
						B记录时间=mTime()
					  break
					end
				end
			end
		end
		mSleep(1000)
	end
end