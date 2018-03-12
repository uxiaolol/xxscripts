function parasevCodeHuoshan(data)	
	if data ~= nil then
		--logDebug(data)
		local key = "验证码";	
		local _start = string.find(data, key);
		if _start ~= nil then
			--print(_start)
			_start = _start + string.len(key)
			local code = string.sub(data, 1, _start);							
			return string.match(code,'%d+');
		end
	end
	return nil;	
end


print(parasevCodeHuoshan("【火山小视频】0188（火山小视频验证码），30分钟内有效，请勿泄露"))

