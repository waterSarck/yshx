setDict(0,"�������.txt")
useDict(0)


function �Ƿ���ҳ()
	if findpic("��ս") then
		return true
	else
		return false
	end
	
end

function �Ƿ������ҳ(count)
	while true do
		count = count -1
		if isInPage(10,"��ҳ","��ս","img",0,0.9) and isInPage(5,"���ر�","���ر�","img",0,0.9)==false then
			print("������ҳ�ɹ�")
			return true
		end
		if count==0 then
			print("������ҳʧ��")
			return false
		end
	end
end
function ������ҳ(count)
	while true do
		count = count -1
		findpic("������ҳ",true)
		
		
		findpic("������ҳ2",true)
		
		
		findPicAndClick("wdh������ҳ",true,5,5)
		
		
		findpic("������ҳ3",true)
		
		findpic("������ҳ-�̵�",true)
		
		
		sleep(3000)
		if findpic("��ս") then
			print("������ҳ�ɹ�")
			return true
		end
		if count==0 then
			print("������ҳʧ��")
			return false
		end
		if findpic("dkt-��ͣ")==false then
			mytap(1249,30)--���������ҳλ��
		end
	end
end
function ������һ��(count)
	if count == nil then
		count = 3
	end
	local picAry = {"zx����","zx����2","zx����3","zx����4","zx����5","wdh����"}
	while true do
		count = count -1
		if findPicAry(picAry,true) then
			writeLogFile("������һ��ɹ�")
			return true
		end
		
		
		sleep(3000)
		
		if count==0 then
			writeLogFile("������һ��ʧ�ܣ�����̶�λ��")
			mytap(51,26)
			return false
		end
		--mytap(1249,30)--���������ҳλ��
	end
end
function �ر�����ҳ(count)
	while findpic("�ָ����ť",true) or findpic("�ر�����2",true) do
		print("�ر�ָ��")
		sleep(3000)
	end
end
function ����_�ر�����ҳ(count)
	while (findpic("�ָ����ť",true) or findpic("�ر�����2",true)) do
		print("�ر�ָ��")
		sleep(3000)
		count = count -1
		if count < 0 then
			break
		end
	end
end
function ��ɫҳ_�ر�����(count)
	while findpic("jsװ��")==false and (findpic("�ָ����ť",true) or findpic("�ر�����2",true)) do
		print("�ر�ָ��")
		sleep(3000)
	end
end

function ����ҳ_�ر�����(count)
	while findstr("����")==false and (findpic("�ָ����ť",true) or findpic("�ر�����2",true)) do
		print("�ر�ָ��")
		sleep(3000)
	end
end


function �����쳣(exceptionName,buttonName)
	local count = 10
	if findstr(exceptionName) or findpic(exceptionName) then
		writeLogFile("��ʼ����"..exceptionName.."�쳣")
		while findstr(exceptionName) or findpic(exceptionName) do
			
			if findstr(buttonName,true) or findpic(buttonName,true) then
				sleep(40000)
			end
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("����"..exceptionName.."�쳣ʧ�ܣ��л�VPN")
				�л�VPN()
				
			end
			if count==0 then
				writeLogFile("����"..exceptionName.."�쳣ʧ��")
				break
			end
		end
		sleep(3000)
		if �Ƿ�����ҳ(true) then
			writeLogFile("����"..exceptionName.."�쳣�ɹ�����������")
		end
		writeLogFile("����"..exceptionName.."�쳣����")
	end
end

function �л�VPN()
	writeLogFile("����VPN")
	runApp("com.tidalab.v2board.clash.foss")
	sleep(3000)
	if findpic("VPN����",true) then
		writeLogFile("����VPN")
	elseif findpic("VPN�Ͽ�����",true) then
		writeLogFile("�Ͽ�VPN")
	end
	sleep(3000)
	runApp("com.pinkcore.heros")
end


function ��������()
	writeLogFile("-------�ر�APP��ʼ")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------�ر�APP����")
	writeLogFile("-------����APP��ʼ")
	runApp("com.pinkcore.heros")
	
	writeLogFile("-------����APP����")
end

function ��������߳�()
	writeLogFile("--------------------��������߳�---------------------")
	
	--beginThread(thread_func,1)
	beginThread(thread_func2,1)
	--var.exit = false
	--sleep(100000)
	
end

function thread_func(arg)
	while var.exit do
		writeLogFile("��ʼ������")
		�����쳣("��·����","����")
		�����쳣("���µ���","���µ���")
		sleep(600000)
	end
end



