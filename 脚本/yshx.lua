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
						actFlag = actfun(activeList)
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
	--推活动积分本任务(activeList)
	--刷复刻活动商店任务(activeList)
	推小死斗任务(activeList)
	--推复刻活动剧情本任务(activeList)
	--推复刻活动积分本任务(activeList)
	--推活动积分本任务(activeList)
	--刷活动商店任务(activeList)
	--推复刻活动死斗任务(activeList)
	--活动抽奖任务(activeList)
	--推大死斗2任务(activeList)
	--推主线第三章任务()
	--推主线第四章任务()
	--推主线第五章任务()
	--推主线第六章任务()
end
--findstrtest()
--findStrSub("God",true,761,81,1254,530)
--findpic("sd离开")
--findStrSub("确认",true)
--findStrSub("全部领取")
--刷神力50任务()
--刷神力任务()
--推主线第三章任务()
--推主线第三章任务()
--推主线第五章任务()
--tx2()

--领取每日任务奖励任务()
--findpic("sq强化")
--强化神器任务()
--领取活动任务奖励()
--刷活动最近一章任务()
--推活动剧情本任务()
--推活动积分本任务()
--刷活动积分本任务()

--findpic("确认",true)
--活动抽奖任务()
--刷活动商店任务()

--扫荡复刻活动任务()
--刷活动商店优惠任务()
--推活动积分本任务()
--推活动剧情本任务()
--推复刻活动死斗任务()
--是否周几({"3","4","5"})
--处理公告弹窗异常("yc公告弹窗")
--刷复刻活动商店任务()
--findpic("qkl-启动页")
--延时重启脚本()
--推小死斗任务()
--刷活动积分本任务()
--findPicAndClick("wdh出战次数不足",true)
--刷武斗会特殊任务()
--领兑换码任务()
--连续推图()

--推活动积分本任务()
--领取活动任务奖励()
--刷活动积分本任务()
--推大死斗2任务()
--刷活动商店任务()
--推断空塔任务()
--推活动剧情本任务()
--推活动积分本任务()
--推活动积分本任务()
--推复刻活动死斗任务()
--刷神力商店任务()
--刷武斗会商店任务()
--findStrSub("Maniac",true)
--findStrSub("65",true)
--findstrtest()
--(findstr("Story") and (findstr("NEW!",true) or findstr("NEWI",true)))
--推断空禁界任务()
--刷坚壁本任务()
--推小死斗任务()
--成品截图("sz",6)
--连接数据库()
--资源统计任务("13221321","start")
--升级角色任务()
--推断空塔任务()
--是否启动页(false)
--退出登录(6)
--成品截图(userName,6)
--强化装备(5)
--刷武斗会特殊任务()
--tx2()
--推困难第二章任务()
--推主线第四章任务()
--成品截图("zz",6)
--清理仓库任务()
--领取邮件任务()
--升级角色任务()
--探索任务()
--过战斗(6)
--插入("insertSql INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('test','20240611','start','19017','9780083','29','103','219/120','65')")
--查询("select * from yshx.data_log t where t.creat_date = '2024-06-06'")
--资源统计任务("74059732799@qq.com","end")
--插入("insertSql INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('test','20240611','start','19017','9780083','29','103','219/120','65')")
--升级角色任务()
--刷武斗会商店任务()
--刷神力商店任务()
--强化装备任务()
--刷每日商店任务()
--领兑换码任务()
--资源统计任务("test123","end","qiandao","lingyoujian")
--findpic("tj每日任务完成")
--过战斗(9)
--local str = "INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve,vx_code,fail_action,success_action)  VALUES ('test123456','20240618','end','18602','11974985','着','114','120/120','64','ACTMAX02',',刷复刻活动商店任务','' )"
--插入(str)
--findpic("hd点击输入2")
--findpic("hd回归码OK",false)
--领回归码任务()
--print(查询设备最优账号())
---领回归码任务()
--findpic("qj自动播放1")
--过剧情(4)
--findpic("sd-zq-每月羁绊契约14",true)
--findpic("zd返回战斗",false)
--推断空禁界2任务()
--新手任务7第一章任务()
--mytap(1162,36)
--mytap(650,280)
--推主线第一章任务()
--推主线第二章任务()
--推主线第三章任务()
--推主线第四章任务()
--角色页_关闭引导(5)
--升星任务()
--findStrSubUTF8("4-1")
--推主线第五章任务()
--推主线第六章任务()
--推断空禁界2任务()
--刷武斗会任务()
--领取每日任务奖励任务()
--领取新手任务奖励()

--查询设备最次账号()
--强化神器任务()
--findpic("xsrw提示")
--findpic("xsrw跳过剧情")
--findstr("蜜室")
--findpic("xsrw密室2")

--新手任务6密室()
--local bestUser = 查询设备最优账号()
--local proStr = ""
--local userName = bestUser[1]
--local pwd  = bestUser[2]
--print("bestUser",bestUser)
--print("userName",userName)
--print("pwd",pwd)
main()
--新建账号入库("test20240823","12345")
--findstr("自动选择")
--findpic("xsrw密室时御者")
--tx3()
--绑定游戏()
--findpic("xsrw绑定确认是")
--推大死斗1任务()
--登录("gfkfggqfgf@sina.com","fagafafkaqa4")
--刷金币本任务()
--购买体力药任务()
--购买黄券任务()


