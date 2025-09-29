function 查询(sqlStr)
	local handle,err = mysql_connect("192.168.3.99",3306,"mysql","root","sz123456")
	local ret = ""
	local tb = ""
	if handle ~= nil then
		print("连接数据库成功");
		--local ret,err,tb = mysql_execSQLWithResult(handle,"INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('qahqakgkef@sina.com', '20200401', 'start', '12321','111','222','333','120','60')")
		ret,err,tb = mysql_execSQLWithResult(handle,sqlStr)
		print(sqlStr)
		print(ret,err,tb)
		if ret then
			for i=1,#tb do
				print(tb[i]) --打印每一行
			end
		else
			if err ~=nil then
				print(string.format("执行失败 %s",err))
			end
		end
		mysql_close(handle)
	else
		print(string.format("连接失败，错误原因 %s",err))
	end
	mysql_close(handle)
	return tb
end

function 插入(sqlStr)
	writeLogFile("------------插入数据库开始--------------")
	local handle,err = mysql_connect("192.168.3.99",3306,"mysql","root","sz123456")
	if handle ~= nil then
		writeLogFile("连接数据库成功")
		writeLogFile("执行语句：",sqlStr)
		--local ret,err,tb = mysql_execSQLWithResult(handle,"INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('qahqakgkef@sina.com', '20200401', 'start', '12321','111','222','333','120','60')")
		local ret,err,tb = mysql_execSQLWithResult(handle,sqlStr)
		--local ret,err,tb = mysql_execSQLWithResult(handle,"select count(*) from yshx.data_log")
		print(ret,err,tb)
		if ret then
			for i=1,#tb do
				print(tb[i]) --打印每一行
			end
		else
			if err ~=nil then
				writeLogFile(string.format("执行失败 %s",err))
			end
		end
		mysql_close(handle)
	else
		writeLogFile(string.format("连接失败，错误原因 %s",err))
	end
	writeLogFile("------------插入数据库结束--------------")
	mysql_close(handle)
	return ret
end

function 查询优先级最高账号(mode)
	local queryUser = "select login_id,login_pass from yshx.user_data where vx_code = '"..mode.."' and update_sort = (select MIN(update_sort) from yshx.user_data where vx_code = '"..mode.."' and state = '1') and state = '1'"
	return 查询(queryUser)
end

