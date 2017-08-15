require "yys"

init("0", 1);
toast("开始运行")
mSleep(1000)



uiRet,ui = showUI("ui.json")

param = ui.choice
ck = ui.chouka
jl = ui.jilu
jt = ui.jietu


function auto()
  while true do
    loadgamegp()
    levelup()
    email()
    arch()
    shareweixin(param)
    award(ck)
    if ck == "0" then
      recordssr(jl)
    end
    if jt == "0" then
      savepic()
    else
			toast("不截图")
		end
    exitgame()
  end
end

--function man()
--  manload()
--  levelup()
--  email()
--  arch()
--end



local _fileacc,_fileindex,_filerec
_fileacc = io.open("[public]account.txt","r")
_fileindex = io.open("[public]index.txt","r")
_filerec = io.open("[public]record.txt","r")

if _fileacc == nil or _fileacc == nil or _filerec == nil then
  if _fileacc == nil then
    _fileacc = io.open("[public]account.txt","a+")
		if _fileacc ~= nil then
			_fileacc:close()
		else
			dialog("导入的account.txt权限不足请勾选权限\n长按文本选择权限\n全部勾上即可\n同时请检查index.txt和record.txt")
		end
  end
  
  if _fileindex == nil then
    _fileindex = io.open("[public]index.txt","a+")
		if _fileindex ~= nil then
			_fileindex:close()	
		else
			dialog("导入的index.txt权限不足请勾选权限\n长按文本选择权限\n全部勾上即可")
		end
  end
  
  if _filerec == nil then
    _filerec = io.open("[public]record.txt","a+")
		if _filerec ~= nil then
			_filerec:close()	
		else
			dialog("导入的record.txt权限不足请勾选权限\n长按文本选择权限\n全部勾上即可")
		end
  end
  dialog("配置文件创建完毕,请重新运行脚本",3)
else
  auto()
end