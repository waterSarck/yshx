function ҳ���ͼ(userName)
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
	--��ͼ
	snapShot(picName,0,0,0,0)
	
end
function ��ȡ�ȼ�����()
	local padding = 50 --ʶ�����
	local lv = 0
	local tili = 0
	local tlXY = findpicPoint("tj����")
	local jsXY = findpicPoint("tj������")
	local lvXY = {68,60,125,108}
	print("��������",tlXY)
	
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
	
	print("����",tili)
	print("�ȼ�",lv)
	local tjDate = {tili,lv}
	local tjName = {"����","�ȼ�"}
	
	local logStr = ""
	--writeFile(logPath,nowDate,"|",startFlag,"|",userNameSt,"|",true)
	for i=1,#tjDate do
		--print("���ҽ��",ret[i].text)
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

function ��ȡ��Դ��Ϣ(startFlag,userName,tlStr,success_action,fail_action)
	local padding = 50 --ʶ�����
	local zuanshi = 0
	local huangquan = 0
	local baiquan = 0
	local jinbi = 0
	local zsXY = findpicPoint("tj��ʯ")
	local jbXY = findpicPoint("tj���")
	local hqXY = findpicPoint("tj��ȯ")
	local bqXY = findpicPoint("tj��ȯ")
	print("��ʯ����",zsXY)
	print("��ʯ����",jbXY)
	print("��ȯ����",hqXY)
	print("��ȯ����",bqXY)
	
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
	print("��ʯ",zuanshi)
	print("���",jinbi)
	print("��ȯ",huangquan)
	print("��ȯ",baiquan)
	local tjDate = {zuanshi,jinbi,huangquan,baiquan}
	local tjName = {"��ʯ","���","��ȯ","��ȯ"}
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
		--print("���ҽ��",ret[i].text)
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
	
    ����(insertSql)
    if startFlag == "end" then
    	local updateSql = "update yshx.user_data set".." zuanshi = '"..tjDate[1].."', jinbi = '"..tjDate[2].."', baiquan = '"..tjDate[4].."', huangquan = '"..tjDate[3].."', leve = '"..tlret[4].."' , update_date = '"..nowDate.."' , update_time = '"..nowTime.."' where login_id = '"..userName.."'"
    	local updateSort = "update yshx.user_data set update_sort = '"..nowTimeSort.."' where login_id = '"..userName.."'"
        ����(updateSql)    	
        ����(updateSort)
    end
    
	print("insertSql",insertSql)
	--print(logPath)
	print(logStr)
	--writeFile(logPath,logStr..tlStr.."\n",true)
	
	return logStr..tlStr.."\n"
	
end

function ��Դͳ��(userName,count,startFlag,success_action,fail_action)
	local tlStr = ��ȡ�ȼ�����()
	if ����ֿ����ҳ(count)==false then    
    	return "not find cangku"
    end
	if userName == nil then
		userName = "user"
	end
	
	
	local proStr = ��ȡ��Դ��Ϣ(startFlag,userName,tlStr,success_action,fail_action)
	sleep(2000)
	--��ͼ
	ҳ���ͼ(userName)
	sleep(2000)
	������ҳ(1)
	return proStr
end

function ��Ʒ��ͼ(userName,count)
	--��ɫ/����/װ��/����/��ӡ
	local tmpCount =5
	while true do
		if findpic("js��ɫѡ��") == false then
			if findpic("js��ɫ",true) == false then
				sleep(3000)
				
				print("�����ɫҳ��")
			end
		else
			break
		end
		tmpCount = tmpCount -1
		if tmpCount == 0 then
			writeLogFile("����ʧ��")
			������ҳ(5)
			return false
		end
		sleep(1000)
	end
	for i=1,7 do
    	ҳ���ͼ(userName)
        sleep(1000)
		if findpic("js���׿���",false) == false  then
			
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	
	
	������ҳ(5)
	loading(3)
	
	while true do
		count = count -1
		if findstr("�ֿ�",true) or findpic("�ֿ�ͼ��",true) then
			print("�򿪲ֿ�")
			sleep(3000)
			�ر�����ҳ()
			if findstr("����",true) or  findpic("����",true) then
				print("���߽�ͼ")
				
				sleep(3000)
				ҳ���ͼ(userName)
				
			end
			if findstr("����",true) or  findpic("tj����",true) then
				print("���߽�ͼ")
				
				sleep(3000)
				ҳ���ͼ(userName)
			end
			if findstr("��ӡ",true) or  findpic("tj��ӡ",true) then
				print("���߽�ͼ")
				
				sleep(3000)
				ҳ���ͼ(userName)
				
			end
			if findstr("װ��",true) or  findpic("tjװ��",true) then
				print("���߽�ͼ")
				
				sleep(3000)
				ҳ���ͼ(userName)
				
			end
            break
		end
		if count==0 then
			break
		end
	end
	
	
	������ҳ(5)
	loading(3)
	
end

function ģ����ÿ������������()
local actStr = ""

end

function �ҵ����촰(name)
	if findStrSub(name,true) then
		sleep(2000)
		if findpic("qq-����",true) then
			setIme(true)
			inputText(msg,true)
			sleep(2000)
			if findStrSub("����",true) then
			end
		end
		
	end
end

function ����QQ��Ϣ(msg)
	if findpic("qq-����",true) then
		setIme(true)
		inputText(msg,true)
		sleep(2000)
		if findpic("qq-���Ͱ�ť",true) then
			print("������Ϣ��",msg)
		end
	end
end

function ����sg��Ϣ(msg)
	
	findpic("sg-rootȡ��",true)
	sleep(2000)
	findpic("sg-hhС��",true)
	sleep(2000)
	if findpic("sg-����",true) then
		setIme(true)
		inputText(msg,true)
		sleep(2000)
		if findpic("sg-���Ͱ�ť",true) then
			print("������Ϣ��",msg)
		end
	end
end
function ��������()
	--runApp("com.pinkcore.heros")
	--��¼QQ()
	--�ҵ����촰�ڲ�������Ϣ("�ε�","go")
	--����QQ��Ϣ("12321")
	--while true do
	local end_date = os.date("%m-%d", os.time())
	local begin_date = utf8.right(��ȡ��������(),5)
	local nowH = os.date("%H", os.time())
	if math.tointeger(nowH) >11 then
		begin_date = os.date("%m-%d", os.time())
		end_date = utf8.right(��ȡ��������(),5)
	end
	
	local vxlist = {"A01","A02","A03","A04","A05","A06","A07","ACT01","ACT02","ACT03","ACT04","ACT05","ACT06","ACT07","ACT08","ACT09","ACT10","ACT11","ACT12"}
	for key, values in pairs(vxlist) do
		print("vxlist:key", key)
		print("vxlist:values", values)
		local actMsgNot = ��ѯÿ������������(values,0)
		local actMsgYes = ��ѯÿ������������(values,1)
		local sendMsg = values.."ÿ������ͳ��:\n"..begin_date.."��"..end_date.."\n".."����ɣ�\n"..actMsgYes.."δ��ɣ�\n"..actMsgNot
		sleep(30000)
		����sg��Ϣ(sendMsg)
	end
	sleep(7000000)
	restartScript()
	--end
	
end
