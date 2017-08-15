require "yys"

init("0", 1);
toast("开始运行")
mSleep(1000)



uiRet,ui = showUI("ui.json")


ck = ui.chouka



function man()
  loadgame()
  levelup()
  youjian()
	chengjiu()
	if ck == "0" then
		zhaohuan()
	end
end

man()	