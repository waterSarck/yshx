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
	
	configPath = "/mnt/sdcard/Pictures/yshxconfig.txt"
	local config = ��ȡ����(configPath)
	local modeConfig = ��ȡģ��������(config)
	--*************************��������
	local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local activeList = config.activeList
	
	
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
		for key, values in pairs(actNameList) do
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
				for j, actName in ipairs(values) do
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
		end
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
	local config = ��ȡ����(configPath)
	local modeConfig = ��ȡģ��������(config)
	--*************************��������
	local actNameList = config[modeConfig.actNameList]
	local userInfoFilePath = modeConfig.userInfoFilePath
	local logPath = config.logPath
	local actType = modeConfig.actType
	local activeList = config.activeList
	--�ƻ���鱾����(activeList)
	�ƻ���ֱ�����(activeList)
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
end

--tx2()
--����������ɫ(5)
--findStrSub("ȫ����ȡ",true)
--��ȡ�������()
--��ȡÿ������������()
--findpic("sd��˵�һ���")
--ˢ�̵�("��������ս",{"sd��˵�һ���"},4)
--ˢ�̵�("���⾺�����̵�",{"sd��˵�һ���","sd-wdh-���","sd-wdh-����ҩ"},3)
��ȡÿ������������()
--main()
--�����ѵ�һ������()
--�����ѵڶ�������()
--�����߱�����("zx������",{"zxjq3-4"},5,1,"3")
--�����߱�����("zx������",{"zxjq3-4"},5,1,"4")
--�����߱�����("zx������",{"zxjq3-4"},5,1,"5")
--�����ߵڶ�������()
--�����ߵ���������()
--�����ߵ���������()
--�����ߵ���������()
--�����ߵ���������()
--�½��˺����("test20240823","12345")
--�Ƿ�����ҳ(false)
--findstrtest("�Զ�ѡ��")
--isInPage(5,"�ÿ͵���","�ÿ͵���","txt",txtParam,0.9)
--findpic("sd��˵�һ���")
--findpic("zd����2")
--findpic("zd����3")
--tx3()
--����Ϸ()
--findpic("xsrw��ȷ����")
--�ƴ�����1����()
--��¼("gfkfggqfgf@sina.com","fagafafkaqa4")
--ˢ��ұ�����()
--��������ҩ����()
--�����ȯ����()


