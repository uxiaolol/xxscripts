function click(x,y)
	x =  x + math.random(-2, 2)
	y =  y + math.random(-2, 2)
  touchDown(0, x , y )
  mSleep(math.random(15,20))
  touchUp(0,x,y)
  mSleep(math.random(20,50))
end

function DmFindPic(pic,degree,x1,y1,x2,y2)
	keepScreen(true)
  x, y = findImageInRegionFuzzy(pic, degree, x1-5,y1-5,x2-5,y2-5, 0);
	keepScreen(false)
  if x ~= -1 and y ~= -1 then        --忽略背景色白色的情况下找到符合条件的图片则点击
		sysLog(pic)
		return true
  else                               --如果没找到符合条件的
    return false
  end	
end

function FindColorRegionFuzzy(color,degree,x1,y1,x2,y2,hdir,vdir)
		keepScreen(true)	
		x, y = findColorInRegionFuzzy(color, degree, x1,y1,x2,y2); 
		keepScreen(false)
    if x ~= -1 and y ~= -1 then  --如指定区域找到符合条件的某点
        return true
    else                         --如找不到符合条件的点
        return false
    end
end



function jdwlLog(contents)
	sysLog(contents)
end

function kill()
	closeApp("com.netease.onmyoji")
	--closeApp("com.netease.onmyoji.guopan")
	mSleep(2000)
	runApp("com.netease.onmyoji"); 
	--runApp("com.netease.onmyoji.guopan"); 
end


function jdwlMsg(msg)
	sysLog(msg)mSleep(2000)
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

function randomnum(n)
		local chars = '0123456789'
		local strs = ''
		math.randomseed(tostring(os.time()):reverse():sub(1,n))
		for i = 1,n do
			local index = math.random(string.len(chars))
			strs = strs..string.sub(chars,index,index)
		end
		return strs
end


function run()
	runApp("com.netease.onmyoji"); 
	--runApp("com.netease.onmyoji.guopan"); 
end


------------------------------------------------------------------------- 鍖哄煙妯＄硦鎵捐壊
function find_Onequyu(mColor, sim, x1, y1, x2, y2)
	x, y = findColorInRegionFuzzy(mColor, sim, x1-5, y1-5, x2-5, y2-5); -- 鍦ㄥ尯鍩焄(100,100)(200,200)]鑼冨洿鎵惧埌绗竴涓鑹蹭负0x0000ff鐨勭偣, 绮剧‘搴︿负90%, 灏嗗叾鍧愭爣淇濆瓨鍒板彉閲弜鍜寉涓?
        if x  ~= -1 and y ~= -1 then		 
		         return true;
		else
		         return false;
	    end
end 

function FindPic(pic,per,x1,y1,x2,y2)
		keepScreen(true)
		x, y = findImageInRegionFuzzy(PIC_PATH..pic, per, x1,y1,x2,y2)
		if x~=-1 and y~=-1 then	
			keepScreen(false)	
			return true		
		else
			keepScreen(false)
			return false
		end	
end

function FindPicFuzzy(pic,per,x1,y1,x2,y2,color)
		keepScreen(true)
		x, y = findImageInRegionFuzzy(PIC_PATH..pic,per,x1,y1,x2,y2,color)
		if x~=-1 and y~=-1 then
			keepScreen(false)
			return true		
		else
			keepScreen(false)
			return false
		end	
end

function DmFindPicFuzzy(pic,per,x1,y1,x2,y2,color)
		keepScreen(true)
		x, y = findImageInRegionFuzzy(PIC_PATH..pic,per,x1-5,y1-5,x2-5,y2-5,color)
		if x~=-1 and y~=-1 then
			keepScreen(false)
			return true		
		else
			keepScreen(false)
			return false
		end	
end


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

function myMove_RL(x1, y1, x2, y2,speed)
	local step = speed
	if x2 > x1 then step = -speed end 
	local cnt = math.abs((x2 - x1) / speed)
	if cnt == 0 then
		cnt = 1
		step = math.abs(x2 - x1)
	end
	touchDown(0, x1, y1)
	mSleep(50)
	for i = 1, cnt do
		mSleep(50)
		x1 = x1 - step
		touchMove(0, x1, y1)
	end
	touchUp(0)
	mSleep(100)
end


function clickMove(x1,y1,x2,y2,n)
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
    touchUp(0);
end

function MulColor(color,t,sim,x1,y1,x2,y2)
  keepScreen(true)
  x,y = findMultiColorInRegionFuzzy(color,t,sim,x1,y1,x2,y2)
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

function tabTostr(t)
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

function MulcolorOffset(t,sim,x1,y1,x2,y2)
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

function MulcolorNoOffset(t,sim,x1,y1,x2,y2)
	if t == nil then
		return false
	else
		keepScreen(true)
		--sysLog(x1..','..y1..','..x2..','..y2)
		local color = t[1]
		local tab = tabTostr(t)
		x,y = findMultiColorInRegionFuzzy(color,tab,sim,x1,y1,x2,y2)
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