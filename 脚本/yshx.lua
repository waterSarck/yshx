--ngx.header.content_type="application/json;charset=utf8"
setDict(0,"�������.txt")
useDict(0)

require("��������")
require("��ս����")
require("�䶷������")
require("�̵�����")
require("��������")
require("�ٻ�����")
require("�º�ע������")
require("��������")
require("ͨ�÷���")
require("�����б�")
require("ͳ�Ʒ���")
require("���ݿ����")
local userNameSt = "none"
local actionType = {
exit = true,
data = 0,
}

function main()
	
	writeLogFile("-------����APP��ʼ")
	runApp("com.pinkcore.heros")
	--showControlBar(false)
	setControlBarPosNew(0,0.1)
	--sleep(10000)
	sleep(30000)
	��������߳�()
	��ʱ�����ű�()
	writeLogFile("-------����APP����")
	
	local loginState = �жϵ�½״̬()
	
	--configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	--configPath = "/data/data/com.nx.nxproj/assistdir/Pictures/yshxconfig.txt"
	--local config = ��ȡ����(configPath)
	--local modeConfig = ��ȡģ��������(config)
	--*************************��������
	--local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = ""--modeConfig.userInfoFilePath
	--local logPath = config.logPath
	--local actType = modeConfig.actType
	--local activeList = config.activeList
	
	---------------------20250425-------------------------------
	local modeConfDB = ��ѯ�豸����()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = ��ѯ�����б�(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	actType = modeConfDB[1].action_type
	activeList = ��ѯ��ǰ��б�()
	
	print("actType", actType)
	print("actionlist_name", actionlist_name)
	print("actNameList", actNameList)
	print("activeList", activeList)
	
	
	
	if actType == "����" then
		--�����������߳�
		writeLogFile("------��ʼ��������---------")
		--beginThread(������,userInfoFilePath,1,actNameList)
		������(userInfoFilePath,1,actNameList,activeList)
		
	end
	if actType == "ע��" then
		while true do
			stepNum = stepNum +1
			writeLogFile("*********��",stepNum,"��,ע������********")
			��������(10)
		end
	end
	
	--��������߳�
	var.exit = false
	writeLogFile("------�ű�����---------")
end

function ������(userInfoFilePath,startNo,actNameList,activeList)
	local stepNum = 0
	while actionType.exit do
		stepNum = stepNum +1
		writeLogFile("*********��",stepNum,"��,��������********")
		--local userCount = getFileLineNum(userInfoFilePath)
		local userCount = 1
		
		writeLogFile("=============")
		writeLogFile("����",userCount,"�û�")
		--for key, values in pairs(actNameList) do
		print("actNameList:", key)
		for i=startNo,userCount do
			writeLogFile("----------------------start-��������-----------------------")
			writeLogFile("-------��ȡ��¼��Ϣ��ʼ")
			--local userInfo = readUserInfoByLineNum(i,userInfoFilePath)
			local bestUserInfo = ��ѯ�豸�����˺�()
			local proStr = ""
			local userName = bestUserInfo[1]
			local pwd  = bestUserInfo[2]
			local bestUser = userName
			userNameSt = userName
			local userList = {}
			userList.userName = userName
			--ս����������
			if userName =="zlts" then
				local retZC = ��ѯ�豸����˺�()
				writeLogFile("����û���",retZC[1])
				bestUser = retZC[1]
				userName = retZC[1]
				pwd = retZC[2]
			end
			writeLogFile("�˺ţ�",i,"  �û���",userName)
			writeLogFile("�����û���",bestUser)
			print("bestUser:",bestUser)
			if bestUser ~= "none" and userName~=bestUser then
				goto nextUser
			end
			writeLogFile("�˺ţ�",i,"  �û���",userName)
			writeLogFile("-------��ȡ��¼��Ϣ����")
			writeLogFile("-------��¼��ʼ")
			--��Ϊ�ǵ�¼״̬���¼���������
			loading(5)
			if isInPage(5,"�ÿ͵���","�ÿ͵���","txt",txtParam,0.9) then
				print("--��ʼ��¼")
				��¼(userName,pwd)
				loading(5)
			end
			writeLogFile("-------��¼����")
			
			writeLogFile("-------ǩ����ʼ")
			ǩ������()
			writeLogFile("-------ǩ������")
			
			writeLogFile("-------ȥ��濪ʼ")
			ȥ���������()
			writeLogFile("-------ȥ������")
			
			
			writeLogFile("-------��Դͳ�ƿ�ʼ")
			local strst = ��Դͳ������(userName,"start","start","start")
			proStr = proStrAdd(proStr,strst)
			��Ʒ��ͼ����(userName)
			writeLogFile("-------��Դͳ�ƽ���")
			
			writeLogFile("-------������ʼ")
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
						writeLogFile("ִ������",actName,"״̬���ɹ�")
						success_action = success_action..","..actName
					else
						writeLogFile("ִ������",actName,"״̬��ʧ��")
						fail_action = fail_action..","..actName
					end
					
				else
					writeLogFile("��������",actName,"ʧ��")
				end
				
			end
			
			
			writeLogFile("-------���������")
			
			writeLogFile("-------��Դͳ�ƽ�β��ʼ")
			local strend = ��Դͳ������(userName,"end",success_action,fail_action)
			proStr = proStrAdd(proStr,strend)
			
			proStrWriteToFile(proStr)
			
			writeLogFile("-------��Դͳ�ƽ���")
			
			writeLogFile("-------�˳���¼��ʼ")
			�˳���¼(6)
			writeLogFile("-------�˳���¼����")
			sleep(2000)
			writeLogFile("----------------------end-��������----------------------")
			::nextUser::
		end
		--end
	end
	
end
function thread_func2(arg)
	while actionType.exit do
		writeLogFile("��ʼ������")
		���������쳣("ysͼ��")
		�����浯���쳣("yc���浯��")
		���������쳣()
		�����¼ʧ���쳣()
		����ϵͳ�쳣("ycԤ�������")
		--�������µ�¼�쳣
		--��ʱ�����ű�({"14"})
		sleep(90000)
	end
end



function tx()
	configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	local config = ��ȡ����(configPath)
	local modeConfig = ��ȡģ��������(config)
	--*************************��������
	local actNameList = config[modeConfig.actNameList]
	print("0")
	print(actNameList)
	for key, values in pairs(actNameList) do
		print("Person:", key)
		-- ����ÿ�� person ������
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
	local config = ��ȡ����(configPath)
	local modeConfig = ��ȡģ��������(config)
	local modeConfigDB = ��ѯ�豸����(mode)
	--*************************��������
	local actNameList = config[modeConfig.actNameList]
	
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local actTypeDB = modeConfigDB[1].action_type
	local actionlist_name = modeConfigDB[1].actionlist_name
	local actionList = ��ѯ�����б�(actionlist_name)
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
	--�ƻ���鱾����(activeList)
	--�ƻ���ֱ�����(activeList)
	--ˢ���̻�̵�����(activeList)
	--��С��������(activeList)
	--�Ƹ��̻���鱾����(activeList)
	--�Ƹ��̻���ֱ�����(activeList)
	--�ƻ���ֱ�����(activeList)
	--ˢ��̵�����(activeList)
	--ɨ�����̻����(activeList)
	--�Ƹ��̻��������(activeList)
	--��齱����(activeList)
	--�ƴ�����2����(activeList)
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--ˢ����һ������(activeList)
	--
end

function tx3()
	
	local bestUserInfo = ��ѯ�豸�����˺�()
	local proStr = ""
	local userName = bestUserInfo[1]
	local pwd  = bestUserInfo[2]
	local bestUser = userName
	local userList = {}
	userList.userName = userName
	��ȡÿ������������(activeList,userList)
end
function tx4()
	local modeConfDB = ��ѯ�豸����()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = ��ѯ�����б�(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	local actType = modeConfDB[1].action_type
	local activeList = ��ѯ��ǰ��б�()
	
	--��齱(activeList.activeName,"�齱��",10)
	--�ƻ���鱾����(activeList)
	--�ƻ���ֱ�����(activeList)
	--���´�����ֱ�����(activeList)
	--���´�������1����(activeList)
	--ˢ���̻�̵�����(activeList)
	--��С��������(activeList)
	--�Ƹ��̻��������(activeList)
	--
	--���´�������1����(activeList)
	--���´�������2����(activeList)
	--�ƻ���ֱ�����(activeList)
	--ˢ��̵�����(activeList)
	--ɨ�����̻����(activeList)
	--�Ƹ��̻��������(activeList)
	--��齱����(activeList)
	--�ƴ�����1����(activeList)
	--�ƴ�����2����(activeList)
    --��Ʒ��ͼ("123",6)
    �Ƹ��̻���鱾����(activeList)
    �Ƹ��̻���ֱ�����(activeList)
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--ˢ����һ������(activeList)
    --��һ�������()
	--ˢ�䶷���̵�����()
	--ˢ�����̵�����()
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

function tx1()
	local modeConfDB = ��ѯ�豸����()
	local actionlist_name = modeConfDB[1].actionlist_name
	local actNameList = ��ѯ�����б�(actionlist_name)
	local logPath = "/mnt/sdcard/Pictures/log/"
	local actType = modeConfDB[1].action_type
	local activeList = ��ѯ��ǰ��б�()
	
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
--����sg��Ϣ("111")
--��������()
--��ȡ�ʼ�����()
--findpic("hd-syxl-jq3",false)
--�رչ��ҳ()
--tx4()
--��������2�Ϲ�����()
--��ѯ��ǰ��б�()
--tx4()
--findStrReturn(0,570,324,711,50,0,0.1,0.4,2.7)
--findOCRParm(0,570,324,711,"AUTO",50,0,0.1,0.4,2.7)
--findstrtest("TO",false,0,570,324,711,50,0,0.1,0.4,2.7)
--findstrtest("TO")
--findStrSub("AUTO",false,0,570,324,711,50,0,0.1,0.4,2.7)
--findStrSub("�齱��",true,1010,475,1270,590)
--������(1)
--��ս��(count)
--������ҳ(5)
--����ֿ����ҳ(5)
--findstr("����",false) 
--findpic("����",false)
--������ͼ()
--��������3�ٻ�()
--������ҳ(3)
--��������2�Ϲ�����()
--�ر�����ҳ(5)
--findStrSub("��1��")
--��������4��ս()
--��������4��ս()
--��������7��һ��(10,"zx1-3","zx��һ��")
main()
--snapShot("/mnt/shared/Pictures/PIC/1122.png",0,570,324,711)
--
--��ս��(6)