function ���������쳣(exceptionName)
	local count = 10
	if findpic(exceptionName) then
		writeLogFile("��ʼ����"..exceptionName.."�쳣")
		while findpic(exceptionName) do
			
			if findpic(exceptionName,true) then
				sleep(3000)
				writeLogFile("���ͼ������Ӧ��")
			end
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("����"..exceptionName.."�쳣ʧ�ܣ��л�VPN")
				--�л�VPN()
				
			end
			if count==0 then
				writeLogFile("����"..exceptionName.."�쳣ʧ��")
				break
			end
		end
		sleep(3000)
		if �Ƿ�����ҳ(true) then
			writeLogFile("����"..exceptionName.."�쳣�ɹ�����������")
		end
		writeLogFile("����"..exceptionName.."�쳣����")
	end
end

function �����浯���쳣(exceptionName)
	local count = 10
	if findpic(exceptionName) then
		writeLogFile("��ʼ����"..exceptionName.."�쳣")
		while findpic(exceptionName) do
			
			������һ��(3)
			writeLogFile("�����浯���쳣�ɹ�")
			
			sleep(3000)
			count = count -1
			if count==5 then
				writeLogFile("����"..exceptionName.."�쳣ʧ��")
				--�л�VPN()
				
			end
			if count==0 then
				writeLogFile("����"..exceptionName.."�쳣ʧ��")
				break
			end
		end
		sleep(3000)
		if �Ƿ�����ҳ(true) then
			writeLogFile("����"..exceptionName.."�쳣�ɹ�����������")
		end
		writeLogFile("����"..exceptionName.."�쳣����")
	end
end

