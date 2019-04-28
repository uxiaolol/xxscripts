--点击封装函数
function click(x,y)
	--sysLog(string.format("点击坐标为:%d,%d",x,y))
	x =  x + math.random(-2, 2)
	y =  y + math.random(-2, 2)
  touchDown(0, x , y )
  mSleep(math.random(15,20))
  touchUp(0,x,y)
  mSleep(math.random(1000,1500))
end

--点击滑动
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
    touchUp(0,x1,y1);
end

function MulColor(t)
  --keepScreen(true)
  x,y = findMultiColorInRegionFuzzy(t[1],t[2],t[3],t[4],t[5],t[6],t[7])
	if x ~= -1 and y ~= -1 then
		--sysLog(string.format("0x".."%06x",t[1]))
		--keepScreen(false)
		return true
	else
		--keepScreen(false)
		return false
	end	
end
