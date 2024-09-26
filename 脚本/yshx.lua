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
	
	configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	local config = 读取配置(configPath)
	local modeConfig = 读取模拟器配置(config)
	--*************************任务流程
	local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local activeList = config.activeList
	
	
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
		for key, values in pairs(actNameList) do
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
				for j, actName in ipairs(values) do
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
		end
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
	local config = 读取配置(configPath)
	local modeConfig = 读取模拟器配置(config)
	--*************************任务流程
	local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local activeList = config.activeList
	--推活动剧情本任务(activeList)
	推活动积分本任务(activeList)
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
end

--tx2()
--新手升级角色(5)
--findStrSub("全部领取",true)
--领取活动任务奖励()
--领取每日任务奖励任务()
--findpic("sd传说兑换币")
--刷商店("神力殊死战",{"sd传说兑换币"},4)
--刷商店("特殊竞技场商店",{"sd传说兑换币","sd-wdh-金币","sd-wdh-体力药"},3)
领取每日任务奖励任务()
--main()
--推困难第一章任务()
--推困难第二章任务()
--推主线本文字("zx第三章",{"zxjq3-4"},5,1,"3")
--推主线本文字("zx第四章",{"zxjq3-4"},5,1,"4")
--推主线本文字("zx第五章",{"zxjq3-4"},5,1,"5")
--推主线第二章任务()
--推主线第三章任务()
--推主线第四章任务()
--推主线第五章任务()
--推主线第六章任务()
--新建账号入库("test20240823","12345")
--是否启动页(false)
--findstrtest("自动选择")
--isInPage(5,"访客登入","访客登入","txt",txtParam,0.9)
--findpic("sd传说兑换币")
--findpic("zd加速2")
--findpic("zd加速3")
--tx3()
--绑定游戏()
--findpic("xsrw绑定确认是")
--推大死斗1任务()
--登录("gfkfggqfgf@sina.com","fagafafkaqa4")
--刷金币本任务()
--购买体力药任务()
--购买黄券任务()