function ���������쳣()
	local count = 10
	if �Ƿ�����ҳ(false) then
		sleep(50000)
		writeLogFile("��ʼ��������".."�쳣")
		if �Ƿ�����ҳ(false) then
			
			--������һ��(3)
			--�����ű�()
			�߳������ű�(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("��������".."�쳣����")
	end
end

function �����¼ʧ���쳣()
	local count = 10
	if findpic("yc��¼ʧ��") or findpic("yc��¼ʧ��1")then
		sleep(50000)
		writeLogFile("��ʼ�����¼ʧ��".."�쳣")
		if findpic("yc��¼ʧ��") or findpic("yc��¼ʧ��1") then
			
			--������һ��(3)
			--�����ű�()
			�߳������ű�(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("��������".."�쳣����")
	end
end

function ����ϵͳ�쳣(exceptionName)
	if findpic(exceptionName) then
		sleep(50000)
		writeLogFile("��ʼ����"..exceptionName.."�쳣")
		if findpic(exceptionName) then
			
			--������һ��(3)
			--�����ű�()
			�߳������ű�(1000)
			sleep(3000)
			
			sleep(3000)
			
		end
		
		writeLogFile("��������"..exceptionName.."�쳣")
	end
end
function ��ʱ�����ű�(inTime)
	local count = 10
	--print("��ʼ��ʱ�������ű�")
	if  �Ƿ񼸵�(inTime) then
		writeLogFile("��ʼ��ʱ�������ű�2")
		�����ű�(1000)
	end
end

function ��ʱ�����ű�()
	local sec = 0
	-- ��ȡ��ǰʱ���Unixʱ������룩
	local now = os.time()
	
	-- ��ȡ��ǰ���ں�ʱ��
	local current_date = os.date("*t", now)
	
	local hour = current_date.hour
	local second_c = math.random(1,9)
	--print("��ʼ��ʱ�������ű�")
	if  hour<11 then
		sec = ��������(11,0)*1000+second_c*10000
		writeLogFile("��ǰʱ��С��11��"..sec.."����������ű�")
		setTimer(�����ű�,sec)
	else
		sec = ��������(11,1)*1000+second_c*10000
		writeLogFile("��ǰʱ�����11��"..sec.."����������ű�")
		setTimer(�����ű�,sec)
	end
end
function �����ű�()
	toast("��ʼ������ǰ�ű�")
	print("��ʼ������ǰ�ű�")
	writeLogFile("-------�ر�APP��ʼ")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------�ر�APP����")
	sleep(1000)
	writeLogFile("-------�����ű���ʼ")
	restartScript()
	writeLogFile("-------�����ű�����")
	
end
function �߳������ű�(times)
	toast("��ʼ������ǰ�ű�")
	print("��ʼ������ǰ�ű�")
	writeLogFile("-------�ر�APP��ʼ")
	stopApp("com.pinkcore.heros")
	sleep(2000)
	writeLogFile("-------�ر�APP����")
	sleep(1000)
	writeLogFile("-------�����ű���ʼ")
	setTimer(restartScript,times)
	writeLogFile("-------�����ű�����")
end

function writeLogFile(...)
	
	local t = {...}
	local nowTime = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
	local logPath = "/mnt/shared/Pictures/log/"..nowDate.."_yushen.log"
	local mode = getModel()
	if mode ~= nil then
		logPath = "/mnt/shared/Pictures/log/"..nowDate.."_yushen"..mode..".log"
	end
	--print(mode)
	local logStr = nowTime
	
	for i=1,#t do
		--print("���ҽ��",ret[i].text)
		logStr = logStr.." "..t[i]
	end
	--print(logPath)
	writeFile(logPath,logStr.."\n",true)
	print(logStr)
end

--�Ƿ�������
function �쳣���µ�¼(count)
	
	while true do
		count = count -1
		if findpic("�쳣���µ�¼",true) or findstr("�쳣�ص�ȷ��",true) then
			print("���µ�¼")
			sleep(10000)
			count = count +1
		end
		if findpic("cw�������") then
			findpic("ȷ��")
			print("���µ�¼")
			sleep(10000)
			count = count +1
		end
		if count==0 then
			return false
		end
	end
end

--���� true �ɹ���1 ����ʧ�ܣ�2 ����δ�3 ����δ��
function ��¼���()
	--��д��Ϣ��� ����δ�����δ�����δ��λ
	print("��¼��鿪ʼ")
	for i=1,3 do
		
		if findpic("����") or findpic("����һ��") or findstr("���һ������ƴͼ") or findstr("������ɰ�ȫ��֤") or findpic("dl����ɰ�ȫ��֤") then
			print("����ʧ��")
			return 1
		end
		if findpic("dl����δ��д") or findstr("������δ��д") then
			print("����δ��д")
			sleep(1000)
			return 2
		end
		if findpic("dl����������") or findstr("������������") then
			print("����δ��д")
			sleep(1000)
			return 3
		end
		if findstr("�������") or findstr("����")then
			print("captcha��֤��ʧ��")
			sleep(1000)
			return 4
		end
		swipe(645,782,645,1240,1000)
		sleep(1000)
	end
	return true
end

--����ҳ��� clickflag:�Ƿ���start
function �Ƿ�����ҳ(clickflag)
	local clickType = clickflag
	local picAry = {"����ҳ-����","����ҳ-�ʺ�","����ҳ-С����1","bsn-����ҳ","����ҳ-С����","qkl-����ҳ","����ҳ-С����3"}
	local PageFlag = findPicAry(picAry,false)
	if clickType ~= true then
		clickType = false
	end
	
	if findStrSubAry({"��ʼ����","�����Ϊ�ܿ��鹹","21������"}) or PageFlag then
		if clickType then
			mytap(647,637)--�����¼press to start
		end
		return true
	else
		return false
	end
end

function �Ƿ��ܼ�(opOfWeek)
	if opOfWeek ==nil then
		opOfWeek = {"1","2","3","4","5","6","7"}
	end
	local dayOfWeek = os.date("%w")
	print("����ϵͳʱ������",dayOfWeek)
	for i=1,#opOfWeek do
		if dayOfWeek == opOfWeek[i] then
			print("ϵͳʱ����ڼƻ�ʱ����",opOfWeek[i])
			return true
		else
			print("���Ǽƻ�ʱ����",opOfWeek[i])
			
		end
	end
	return false
end

function �Ƿ񼸵�(inTime)
	if inTime ==nil then
		return false
	end
	local now = os.date("%Y-%m-%d %H:%M:%S")
	local year = string.sub(now,1,4)
	local month = string.sub(now,6,7)
	local day = string.sub(now,9,10)
	local hour = string.sub(now,12,13)
	print("����ϵͳʱ����",hour,"��")
	for i=1,#inTime do
		if hour == inTime[i] then
			print("ϵͳʱ����ڼƻ�ʱ��",inTime[i])
			return true
		else
			print("���Ǽƻ�ʱ��",inTime[i])
			
		end
	end
	print("���Ǽƻ�ʱ��",inTime[i])
	return false
end

function ��������(inHour,inDay)
	-- ��ȡ��ǰʱ���Unixʱ������룩
	local now = os.time()
	
	-- ��ȡ��ǰ���ں�ʱ��
	local current_date = os.date("*t", now)
	
	-- ������������ڣ�ʱ������Ϊ11��
	local tomorrow = {
	year = current_date.year,
	month = current_date.month,
	day = current_date.day + inDay,
	hour = inHour,
	min = 0,
	sec = 0
	}
	
	-- �����������ʱ��ת��ΪUnixʱ���
	local tomorrow_time = os.time(tomorrow)
	
	-- ��������ʱ���֮�������
	local seconds_to_tomorrow_11 = tomorrow_time - now
	
	print("����"..inHour.."����뵱ǰʱ���������: " .. seconds_to_tomorrow_11)
	return seconds_to_tomorrow_11
end

function ����ֿ����ҳ(count)
	while true do
		count = count -1
		if findstr("�ֿ�",true) or findpic("�ֿ�ͼ��",true) then
			print("�򿪲ֿ�")
			sleep(3000)
			�ر�����ҳ()
			if findstr("����",true) or  findpic("����",true) then
				print("�򿪵���")
				sleep(3000)
				return true
			end
		end
		if count==0 then
        writeLogFile("����ֿ����ҳʧ��")
			return false
		end
	end
end
