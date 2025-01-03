setDict(0,"欲神幻想.txt")
useDict(0)


function 是否主页()
	if findpic("出战") then
		return true
	else
		return false
	end
	
end

function 是否进入主页(count)
	while true do
		count = count -1
		if isInPage(10,"首页","出战","img",0,0.9) and isInPage(5,"广告关闭","广告关闭","img",0,0.9)==false then
			print("进入主页成功")
			return true
		end
		if count==0 then
			print("进入主页失败")
			return false
		end
	end
end
function 返回主页(count)
	while true do
		count = count -1
		findpic("返回主页",true)
		
		
		findpic("返回主页2",true)
		
		
		findPicAndClick("wdh返回主页",true,5,5)
		
		
		findpic("返回主页3",true)
		
		findpic("返回主页-商店",true)
		
		
		sleep(3000)
		if findpic("出战") then
			print("进入主页成功")
			return true
		end
		if count==0 then
			print("进入主页失败")
			return false
		end
		if findpic("dkt-暂停")==false then
			mytap(1249,30)--点击返回主页位置
		end
	end
end
function 返回上一层(count)
	if count == nil then
		count = 3
	end
	local picAry = {"zx返回","zx返回2","zx返回3","zx返回4","zx返回5","wdh返回"}
	while true do
		count = count -1
		if findPicAry(picAry,true) then
			writeLogFile("返回上一层成功")
			return true
		end
		
		
		sleep(3000)
		
		if count==0 then
			writeLogFile("返回上一层失败，点击固定位置")
			mytap(51,26)
			return false
		end
		--mytap(1249,30)--点击返回主页位置
	end
end
function 关闭引导页(count)
	while findpic("活动指引按钮",true) or findpic("关闭引导2",true) do
		print("关闭指引")
		sleep(3000)
	end
end
function 密室_关闭引导页(count)
	while (findpic("活动指引按钮",true) or findpic("关闭引导2",true)) do
		print("关闭指引")
		sleep(3000)
		count = count -1
		if count < 0 then
			break
		end
	end
end
function 角色页_关闭引导(count)
	while findpic("js装备")==false and (findpic("活动指引按钮",true) or findpic("关闭引导2",true)) do
		print("关闭指引")
		sleep(3000)
	end
end

function 升阶页_关闭引导(count)
	while findstr("升阶")==false and (findpic("活动指引按钮",true) or findpic("关闭引导2",true)) do
		print("关闭指引")
		sleep(3000)
	end
end


function 处理异常(exceptionName,buttonName)
	local count = 10
	if findstr(exceptionName) or findpic(exceptionName) then
		writeLogFile("开始处理"..exceptionName.."异常")
		while findstr(exceptionName) or findpic(exceptionName) do
			
			if findstr(buttonName,true) or findpic(buttonName,true) then
				sleep(40000)
			end
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("处理"..exceptionName.."异常失败，切换VPN")
				切换VPN()
				
			end
			if count==0 then
				writeLogFile("处理"..exceptionName.."异常失败")
				break
			end
		end
		sleep(3000)
		if 是否启动页(true) then
			writeLogFile("处理"..exceptionName.."异常成功，重新启动")
		end
		writeLogFile("处理"..exceptionName.."异常结束")
	end
end

function 切换VPN()
	writeLogFile("启动VPN")
	runApp("com.tidalab.v2board.clash.foss")
	sleep(3000)
	if findpic("VPN连接",true) then
		writeLogFile("连接VPN")
	elseif findpic("VPN断开连接",true) then
		writeLogFile("断开VPN")
	end
	sleep(3000)
	runApp("com.pinkcore.heros")
end


function 重启服务()
	writeLogFile("-------关闭APP开始")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------关闭APP结束")
	writeLogFile("-------启动APP开始")
	runApp("com.pinkcore.heros")
	
	writeLogFile("-------启动APP结束")
end

function 启动监控线程()
	writeLogFile("--------------------启动监控线程---------------------")
	
	--beginThread(thread_func,1)
	beginThread(thread_func2,1)
	--var.exit = false
	--sleep(100000)
	
end

function thread_func(arg)
	while var.exit do
		writeLogFile("开始检查错误")
		处理异常("网路错误","重试")
		处理异常("重新登入","重新登入")
		sleep(600000)
	end
end



