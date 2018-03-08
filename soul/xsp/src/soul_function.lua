require "data_720_1280"
require "Utilities"

function 匹配(content,wxid,sleep)
	local _content = false
	local _wxid = false
	while 1 do
		if _content == false and _wxid == false and MulColor(主界面.测试) and MulColor(主界面.soul) and MulColor(主界面.匹配) then
			click(x,y)mSleep(2000)
		elseif _content == false and MulColor(聊天界面.返回)  then
			inputText(content)mSleep(2000)
			_content = true
		elseif _content and _wxid == false and MulColor(聊天界面.发送) then
			click(x,y) mSleep(2000)
		elseif _wxid == false and MulColor(聊天界面.返回) then
			inputText(wxid)mSleep(2000)
			_wxid = true 	
		elseif _content and _wxid and MulColor(聊天界面.发送) then
			click(x,y) mSleep(2000)	
		elseif _content and _wxid and MulColor(聊天界面.返回) then
			click(x,y)mSleep(2000)
		elseif _content and _wxid and MulColor(主界面.测试) and MulColor(主界面.soul) and MulColor(主界面.匹配) then
			_content,_wxid = false,false
			local tt = os.time()
			while os.difftime(os.time(),tt) <= tonumber(sleep) do
				toast("等待下一轮")
			end
		end
	end
end