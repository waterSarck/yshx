function 页面截图(userName)
	--local userName = userNameSt
	if userName == nil then
		userName = "user"
	end
	local jinbi = 0
	local zuanshi = 0
	local baiquan = 0
	local huangquan = 0
	local nowTime = os.date("%Y%m%d%H%M%S", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
    --local picPath1 = "/data/data/com.nx.nxproj/assistdir/Pictures/PIC/"..nowDate.."/"
    --local picPath2 = "/data/data/com.nx.nxproj/assistdir/Pictures/PIC/"..nowDate.."/"..userName.."/"
    	
    
	local picPath1 = "/mnt/shared/Pictures/PIC/"..nowDate.."/"
	local picPath2 = "/mnt/shared/Pictures/PIC/"..nowDate.."/"..userName.."/"
	local pp = mkdir(picPath1)
	sleep(1000)
	local dd = mkdir(picPath2)
	print(pp,dd)
	
	print("=============nowTime",nowTime)
	local picName =picPath2..userName..nowTime..".png"
	print("=============picName",picName)
	--截图
	snapShot(picName,0,0,0,0)
	
end
function 读取等级体力()
	local padding = 50 --识别参数
	local lv = 0
	local tili = 0
	local tlXY = findpicPoint("tj体力")
	local jsXY = findpicPoint("tj结束符")
	local lvXY = {68,60,125,108}
	print("体力坐标",tlXY)
	
	if tlXY and jsXY then
		tili = findStrReturn(tlXY[1]+30,tlXY[2],jsXY[1]-8,tlXY[2]+30,padding)
	end
	lv = findStrReturn(lvXY[1],lvXY[2],lvXY[3],lvXY[4],0,0,0,0,0)
	--findOCRParm(lvXY[1],lvXY[2],lvXY[3],lvXY[4],"9")
	--baiquan1 = findStrReturn(400,400,500,500,50)
	--picName ="/mnt/shared/Pictures/aaabb122011.png"
	--snapShot(picName,bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170)
	--picName ="/mnt/shared/Pictures/0111001.png"
	--snapShot(picName,lvXY[1],lvXY[2],lvXY[3],lvXY[4])
	
	print("体力",tili)
	print("等级",lv)
	local tjDate = {tili,lv}
	local tjName = {"体力","等级"}
	
	local logStr = ""
	--writeFile(logPath,nowDate,"|",startFlag,"|",userNameSt,"|",true)
	for i=1,#tjDate do
		--print("查找结果",ret[i].text)
		if tjDate[i] == false then
			tjDate[i]=0
		end
		logStr = logStr..tjName[i].."|"..tjDate[i].."|"
		--writeFile(logPath,tjName[i],"|",tjDate[i],"|",true)
	end
	
	--print(logPath)
	print(logStr)
	return logStr
end

function 读取资源信息(startFlag,userName,tlStr,success_action,fail_action)
	local padding = 50 --识别参数
	local zuanshi = 0
	local huangquan = 0
	local baiquan = 0
	local jinbi = 0
	local zsXY = findpicPoint("tj钻石")
	local jbXY = findpicPoint("tj金币")
	local hqXY = findpicPoint("tj黄券")
	local bqXY = findpicPoint("tj白券")
	print("钻石坐标",zsXY)
	print("钻石坐标",jbXY)
	print("黄券坐标",hqXY)
	print("白券坐标",bqXY)
	
	if zsXY and jbXY then
		zuanshi = findStrReturn(zsXY[1]+30,zsXY[2],jbXY[1]-10,zsXY[2]+30,padding)
	end
	if zsXY and jbXY then
		jinbi = findStrReturn(jbXY[1]+30,jbXY[2],jbXY[1]+200,jbXY[2]+30,padding)
	end
	if hqXY then
		--huangquan = findStrReturn(hqXY[1],hqXY[2]+140,hqXY[1]+80,hqXY[2]+170,padding+1)
		huangquan = findStrReturn(hqXY[1],hqXY[2]+140,hqXY[1]+80,hqXY[2]+170,50,0,0,0.1,1.1)
	end
	if bqXY then
		--baiquan = findStrReturn(bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170,padding+1)
		baiquan = findStrReturn(bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170,50,0,0,0.1,1.1)
	end
	--findOCRParm(bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170,"12")
	--baiquan1 = findStrReturn(400,400,500,500,50)
	--picName ="/mnt/shared/Pictures/aaabb122011.png"
	--snapShot(picName,bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170)
	--picName ="/mnt/shared/Pictures/bbb122011.png"
	--snapShot(picName,bqXY[1],bqXY[2]+140,bqXY[1]+80,bqXY[2]+170)
	
	
	--467,322,511,344
	print("钻石",zuanshi)
	print("金币",jinbi)
	print("黄券",huangquan)
	print("白券",baiquan)
	local tjDate = {zuanshi,jinbi,huangquan,baiquan}
	local tjName = {"钻石","金币","黄券","白券"}
	local nowTime = os.date("%Y-%m-%d %H:%M:%S", os.time())
    local nowTimeForm = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
    local nowTimeSort = os.time()
	--local logPath = "/mnt/shared/Pictures/tj.log"
	--if logFileNum ~= nil then
	--	logPath = "/mnt/shared/Pictures/tj"..logFileNum..".log"
	--end
	local logStr = nowTimeForm.."|"..nowDate.."|"..startFlag.."|"..userName.."|"
	--writeFile(logPath,nowDate,"|",startFlag,"|",userNameSt,"|",true)
	for i=1,#tjDate do
		--print("查找结果",ret[i].text)
		if tjDate[i] == false then
			tjDate[i]=0
		end
		logStr = logStr..tjName[i].."|"..tjDate[i].."|"
		--writeFile(logPath,tjName[i],"|",tjDate[i],"|",true)
	end
	
	local tlret = splitStr(tlStr,"|")
    local mode = getModel()
	
	local insertSql = "INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve,vx_code,fail_action,success_action)  VALUES ("
	insertSql = insertSql.."'"..userName.."','"..nowDate.."','"..startFlag.."','"..tjDate[1].."','"..tjDate[2].."','"..tjDate[4].."','"..tjDate[3].."','"..tlret[2].."','"..tlret[4].."','"..mode.."','"..fail_action.."','"..success_action.."' )"
	
    插入(insertSql)
    if startFlag == "end" then
    	local updateSql = "update yshx.user_data set".." zuanshi = '"..tjDate[1].."', jinbi = '"..tjDate[2].."', baiquan = '"..tjDate[4].."', huangquan = '"..tjDate[3].."', leve = '"..tlret[4].."' , update_date = '"..nowDate.."' , update_time = '"..nowTime.."' where login_id = '"..userName.."'"
    	local updateSort = "update yshx.user_data set update_sort = '"..nowTimeSort.."' where login_id = '"..userName.."'"
        插入(updateSql)    	
        插入(updateSort)
    end
    
	print("insertSql",insertSql)
	--print(logPath)
	print(logStr)
	--writeFile(logPath,logStr..tlStr.."\n",true)
	
	return logStr..tlStr.."\n"
	
end

function 资源统计(userName,count,startFlag,success_action,fail_action)
	local tlStr = 读取等级体力()
	if 进入仓库道具页(count)==false then    
    	return "not find cangku"
    end
	if userName == nil then
		userName = "user"
	end
	
	
	local proStr = 读取资源信息(startFlag,userName,tlStr,success_action,fail_action)
	sleep(2000)
	--截图
	页面截图(userName)
	sleep(2000)
	返回主页(1)
	return proStr
end

function 成品截图(userName,count)
	--角色/道具/装备/神器/铭印
	local tmpCount =5
	while true do
		if findpic("js角色选择") == false then
			if findpic("js角色",true) == false then
				sleep(3000)
				
				print("进入角色页面")
			end
		else
			break
		end
		tmpCount = tmpCount -1
		if tmpCount == 0 then
			writeLogFile("升级失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	for i=1,7 do
    	页面截图(userName)
        sleep(1000)
		if findpic("js机甲狂兽",false) == false  then
			
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	
	
	返回主页(5)
	loading(3)
	
	while true do
		count = count -1
		if findstr("仓库",true) or findpic("仓库图标",true) then
			print("打开仓库")
			sleep(3000)
			关闭引导页()
			if findstr("道具",true) or  findpic("道具",true) then
				print("道具截图")
				
				sleep(3000)
				页面截图(userName)
				
			end
			if findstr("神器",true) or  findpic("tj神器",true) then
				print("道具截图")
				
				sleep(3000)
				页面截图(userName)
			end
			if findstr("铭印",true) or  findpic("tj铭印",true) then
				print("道具截图")
				
				sleep(3000)
				页面截图(userName)
				
			end
			if findstr("装备",true) or  findpic("tj装备",true) then
				print("道具截图")
				
				sleep(3000)
				页面截图(userName)
				
			end
            break
		end
		if count==0 then
			break
		end
	end
	
	
	返回主页(5)
	loading(3)
	
end

function 模拟器每日任务完成情况()
local actStr = ""

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