function 处理切屏异常(exceptionName)
	local count = 10
	if findpic(exceptionName) then
		writeLogFile("开始处理"..exceptionName.."异常")
		while findpic(exceptionName) do
			
			if findpic(exceptionName,true) then
				sleep(3000)
				writeLogFile("点击图标重启应用")
			end
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("处理"..exceptionName.."异常失败，切换VPN")
				--切换VPN()
				
			end
			if count==0 then
				writeLogFile("处理"..exceptionName.."异常失败")
				break
			end
		end
		sleep(3000)
		if 是否启动页(true) then
			writeLogFile("处理"..exceptionName.."异常成功，重新启动")
		end
		writeLogFile("处理"..exceptionName.."异常结束")
	end
end

function 处理公告弹窗异常(exceptionName)
	local count = 10
	if findpic(exceptionName) then
		writeLogFile("开始处理"..exceptionName.."异常")
		while findpic(exceptionName) do
			
			返回上一层(3)
			writeLogFile("处理公告弹窗异常成功")
			
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("处理"..exceptionName.."异常失败")
				--切换VPN()
				
			end
			if count==0 then
				writeLogFile("处理"..exceptionName.."异常失败")
				break
			end
		end
		sleep(3000)
		if 是否启动页(true) then
			writeLogFile("处理"..exceptionName.."异常成功，重新启动")
		end
		writeLogFile("处理"..exceptionName.."异常结束")
	end
end

