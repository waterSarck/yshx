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
	setControlBarPosNew(0,0.2)
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
			--goto test
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
			::test::
			
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
		����ϵͳ�쳣("zd���µ���")
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
	
	--�ƻ���ֱ�����(activeList)
	--ˢ��̵�����(activeList)
	--ɨ�����̻����(activeList)
	--�Ƹ��̻��������(activeList)
	--��齱����(activeList)
	--�ƴ�����1����(activeList)
	--�ƴ�����2����(activeList)
	--��Ʒ��ͼ("123",6)
	--�Ƹ��̻���鱾����(activeList)
	--�Ƹ��̻���ֱ�����(activeList)
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--ˢ����һ������(activeList)
	--��һ�������()
	--ˢ�䶷���̵�����()
	--ˢ�����̵�����()
	--ˢ����ֱ�����(activeList)
	
	--��һ�������()
	--��ȡ�ʼ�����()
	--̽������()
	--������ҩ����()
	--�����ȯ����()
	--����ֿ�����()
	--�Ƹ��̻��������(activeList)
	--�ƻ���鱾����(activeList)
	--�ƻ���ֱ�����(activeList)
	--�ƴ�����1����(activeList)
	--�ƴ�����2����(activeList)
	--ˢ����ֱ�����(activeList)
	--ˢ��������()
	--ˢ�䶷������()
    --local proStr = ""
	--writeLogFile("-------��Դͳ�ƿ�ʼ")
	--local strst = ��Դͳ������(userName,"start","start","start")
	--proStr = proStrAdd(proStr,strst)
	--��Ʒ��ͼ����(userName)
	--writeLogFile("-------��Դͳ�ƽ���")
    
    �˳���¼(6)
end


--findstrtest("��",false)
--setControlBarPosNew(0,0.2)
--tx4()
--loading(3)
--findpic("����",false)
--�ر�����ҳ(3)
main()
--findstr("ͼ����֤")
--findPicAndClick("��¼����",true,150,10)
--snapShot("/mnt/shared/Pictures/PIC/1122.png",0,570,324,711)
--
--��ս��(6)


