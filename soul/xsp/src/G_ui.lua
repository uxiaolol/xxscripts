--全能打印函数
local function pr()
	local function TableToString(tab)  
		local get_str,get_t
		get_t = function(L)
			return string.rep("\t", L)
		end
		get_str = function(tab,L)
			L = L+1
			local tmp = {}  
			tmp[#tmp + 1] = "{"
			for k, v in pairs(tab) do
				local k_type = type(k) 
				local v_type = type(v) 
				local key = (k_type == "string" and "[\"".. k .. "\"] = ") or (k_type == "number" and "[".. k .. "] = ") or "[" .. tostring(k) .. "] = "
				local value = (v_type == "table" and get_str(v,L))  
				or (v_type == "boolean" and tostring(v))  
				or (v_type == "string" and "\"" .. v .. "\"")  
				or (v_type == "number" and v)
				or (v_type == "string" and "\"" .. v .. "\"")
				or tostring(v)
				tmp[#tmp + 1] = key and value and get_t(L)..tostring(key) .. tostring(value).."," or nil  
			end
			tmp[#tmp + 1] = get_t(L-1).."}"
			return table.concat(tmp, "\n")
		end
		return get_str(tab,0)
	end
	
	local print = sysLog or print
	return function( ... )
		if type(...) == "table" then
			print(TableToString(...))
		else
			print(...)
		end
	end
end

print = pr()

local ui = {tmp = {},ui_table = {}}

local is_ios = getOSType() ~= "android" and true
function utfstrlen(str)
	local len = #str;
	local left = len;
	local cnt = 0;
	local arr={0,0xc0,0xe0,0xf0,0xf8,0xfc};
	while left ~= 0 do
		local tmp=string.byte(str,-left);
		local i=#arr;
		while arr[i] do
			if tmp>=arr[i] then 
				left=left-i;
				break;
			end
			i=i-1;
		end
		cnt=cnt+1;
	end
	return cnt;
end

local function get_max(a,b)
  if a > b then return a else return b end
end

local function split(str)
	local tab = {}
	for n in string.gmatch(str,"(%w+)") do
		table.insert(tab,n)
	end
	return tab
end

local tableTojson = function(t)
	local function serialize(tbl)
		local tmp = {}
		for k, v in pairs(tbl) do
			local k_type = type(k)
			local v_type = type(v)
			local key 
			if k_type == "string" then
				key = "\"" .. k .. "\":"
			elseif k_type == "number" then
				key = ""
			end
			local value
			if v_type == "table" then
				value = serialize(v)
			elseif v_type == "boolean" then
				value = tostring(v)
			elseif v_type == "string" then
				value = "\"" .. v .. "\""
			 elseif v_type == "number" then
				value = v
			 end
			tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil
		end
		if #tbl == 0 then
			return "{" .. table.concat(tmp, ",") .. "}"
		else
			return "[" .. table.concat(tmp, ",") .. "]"
		end
	end
	return serialize(t)
end 

local read = function(tmp,retTable)
	local retTable = retTable
	for k,v in pairs(retTable) do 
		local tmp_k = tmp[k]
		if tmp_k.CK then
			local tab = split(v)
			retTable[k] = {}
			for n = 1, # tab do
				local key = tmp_k[tab[n]+1]
				retTable[k][key] = true
			end
		elseif tmp_k.RC then
			local value = tmp_k[v+1]
			retTable[k] = value
		end
	end
	return retTable
end
local w_,h_ = getScreenSize()
  
local ui_scale = h_/1136
local ref_size = ui_scale*70
local fix_s = 0
local fix_s_r = 0
if ui_scale ~=1 then
  fix_s = ui_scale*0.036
  fix_s_r = ui_scale*0.044
end
local box_width
local ref_width
function ui:new(width,height,okname,cancelname,config)
	self["style"] 		= "custom"
	self["okname"] 		= okname or "确定"
	self["cancelname"] 	= cancelname or "退出"
	self["width"] 		= tonumber(width)*0.95 or w_*0.95
	self["height"] 		= tonumber(height)*0.95 or h_*0.95
	self["config"] 		= config or "config_cus.dat"
  if ui_ref then self["bg"] = "ref_line.png" end
  ref_width = 0.1*self["width"]
  box_width = self["width"] 
  self.init_x = 0
  self.init_y = 0
  self.pr_x = 0
  self.pr_y = 0
  self.pr_h = 0
	self.views = {}
	local ui_table = self.ui_table
	for k,v in pairs(self) do
		if type(v) ~= "function" and k ~= "tmp" and k ~= "ui_table" then
			ui_table[k] = v
		end
	end
  local o = {};
	setmetatable(o,{__index = self})
	return o
end
function ui:init()
  file.write(self["config"],"","w+") 
end
function ui:newPage(text)--添加标签
	local tab = {
		--["id"]		= "PageID",
    ["style"] = "custom",
		["type"] 	= "Page",
		["text"] 	= text ,
		views = {}
	}
	table.insert(self.views,tab)
	setmetatable(tab,{__index = self})
	return tab
end

function ui:newBox(index_w,index_h,bg)
  local w = ref_width*index_w
  local h = ref_width*index_h
  local tab = {
    type = "box",
    views = self.views,
    init_x = self.pr_x,
    init_y = self.pr_y,
    pr_x = self.pr_x,
    pr_y = self.pr_y,
    pr_h = 0
  }
  box_width = w
  local x = self.pr_x
  local y = self.pr_y
  self.pr_x = x + w
  self.pr_h = h
  if bg then
    self:addImage(index_w,index_h,bg,nil,{x,y})
  end
	setmetatable(tab,{__index = self})
	return tab
end

function ui:newLine(h)
  local h = h or 0.1
  self.pr_x = self.init_x
  self.pr_y = self.pr_h + self.init_y +(0.2+h)*ref_size
  self.init_y = self.pr_y
end
function ui:rect_center(w,h)
  local x = 0.5*(self["width"] - w)
  if self.type == "box" then x = 0.5*(box_width - w)+ self.pr_x end
  local y = self.pr_y
  self.pr_x = x + w
  self.pr_h = h
  return table.concat({math.floor(x),math.floor(y),math.floor(w),math.floor(h)},",")
end

function ui:rect_free(w,h)
  local x = self.pr_x +math.floor(0.2*ref_size)
  local y = self.pr_y
  self.pr_x = x + w
  self.pr_h = h
  return table.concat({math.floor(x),math.floor(y),math.floor(w),math.floor(h)},",")
end



function ui:addRadioBoxGroup(index_w,index_h,id,def_value,...)--添加选择控件
  local size = math.floor(0.4*ref_size)
	local w,h = math.floor(index_w*ref_width),math.floor(0.8*index_h*ref_size)
	local rect = self:rect_free(w,h)
  local tab = {...}
	local arr = {
		["type"] 	= "RadioGroup",
		["id"] 		= id,
		["list"] 	= table.concat(tab,","),
		["select"] 	= def_value,
		["width"]	= width,
    ["size"]    = size,
    rect = rect
	}
	tab.RC = true
	self.tmp[id] = tab
	table.insert(self.views,arr)
end
function ui:addCheckBoxGroup(index_w,index_h,id,def_value,...)--添加选择控件
  local size = math.floor(0.4*ref_size)
	local w,h = math.floor(index_w*ref_width),math.floor(0.8*index_h*ref_size)
	local rect = self:rect_free(w,h)
	--sysLog(rect)
  local tab = {...}
	local arr = {
		["type"] 	= "CheckBoxGroup",
		["id"] 		= id,
		["list"] 	= table.concat(tab,","),
		["select"] 	= def_value,
		["width"]	= width,
    ["size"]    = size,
    rect = rect
	}
	tab.CK = true
	self.tmp[id] = tab
	table.insert(self.views,arr)
end
function ui:addCheckBoxGroup_single(index_w,index_h,id,def_value,...)--添加选择控件
  local size = math.floor(0.48*ref_size)
	local w,h = math.floor(index_w*ref_width),math.floor(0.8*index_h*ref_size)
	local rect = self:rect_free(w,h)
	--sysLog(rect)
  local tab = {...}
	local arr = {
		["type"] 	= "CheckBoxGroup",
		["id"] 		= id,
		["list"] 	= table.concat(tab,","),
		["select"] 	= def_value,
		["width"]	= width,
    ["size"]    = size,
    rect = rect
	}
	tab.CK = true
	self.tmp[id] = tab
	table.insert(self.views,arr)
end
function ui:addLebel(index_w,index_h,text,size,align,color,extra)
  local size = size or 35
  local size = math.floor(size*ui_scale) or math.floor(0.6*ref_size)
  local w = math.floor(index_w*ref_width)
  local h = math.floor(0.8*index_h*ref_size)
	local rect = self:rect_free(w,h)
	local arr = {
		["type"]    = "Label",
		["text"]    = text,
		["size"]    = size,
		["align"]   = align or "left" ,
		["color"]   = color or "0,32,96",
    ["extra"]   = extra,
    rect = rect
	}
	table.insert(self.views,arr)
end
function ui:addLebel_center(index_w,index_h,text,size,align,color,extra)
  local size = size or 18
  if is_ios then size = seze or 25 end
  local size = math.floor(size*ui_scale) or math.floor(0.6*ref_size)
  local w = math.floor(index_w*ref_width)
  local h = math.floor(0.8*index_h*ref_size)
	local rect = self:rect_center(w,h)
	local arr = {
		["type"]    = "Label",
		["text"]    = text,
		["size"]    = size,
		["align"]   = align or "left" ,
		["color"]   = color or "230,230,230",
    ["extra"]   = extra,
    rect = rect
	}
	table.insert(self.views,arr)
end

function ui:addComboBox(index_w,index_h,id,def_value,...)--添加选择控件
  local w,h = index_w*ref_width,math.floor(0.7*index_h*ref_size)
  if is_ios then h = math.floor(0.65*index_h*ref_size) end
	local rect = self:rect_free(w,h)
  local tab = {...}
	local arr = {
		["type"] 	= "ComboBox",
		["id"] 		= id,
		["list"] 	= table.concat(tab,","),
		["select"] 	= def_value,
		["width"]	= width,
    ["size"]    = math.floor(0.33*ref_size),
    rect = rect
	}
	tab.RC = true
	self.tmp[id] = tab
	table.insert(self.views,arr)
end
function ui:addEdit(index_w,index_h,id,def_value,prompt,kbtype,size,align,color)--添加编辑框
	local w,h = math.floor(index_w*ref_width),math.floor(0.8*index_h*ref_size)
  if is_ios then h = math.floor(0.65*index_h*ref_size) end
  local rect = self:rect_free(w,h)
  local arr = {
      ["type"] = "Edit",
      ["id"] = id,
      ["prompt"] = prompt or "",
      ["text"] = def_value or "" ,
      --["size"] = math.floor(0.35*ref_size),
      ["align"] = align or "left",
      ["color"] = color or "0,0,255",
      ["kbtype"]  = kbtype, --"ascii""number"
      ["width"]	= width,
      rect = rect
    }
	self.tmp[id] = id
	table.insert(self.views,arr)
end
function ui:addImage(index_w,index_h,adress,align,pos)
	local w,h = index_w*ref_width,index_h*ref_width
  local rect =align == "center" and self:rect_center(w,h) or pos and math.floor(pos[1])..","..math.floor(pos[2])..","..math.floor(w)..","..math.floor(h) or self:rect_free(w,h)
  local arr = {
		["type"] = "Image",
		["src"]= adress,
		["width"]	= width,
    rect = rect
	}
	table.insert(self.views,arr)
end

function ui:show()
	local MyJsonString = tableTojson(self.ui_table)
	local ret,retTable = showUI(MyJsonString)
	for k,v in pairs(self.tmp) do
		if v then
			retTable = read(self.tmp,retTable)
			return ret, retTable
		end
	end
	return ret,retTable
end
return ui