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
						actFlag = actfun(activeList)
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
	--�ƻ���ֱ�����(activeList)
	--ˢ���̻�̵�����(activeList)
	��С��������(activeList)
	--�Ƹ��̻���鱾����(activeList)
	--�Ƹ��̻���ֱ�����(activeList)
	--�ƻ���ֱ�����(activeList)
	--ˢ��̵�����(activeList)
	--�Ƹ��̻��������(activeList)
	--��齱����(activeList)
	--�ƴ�����2����(activeList)
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
	--�����ߵ���������()
end
--findstrtest()
--findStrSub("God",true,761,81,1254,530)
--findpic("sd�뿪")
--findStrSub("ȷ��",true)
--findStrSub("ȫ����ȡ")
--ˢ����50����()
--ˢ��������()
--�����ߵ���������()
--�����ߵ���������()
--�����ߵ���������()
--tx2()

--��ȡÿ������������()
--findpic("sqǿ��")
--ǿ����������()
--��ȡ�������()
--ˢ����һ������()
--�ƻ���鱾����()
--�ƻ���ֱ�����()
--ˢ����ֱ�����()

--findpic("ȷ��",true)
--��齱����()
--ˢ��̵�����()

--ɨ�����̻����()
--ˢ��̵��Ż�����()
--�ƻ���ֱ�����()
--�ƻ���鱾����()
--�Ƹ��̻��������()
--�Ƿ��ܼ�({"3","4","5"})
--�����浯���쳣("yc���浯��")
--ˢ���̻�̵�����()
--findpic("qkl-����ҳ")
--��ʱ�����ű�()
--��С��������()
--ˢ����ֱ�����()
--findPicAndClick("wdh��ս��������",true)
--ˢ�䶷����������()
--��һ�������()
--������ͼ()

--�ƻ���ֱ�����()
--��ȡ�������()
--ˢ����ֱ�����()
--�ƴ�����2����()
--ˢ��̵�����()
--�ƶϿ�������()
--�ƻ���鱾����()
--�ƻ���ֱ�����()
--�ƻ���ֱ�����()
--�Ƹ��̻��������()
--ˢ�����̵�����()
--ˢ�䶷���̵�����()
--findStrSub("Maniac",true)
--findStrSub("65",true)
--findstrtest()
--(findstr("Story") and (findstr("NEW!",true) or findstr("NEWI",true)))
--�ƶϿս�������()
--ˢ��ڱ�����()
--��С��������()
--��Ʒ��ͼ("sz",6)
--�������ݿ�()
--��Դͳ������("13221321","start")
--������ɫ����()
--�ƶϿ�������()
--�Ƿ�����ҳ(false)
--�˳���¼(6)
--��Ʒ��ͼ(userName,6)
--ǿ��װ��(5)
--ˢ�䶷����������()
--tx2()
--�����ѵڶ�������()
--�����ߵ���������()
--��Ʒ��ͼ("zz",6)
--����ֿ�����()
--��ȡ�ʼ�����()
--������ɫ����()
--̽������()
--��ս��(6)
--����("insertSql INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('test','20240611','start','19017','9780083','29','103','219/120','65')")
--��ѯ("select * from yshx.data_log t where t.creat_date = '2024-06-06'")
--��Դͳ������("74059732799@qq.com","end")
--����("insertSql INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve)  VALUES ('test','20240611','start','19017','9780083','29','103','219/120','65')")
--������ɫ����()
--ˢ�䶷���̵�����()
--ˢ�����̵�����()
--ǿ��װ������()
--ˢÿ���̵�����()
--��һ�������()
--��Դͳ������("test123","end","qiandao","lingyoujian")
--findpic("tjÿ���������")
--��ս��(9)
--local str = "INSERT INTO yshx.data_log (login_id, creat_date, start_flag, zuanshi,jinbi,baiquan,huangquan,tili,leve,vx_code,fail_action,success_action)  VALUES ('test123456','20240618','end','18602','11974985','��','114','120/120','64','ACTMAX02',',ˢ���̻�̵�����','' )"
--����(str)
--findpic("hd�������2")
--findpic("hd�ع���OK",false)
--��ع�������()
--print(��ѯ�豸�����˺�())
---��ع�������()
--findpic("qj�Զ�����1")
--������(4)
--findpic("sd-zq-ÿ�����Լ14",true)
--findpic("zd����ս��",false)
--�ƶϿս���2����()
--��������7��һ������()
--mytap(1162,36)
--mytap(650,280)
--�����ߵ�һ������()
--�����ߵڶ�������()
--�����ߵ���������()
--�����ߵ���������()
--��ɫҳ_�ر�����(5)
--��������()
--findStrSubUTF8("4-1")
--�����ߵ���������()
--�����ߵ���������()
--�ƶϿս���2����()
--ˢ�䶷������()
--��ȡÿ������������()
--��ȡ����������()

--��ѯ�豸����˺�()
--ǿ����������()
--findpic("xsrw��ʾ")
--findpic("xsrw��������")
--findstr("����")
--findpic("xsrw����2")

--��������6����()
--local bestUser = ��ѯ�豸�����˺�()
--local proStr = ""
--local userName = bestUser[1]
--local pwd  = bestUser[2]
--print("bestUser",bestUser)
--print("userName",userName)
--print("pwd",pwd)
main()
--�½��˺����("test20240823","12345")
--findstr("�Զ�ѡ��")
--findpic("xsrw����ʱ����")
--tx3()
--����Ϸ()
--findpic("xsrw��ȷ����")
--�ƴ�����1����()
--��¼("gfkfggqfgf@sina.com","fagafafkaqa4")
--ˢ��ұ�����()
--��������ҩ����()
--�����ȯ����()


