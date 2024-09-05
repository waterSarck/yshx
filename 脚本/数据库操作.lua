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
	local queryUser = "select login_id,login_pass from yshx.user_data where vx_code = '"..mode.."' and update_sort = (select MIN(update_sort) from yshx.user_data where vx_code = '"..mode.."' and state = '1') "
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

