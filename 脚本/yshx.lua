--ngx.header.content_type="application/json;charset=utf8"
setDict(0,"欲神幻想.txt")
useDict(0)

require("基础任务")
require("出战任务")
require("武斗会任务")
require("商店任务")
require("密室任务")
require("召唤任务")
require("新号注册任务")
require("基础方法")
require("通用方法")
require("任务列表")
require("统计方法")
require("数据库操作")
local userNameSt = "none"
local actionType = {
exit = true,
data = 0,
}

function main()
	
	writeLogFile("-------启动APP开始")
	runApp("com.pinkcore.heros")
	--showControlBar(false)
	setControlBarPosNew(0,0.1)
	--sleep(10000)
	sleep(30000)
	启动监控线程()
	延时重启脚本()
	writeLogFile("-------启动APP结束")
	
	local loginState = 判断登陆状态()
	
	--configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	--configPath = "/data/data/com.nx.nxproj/assistdir/Pictures/yshxconfig.txt"
	--local config = 读取配置(configPath)
	--local modeConfig = 读取模拟器配置(config)
	--*************************任务流程
	--local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = ""--modeConfig.userInfoFilePath
	--local logPath = config.logPath
	--local actType = modeConfig.actType
	--local activeList = config.activeList
	
	---------------------20250425-------------------------------
	local modeConfDB = 查询设备配置()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = 查询任务列表(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	actType = modeConfDB[1].action_type
	activeList = 查询当前活动列表()
	
	print("actType", actType)
	print("actionlist_name", actionlist_name)
	print("actNameList", actNameList)
	print("activeList", activeList)
	
	
	
	if actType == "任务" then
		--启动任务处理线程
		writeLogFile("------开始处理任务---------")
		--beginThread(任务处理,userInfoFilePath,1,actNameList)
		任务处理(userInfoFilePath,1,actNameList,activeList)
		
	end
	if actType == "注册" then
		while true do
			stepNum = stepNum +1
			writeLogFile("*********第",stepNum,"次,注册流程********")
			新手任务(10)
		end
	end
	
	--结束监控线程
	var.exit = false
	writeLogFile("------脚本结束---------")
end

function 任务处理(userInfoFilePath,startNo,actNameList,activeList)
	local stepNum = 0
	while actionType.exit do
		stepNum = stepNum +1
		writeLogFile("*********第",stepNum,"次,任务流程********")
		--local userCount = getFileLineNum(userInfoFilePath)
		local userCount = 1
		
		writeLogFile("=============")
		writeLogFile("共计",userCount,"用户")
		--for key, values in pairs(actNameList) do
		print("actNameList:", key)
		for i=startNo,userCount do
			writeLogFile("----------------------start-任务流程-----------------------")
			writeLogFile("-------获取登录信息开始")
			--local userInfo = readUserInfoByLineNum(i,userInfoFilePath)
			local bestUserInfo = 查询设备最优账号()
			local proStr = ""
			local userName = bestUserInfo[1]
			local pwd  = bestUserInfo[2]
			local bestUser = userName
			userNameSt = userName
			local userList = {}
			userList.userName = userName
			--战力提升设置
			if userName =="zlts" then
				local retZC = 查询设备最次账号()
				writeLogFile("最次用户：",retZC[1])
				bestUser = retZC[1]
				userName = retZC[1]
				pwd = retZC[2]
			end
			writeLogFile("账号：",i,"  用户：",userName)
			writeLogFile("最优用户：",bestUser)
			print("bestUser:",bestUser)
			if bestUser ~= "none" and userName~=bestUser then
				goto nextUser
			end
			writeLogFile("账号：",i,"  用户：",userName)
			writeLogFile("-------获取登录信息结束")
			writeLogFile("-------登录开始")
			--若为非登录状态则登录，否则继续
			loading(5)
			if isInPage(5,"访客登入","访客登入","txt",txtParam,0.9) then
				print("--开始登录")
				登录(userName,pwd)
				loading(5)
			end
			writeLogFile("-------登录结束")
			
			writeLogFile("-------签到开始")
			签到任务()
			writeLogFile("-------签到结束")
			
			writeLogFile("-------去广告开始")
			去除广告任务()
			writeLogFile("-------去广告结束")
			
			
			writeLogFile("-------资源统计开始")
			local strst = 资源统计任务(userName,"start","start","start")
			proStr = proStrAdd(proStr,strst)
			成品截图任务(userName)
			writeLogFile("-------资源统计结束")
			
			writeLogFile("-------任务处理开始")
			--sleep(50000)
			
			local actFlag = false
			local fail_action = ""
			local success_action = ""
			for j, actName in ipairs(actNameList) do
				print("  Index:", j, "Value:", actName)
				
				local actfun =_G[actName]
				if actfun then
					actFlag = actfun(activeList,userList)
					if actFlag then
						writeLogFile("执行任务：",actName,"状态：成功")
						success_action = success_action..","..actName
					else
						writeLogFile("执行任务：",actName,"状态：失败")
						fail_action = fail_action..","..actName
					end
					
				else
					writeLogFile("查找任务：",actName,"失败")
				end
				
			end
			
			
			writeLogFile("-------任务处理结束")
			
			writeLogFile("-------资源统计结尾开始")
			local strend = 资源统计任务(userName,"end",success_action,fail_action)
			proStr = proStrAdd(proStr,strend)
			
			proStrWriteToFile(proStr)
			
			writeLogFile("-------资源统计结束")
			
			writeLogFile("-------退出登录开始")
			退出登录(6)
			writeLogFile("-------退出登录结束")
			sleep(2000)
			writeLogFile("----------------------end-任务流程----------------------")
			::nextUser::
		end
		--end
	end
	
end
function thread_func2(arg)
	while actionType.exit do
		writeLogFile("开始检查错误")
		处理切屏异常("ys图标")
		处理公告弹窗异常("yc公告弹窗")
		处理闪退异常()
		处理登录失败异常()
		处理系统异常("yc预期外错误")
		--处理重新登录异常
		--定时重启脚本({"14"})
		sleep(90000)
	end
end



function tx()
	configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	local config = 读取配置(configPath)
	local modeConfig = 读取模拟器配置(config)
	--*************************任务流程
	local actNameList = config[modeConfig.actNameList]
	print("0")
	print(actNameList)
	for key, values in pairs(actNameList) do
		print("Person:", key)
		-- 遍历每个 person 的数组
		for i, value in ipairs(values) do
			print("  Index:", i, "Value:", value)
			print()
		end
	end
	print(actNameList[1])
	print(actNameList[2])
end



function tx2()
	configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	local mode = getModel()
	local config = 读取配置(configPath)
	local modeConfig = 读取模拟器配置(config)
	local modeConfigDB = 查询设备配置(mode)
	--*************************任务流程
	local actNameList = config[modeConfig.actNameList]
	
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local actTypeDB = modeConfigDB[1].action_type
	local actionlist_name = modeConfigDB[1].actionlist_name
	local actionList = 查询任务列表(actionlist_name)
	local activeList = config.activeList
	for key, values in pairs(actNameList) do
		print("actNameList:", key)
	end
	print("config", config)
	print("modeConfig", modeConfig)
	print("modeConfigDB", modeConfigDB)
	print("actNameList", actNameList)
	print("actNameListDB", actionList)
	print("userInfoFilePath", userInfoFilePath)
	print("logPath", logPath)
	print("actType", actType)
	print("actTypeDB", actTypeDB)
	print("activeList", activeList)
	--推活动剧情本任务(activeList)
	--推活动积分本任务(activeList)
	--刷复刻活动商店任务(activeList)
	--推小死斗任务(activeList)
	--推复刻活动剧情本任务(activeList)
	--推复刻活动积分本任务(activeList)
	--推活动积分本任务(activeList)
	--刷活动商店任务(activeList)
	--扫荡复刻活动任务(activeList)
	--推复刻活动死斗任务(activeList)
	--活动抽奖任务(activeList)
	--推大死斗2任务(activeList)
	--推主线第三章任务()
	--推主线第四章任务()
	--推主线第五章任务()
	--推主线第六章任务()
	--刷活动最近一章任务(activeList)
	--
end

function tx3()
	
	local bestUserInfo = 查询设备最优账号()
	local proStr = ""
	local userName = bestUserInfo[1]
	local pwd  = bestUserInfo[2]
	local bestUser = userName
	local userList = {}
	userList.userName = userName
	领取每日任务奖励任务(activeList,userList)
end
function tx4()
	local modeConfDB = 查询设备配置()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = 查询任务列表(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	local actType = modeConfDB[1].action_type
	local activeList = 查询当前活动列表()
	
	--活动抽奖(activeList.activeName,"抽奖箱",10)
	--推活动剧情本任务(activeList)
	--推活动积分本任务(activeList)
	--推新春活动积分本任务(activeList)
	--推新春大死斗1任务(activeList)
	--刷复刻活动商店任务(activeList)
	--推小死斗任务(activeList)
	--推复刻活动死斗任务(activeList)
	--
	--推新春大死斗1任务(activeList)
	--推新春大死斗2任务(activeList)
	--推活动积分本任务(activeList)
	--刷活动商店任务(activeList)
	--扫荡复刻活动任务(activeList)
	--推复刻活动死斗任务(activeList)
	--活动抽奖任务(activeList)
	--推大死斗1任务(activeList)
	--推大死斗2任务(activeList)
    --成品截图("123",6)
    推复刻活动剧情本任务(activeList)
    推复刻活动积分本任务(activeList)
	--推主线第三章任务()
	--推主线第四章任务()
	--推主线第五章任务()
	--推主线第六章任务()
	--刷活动最近一章任务(activeList)
    --领兑换码任务()
	--刷武斗会商店任务()
	--刷神力商店任务()
end

function 找到聊天窗(name)
	if findStrSub(name,true) then
		sleep(2000)
		if findpic("qq-发送",true) then
			setIme(true)
			inputText(msg,true)
			sleep(2000)
			if findStrSub("发送",true) then
			end
		end
		
	end
end

function 发送QQ消息(msg)
	if findpic("qq-发送",true) then
		setIme(true)
		inputText(msg,true)
		sleep(2000)
		if findpic("qq-发送按钮",true) then
			print("发送消息：",msg)
		end
	end
end

function 发送sg消息(msg)
	
	findpic("sg-root取消",true)
	sleep(2000)
	findpic("sg-hh小猪",true)
	sleep(2000)
	if findpic("sg-发送",true) then
		setIme(true)
		inputText(msg,true)
		sleep(2000)
		if findpic("sg-发送按钮",true) then
			print("发送消息：",msg)
		end
	end
end
function 数据推送()
	--runApp("com.pinkcore.heros")
	--登录QQ()
	--找到聊天窗口并发送消息("肝帝","go")
	--发送QQ消息("12321")
	--while true do
	local end_date = os.date("%m-%d", os.time())
	local begin_date = utf8.right(获取昨天日期(),5)
	local nowH = os.date("%H", os.time())
	if math.tointeger(nowH) >11 then
		begin_date = os.date("%m-%d", os.time())
		end_date = utf8.right(获取明天日期(),5)
	end
	
	local vxlist = {"A01","A02","A03","A04","A05","A06","A07","ACT01","ACT02","ACT03","ACT04","ACT05","ACT06","ACT07","ACT08","ACT09","ACT10","ACT11","ACT12"}
	for key, values in pairs(vxlist) do
		print("vxlist:key", key)
		print("vxlist:values", values)
		local actMsgNot = 查询每日任务完成情况(values,0)
		local actMsgYes = 查询每日任务完成情况(values,1)
		local sendMsg = values.."每日任务统计:\n"..begin_date.."至"..end_date.."\n".."已完成：\n"..actMsgYes.."未完成：\n"..actMsgNot
		sleep(30000)
		发送sg消息(sendMsg)
	end
	sleep(7000000)
	restartScript()
	--end
	
end

function tx1()
	local modeConfDB = 查询设备配置()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = 查询任务列表(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	local actType = modeConfDB[1].action_type
	local activeList = 查询当前活动列表()
	
	print("actNameList", actNameList)
	for key, values in pairs(actNameList) do
		print("key", key)
		print("values", values)
		for j, actName in ipairs(values) do
			print("actName", actName)
		end
	end
	--print("actType", actType)
	--print("actionlist_name", actionlist_name)
	--
	--print("activeList", activeList)
end
--发送sg消息("111")
--数据推送()
--领取邮件任务()
--findpic("hd-syxl-jq3",false)
--关闭广告页()
--tx4()
--新手任务2上古神器()
--查询当前活动列表()
--tx4()
--findStrReturn(0,570,324,711,50,0,0.1,0.4,2.7)
--findOCRParm(0,570,324,711,"AUTO",50,0,0.1,0.4,2.7)
--findstrtest("TO",false,0,570,324,711,50,0,0.1,0.4,2.7)
--findstrtest("TO")
--findStrSub("AUTO",false,0,570,324,711,50,0,0.1,0.4,2.7)
--findStrSub("抽奖箱",true,1010,475,1270,590)
--过剧情(1)
--过战斗(count)
--返回主页(5)
--进入仓库道具页(5)
--findstr("道具",false) 
--findpic("道具",false)
--连续推图()
--新手任务3召唤()
--返回主页(3)
--新手任务2上古神器()
--关闭引导页(5)
--findStrSub("第1队")
--新手任务4出战()
--新手任务4出战()
--新手任务7第一章(10,"zx1-3","zx第一章")
main()
--snapShot("/mnt/shared/Pictures/PIC/1122.png",0,570,324,711)
--
--过战斗(6)


