require "monster"

init(0,0)
mSleep(1000)

uiRet,ui = showUI("ui.json")
if uiRet == 1 then
	toast("开始冒险")
	冒险()
else
	dialog("请点击确定按钮播放",5)
end