function 处理闪退异常()
	local count = 10
	if 是否启动页(false) then
		sleep(50000)
		writeLogFile("开始处理闪退".."异常")
		if 是否启动页(false) then
			
			--返回上一层(3)
			--重启脚本()
			线程重启脚本(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("处理闪退".."异常结束")
	end
end

function 处理登录失败异常()
	local count = 10
	if findpic("yc登录失败") or findpic("yc登录失败1")then
		sleep(50000)
		writeLogFile("开始处理登录失败".."异常")
		if findpic("yc登录失败") or findpic("yc登录失败1") then
			
			--返回上一层(3)
			--重启脚本()
			线程重启脚本(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("处理闪退".."异常结束")
	end
end

function 处理系统异常(exceptionName)
	if findpic(exceptionName) then
		sleep(50000)
		writeLogFile("开始处理"..exceptionName.."异常")
		if findpic(exceptionName) then
			
			--返回上一层(3)
			--重启脚本()
			线程重启脚本(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("处理闪退"..exceptionName.."异常")
	end
end
function 定时重启脚本(inTime)
	local count = 10
	--print("开始定时点重启脚本")
	if  是否几点(inTime) then
		writeLogFile("开始定时点重启脚本2")
		重启脚本(1000)
	end
end

function 延时重启脚本()
	local sec = 0
	-- 获取当前时间的Unix时间戳（秒）
	local now = os.time()
	
	-- 获取当前日期和时间
	local current_date = os.date("*t", now)
	
	local hour = current_date.hour
	local second_c = math.random(1,9)
	--print("开始定时点重启脚本")
	if  hour<11 then
		sec = 计算秒数(11,0)*1000+second_c*10000
		writeLogFile("当前时间小于11点"..sec.."毫秒后重启脚本")
		setTimer(重启脚本,sec)
	else
		sec = 计算秒数(11,1)*1000+second_c*10000
		writeLogFile("当前时间大于11点"..sec.."毫秒后重启脚本")
		setTimer(重启脚本,sec)
	end
end
function 重启脚本()
	toast("开始重启当前脚本")
	print("开始重启当前脚本")
	writeLogFile("-------关闭APP开始")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------关闭APP结束")
	sleep(1000)
	writeLogFile("-------重启脚本开始")
	restartScript()
	writeLogFile("-------重启脚本结束")
	
end
function 线程重启脚本(times)
	toast("开始重启当前脚本")
	print("开始重启当前脚本")
	writeLogFile("-------关闭APP开始")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------关闭APP结束")
	sleep(1000)
	writeLogFile("-------重启脚本开始")
	setTimer(restartScript,times)
	writeLogFile("-------重启脚本结束")
end

function writeLogFile(...)
	
	local t = {...}
	local nowTime = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
	local logPath = "/mnt/shared/Pictures/log/"..nowDate.."_yushen.log"
	local mode = getModel()
	if mode ~= nil then
		logPath = "/mnt/shared/Pictures/log/"..nowDate.."_yushen"..mode..".log"
	end
	--print(mode)
	local logStr = nowTime
	
	for i=1,#t do
		--print("查找结果",ret[i].text)
		logStr = logStr.." "..t[i]
	end
	--print(logPath)
	writeFile(logPath,logStr.."\n",true)
	print(logStr)
end

--是否载入中
function 异常重新登录(count)
	
	while true do
		count = count -1
		if findpic("异常重新登录",true) or findstr("异常重登确认",true) then
			print("重新登录")
			sleep(10000)
			count = count +1
		end
		if findpic("cw网络错误") then
			findpic("确认")
			print("重新登录")
			sleep(10000)
			count = count +1
		end
		if count==0 then
			return false
		end
	end
end

--返回 true 成功，1 滑块失败，2 信箱未填，3 密码未填
function 登录检查()
	--填写信息检查 信箱未填、密码未填、滑块未到位
	print("登录检查开始")
	for i=1,3 do
		
		if findpic("滑动") or findpic("再试一次") or findstr("向右滑动填充拼图") or findstr("×请完成安全验证") or findpic("dl请完成安全验证") then
			print("滑块失败")
			return 1
		end
		if findpic("dl信箱未填写") or findstr("※信箱未填写") then
			print("信箱未填写")
			sleep(1000)
			return 2
		end
		if findpic("dl请输入密码") or findstr("※请输入密码") then
			print("密码未填写")
			sleep(1000)
			return 3
		end
		if findstr("登入错误") or findstr("返回")then
			print("captcha验证码失败")
			sleep(1000)
			return 4
		end
		swipe(645,782,645,1240,1000)
		sleep(1000)
	end
	return true
end

--启动页检查 clickflag:是否点击start
function 是否启动页(clickflag)
	local clickType = clickflag
	local picAry = {"启动页-文字","启动页-问号","启动页-小喇叭1","bsn-启动页","启动页-小喇叭","qkl-启动页","启动页-小喇叭3"}
	local PageFlag = findPicAry(picAry,false)
	if clickType ~= true then
		clickType = false
	end
	
	if findStrSubAry({"开始运行","人物仅为架空虚构","21岁以上"}) or PageFlag then
		if clickType then
			mytap(647,637)--点击登录press to start
		end
		return true
	else
		return false
	end
end

function 是否周几(opOfWeek)
	if opOfWeek ==nil then
		opOfWeek = {"1","2","3","4","5","6","7"}
	end
	local dayOfWeek = os.date("%w")
	print("今天系统时间是周",dayOfWeek)
	for i=1,#opOfWeek do
		if dayOfWeek == opOfWeek[i] then
			print("系统时间等于计划时间周",opOfWeek[i])
			return true
		else
			print("不是计划时间周",opOfWeek[i])
			
		end
	end
	return false
end

function 是否几点(inTime)
	if inTime ==nil then
		return false
	end
	local now = os.date("%Y-%m-%d %H:%M:%S")
	local year = string.sub(now,1,4)
	local month = string.sub(now,6,7)
	local day = string.sub(now,9,10)
	local hour = string.sub(now,12,13)
	print("现在系统时间是",hour,"点")
	for i=1,#inTime do
		if hour == inTime[i] then
			print("系统时间等于计划时间",inTime[i])
			return true
		else
			print("不是计划时间",inTime[i])
			
		end
	end
	print("不是计划时间",inTime[i])
	return false
end

function 计算秒数(inHour,inDay)
	-- 获取当前时间的Unix时间戳（秒）
	local now = os.time()
	
	-- 获取当前日期和时间
	local current_date = os.date("*t", now)
	
	-- 设置明天的日期，时间设置为11点
	local tomorrow = {
	year = current_date.year,
	month = current_date.month,
	day = current_date.day + inDay,
	hour = inHour,
	min = 0,
	sec = 0
	}
	
	-- 将明天的日期时间转换为Unix时间戳
	local tomorrow_time = os.time(tomorrow)
	
	-- 计算两个时间戳之间的秒数
	local seconds_to_tomorrow_11 = tomorrow_time - now
	
	print("明天"..inHour.."点距离当前时间的秒数是: " .. seconds_to_tomorrow_11)
	return seconds_to_tomorrow_11
end

function 进入仓库道具页(count)
	while true do
		count = count -1
		if findstr("仓库",true) or findpic("仓库图标",true) then
			print("打开仓库")
			sleep(3000)
			关闭引导页()
			if findstr("道具",true) or  findpic("道具",true) then
				print("打开道具")
				sleep(3000)
				return true
			end
		end
		if count==0 then
        writeLogFile("进入仓库道具页失败")
			return false
		end
	end
end
