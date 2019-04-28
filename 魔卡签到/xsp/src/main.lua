require "Utilities"
local bb = require("badboy")
init(0,1)
mSleep(2000)

确认更新 = {0xa57526,"0|2|0xfbd565,0|4|0x9e6d20,0|7|0xf4cd5e,0|9|0xa37223,11|9|0xa37223,11|7|0xf4cd5e,11|4|0x9e6d20,11|2|0xfbd565", 90, 772, 482, 801, 502}

local ocr, msg = createOCR({
    type = "tesseract", -- 指定tesseract引擎
    path = "[external]", -- 使用开发助手/叉叉助手的扩展字库
    lang = "eng" -- 使用英文增强字库(注意需要提前下载好)
})
if ocr ~= nil then
    string.trim = function(s)
        return s:match'^%s*(.*%S)' or ''
    end
    local code, text = 0, ""
    mSleep(1000)
    -- 识别屏幕图像内容(例如5/5s设备的当前时间显示)
    code, text = ocr:getText({
        rect = {1149,13,1187,38},
		diff = {"0x3b3b3b-0x6e6e6e"},
        whitelist = "0123456789" -- 添加所有可能出现的字符作为白名单
    })
    -- 输出示例："code = 0, text = 5:24 PM" (末尾可能有多余换行符，为正常结果，可以参考trim处理)
    sysLog("code = " .. tostring(code) .. ", text = " .. text:trim())
    mSleep(1000)
end

bb.loadluasocket()
local http = bb.http
local ltn12 = bb.ltn12
res, code = http.request('http://www.baidu.com')
if code == 200 then
  sysLog(res)
  dialog(res, 0)
end