function 查询优先级最低账号()
	local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MAX(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	return 查询(queryUser)
end

function 插入日志()
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
	
	
	local tlret = splitStr(tlStr,"|")
	local mode = getModel()
	
	local insertSql = "INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve,vx_code,fail_action,success_action)  VALUES ("
	insertSql = insertSql.."'"..userName.."','"..nowDate.."','"..startFlag.."','"..tjDate[1].."','"..tjDate[2].."','"..tjDate[4].."','"..tjDate[3].."','"..tlret[2].."','"..tlret[4].."','"..mode.."','"..fail_action.."','"..success_action.."' )"
	
	插入(insertSql)
	local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MIN(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	return 查询(queryUser)
end

function 查询设备最优账号()
	local mode = getModel()
	local tb = 查询优先级最高账号(mode)
	local user = "none"
	if #tb >= 1 then
		user = tb[1].login_id
		print(user) --打印每一行
		return {tb[1].login_id,tb[1].login_pass}
	end
	return user
end

function 查询兑换码()
	
	local queryInviteCode = "select invite_code,invite_dec from yshx.invite_code t where t.state = '1'"
	local tb = 查询(queryInviteCode)
	local user = "none"
	if #tb >= 1 then
		print(tb) --打印每一行
		return tb
	end
	return user
end
function 查询设备最次账号()
	--local mode = getModel()
	local tb = 查询优先级最低账号(mode)
	local user = "none"
	if #tb >= 1 then
		user = tb[1].login_id
		print(user) --打印每一行
		return {tb[1].login_id,tb[1].login_pass}
	end
	return nil
end

function 查询账号创建天数(userName)
	
	local queryCount = "select DATEDIFF(CURDATE(), t.creat_date) as creatCount from yshx.user_data t where t.login_id = '"..userName.."';"
	print(queryCount)
	local tb = 查询(queryCount)
	
	local creatCount = 0
	if #tb >= 1 then
		creatCount = tb[1].creatCount
		print(creatCount) --打印每一行
		return creatCount
	end
	return 0
	
end

function 新建账号入库(login_id,login_pass)
	local nowTime = os.date("%Y-%m-%d %H:%M:%S", os.time())
	local nowTimeForm = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
	local nowTimeSort = os.time()
	
	local mode = getModel()
	
	local insertSql = "INSERT INTO yshx.user_data (login_id,login_pass, creat_date,choushu,zuanshi,jinbi,baiquan,huangquan,leve,selltype,state,update_time,update_sort,update_date,vx_code)  VALUES ("
	insertSql = insertSql.."'"..login_id.."','"..login_pass.."','"..nowDate.."','0','0','0','0','0','0','yyxs','1','"..nowTime.."','"..nowTimeSort.."','"..nowTime.."','ACT' )"
	插入(insertSql)
	--local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MIN(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	--查询(queryUser)
end

function 查询设备配置()
	local mode = getModel()
	local querySql = "select * from yshx.mode_config t where t.vx_code = '"..mode.."' and t.state = '1'"
	return 查询(querySql)
end

function 查询任务列表(actionlist_name)
	local querySql = "select * from yshx.actionlist_config t where t.actionlist_name = '"..actionlist_name.."' and t.state = '1' order by sort"
	local rs = 查询(querySql)
	local actionlist = {}
	if #rs >= 1 then
		for i=1,#rs do
			table.insert(actionlist,rs[i].action_name)
			print(actionlist) --打印每一行
			
		end
		
	end
	return actionlist
end

function 查询当前活动列表()
	
	local querySqlHD = "select * from yshx.active t where t.active_type = 'hd' and t.state = '1'"
	local hd = 查询(querySqlHD)
	local querySqlFK = "select * from yshx.active t where t.active_type = 'fk' and t.state = '1'"
	local fk = 查询(querySqlFK)
	local activeList = {}
	if #hd >= 1 then
		activeList.activeName = hd[1].active_name
		activeList.activeJQName = hd[1].active_jq_name
		activeList.activeJFName = hd[1].active_jf_name
		activeList.activeSD1Name = hd[1].active_sd1_name
		activeList.activeSD2Name = hd[1].active_sd2_name
		activeList.activeSDXName = hd[1].active_sdx_name
		local activeJqList = splitStr(hd[1].active_jq_list,"|")
		activeList.activeHdJqList = activeJqList
		local activeSD1List = splitStr(hd[1].active_sd1_list,"|")
		activeList.activeHdSD1List = activeSD1List
		local activeSD2List = splitStr(hd[1].active_sd2_list,"|")
		activeList.activeHdSD2List = activeSD1List
		local activeJfList = splitStr(hd[1].active_jf_list,"|")
		activeList.activeHdJfList = activeJfList
		print("activeList",activeList)
	end
	if #fk >= 1 then
		activeList.activeFKName = fk[1].active_name
		activeList.activeFKJQName = fk[1].active_jq_name
		activeList.activeFKJFName = fk[1].active_jf_name
		activeList.activeFKSDName = fk[1].active_fksd_name
		local activeJqList = splitStr(fk[1].active_jq_list,"|")
		activeList.activeFkJqList = activeJqList
		local activeJfList = splitStr(hd[1].active_jf_list,"|")
		activeList.activeHdJfList = activeJfList
		print("activeList",activeList)
	end
	return activeList
end

function 查询每日任务完成情况(vx_code,qryType)
	local nowH = os.date("%H", os.time())
	local end_date = os.date("%Y-%m-%d", os.time())
	local begin_date = 获取昨天日期()
	if math.tointeger(nowH) >11 then
		begin_date = os.date("%Y-%m-%d", os.time())
		end_date = 获取明天日期()
	end
	print(begin_date,end_date)
	local querySql = ""
	if qryType == 0 then
		querySql = "select CONCAT(SUBSTRING(login_id, 1, 4),'****@',SUBSTRING(login_id, LOCATE('@', login_id) + 1)) as login_id_jm from yshx.user_data a where vx_code = '"..vx_code.."' and a.state = '1' and a.login_id not in (select login_id from yshx.data_log t     where  t.success_action like '%每日任务奖励%' and t.creat_time > '"..begin_date.." 11:00:00' and t.creat_time < '"..end_date.." 11:00:00'   and vx_code = '"..vx_code.."')"
	else
		querySql = "select CONCAT(SUBSTRING(login_id, 1, 4),'****@',SUBSTRING(login_id, LOCATE('@', login_id) + 1)) as login_id_jm,login_id from yshx.data_log t     where   t.success_action like '%每日任务奖励%' and t.creat_time > '"..begin_date.." 11:00:00' and t.creat_time < '"..end_date.." 11:00:00'   and vx_code = '"..vx_code.."'"
	end
	local rs = 查询(querySql)
	--local actionlist = {}
	local rsMsg = ""
	if #rs >= 1 then
		for i=1,#rs do
			--table.insert(actionlist,rs[i].login_id_jm)
			rsMsg = rsMsg..rs[i].login_id_jm.."\n"
		end
		print(rsMsg) --打印每一行
	end
	return rsMsg
	
end

