function ��ѯ(sqlStr)
	local handle,err = mysql_connect("192.168.3.99",3306,"mysql","root","sz123456")
	local ret = ""
	local tb = ""
	if handle ~= nil then
		print("�������ݿ�ɹ�");
		--local ret,err,tb = mysql_execSQLWithResult(handle,"INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('qahqakgkef@sina.com', '20200401', 'start', '12321','111','222','333','120','60')")
		ret,err,tb = mysql_execSQLWithResult(handle,sqlStr)
		print(sqlStr)
		print(ret,err,tb)
		if ret then
			for i=1,#tb do
				print(tb[i]) --��ӡÿһ��
			end
		else
			if err ~=nil then
				print(string.format("ִ��ʧ�� %s",err))
			end
		end
		mysql_close(handle)
	else
		print(string.format("����ʧ�ܣ�����ԭ�� %s",err))
	end
	mysql_close(handle)
	return tb
end

function ����(sqlStr)
	writeLogFile("------------�������ݿ⿪ʼ--------------")
	local handle,err = mysql_connect("192.168.3.99",3306,"mysql","root","sz123456")
	if handle ~= nil then
		writeLogFile("�������ݿ�ɹ�")
		writeLogFile("ִ����䣺",sqlStr)
		--local ret,err,tb = mysql_execSQLWithResult(handle,"INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('qahqakgkef@sina.com', '20200401', 'start', '12321','111','222','333','120','60')")
		local ret,err,tb = mysql_execSQLWithResult(handle,sqlStr)
		--local ret,err,tb = mysql_execSQLWithResult(handle,"select count(*) from yshx.data_log")
		print(ret,err,tb)
		if ret then
			for i=1,#tb do
				print(tb[i]) --��ӡÿһ��
			end
		else
			if err ~=nil then
				writeLogFile(string.format("ִ��ʧ�� %s",err))
			end
		end
		mysql_close(handle)
	else
		writeLogFile(string.format("����ʧ�ܣ�����ԭ�� %s",err))
	end
	writeLogFile("------------�������ݿ����--------------")
	mysql_close(handle)
	return ret
end

function ��ѯ���ȼ�����˺�(mode)
	local queryUser = "select login_id,login_pass from yshx.user_data where vx_code = '"..mode.."' and update_sort = (select MIN(update_sort) from yshx.user_data where vx_code = '"..mode.."' and state = '1') "
	return ��ѯ(queryUser)
end

function ��ѯ���ȼ�����˺�()
	local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MAX(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	return ��ѯ(queryUser)
end

function ������־()
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
	
	����(insertSql)
	local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MIN(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	return ��ѯ(queryUser)
end

function ��ѯ�豸�����˺�()
	local mode = getModel()
	local tb = ��ѯ���ȼ�����˺�(mode)
	local user = "none"
	if #tb >= 1 then
		user = tb[1].login_id
		print(user) --��ӡÿһ��
        return {tb[1].login_id,tb[1].login_pass}
	end
	return user
end

function ��ѯ�豸����˺�()
	--local mode = getModel()
	local tb = ��ѯ���ȼ�����˺�(mode)
	local user = "none"
	if #tb >= 1 then
		user = tb[1].login_id
		print(user) --��ӡÿһ��
		return {tb[1].login_id,tb[1].login_pass}
	end
	return nil
end

function ��ѯ�˺Ŵ�������(userName)

	local queryCount = "select DATEDIFF(CURDATE(), t.creat_date) as creatCount from yshx.user_data t where t.login_id = '"..userName.."';"
	print(queryCount)
    local tb = ��ѯ(queryCount)
    
	local creatCount = 0
	if #tb >= 1 then
		creatCount = tb[1].creatCount
		print(creatCount) --��ӡÿһ��
		return creatCount
	end
	return 0

end

function �½��˺����(login_id,login_pass)
	local nowTime = os.date("%Y-%m-%d %H:%M:%S", os.time())
	local nowTimeForm = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
	local nowTimeSort = os.time()	
	
	local mode = getModel()
	
	local insertSql = "INSERT INTO yshx.user_data (login_id,login_pass, creat_date,choushu,zuanshi,jinbi,baiquan,huangquan,leve,selltype,state,update_time,update_sort,update_date,vx_code)  VALUES ("
    insertSql = insertSql.."'"..login_id.."','"..login_pass.."','"..nowDate.."','0','0','0','0','0','0','yyxs','1','"..nowTime.."','"..nowTimeSort.."','"..nowTime.."','ACT' )"	
	����(insertSql)
	--local queryUser = "select login_id,login_pass from yshx.user_data where  update_sort = (select MIN(update_sort) from yshx.user_data where vx_code in (select sys_value from yshx.sys_config where value_name = 'zlts_model') and state = '1') "
	 --��ѯ(queryUser)
end

