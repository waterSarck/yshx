function �ٻ�(zhName,zhButton)
	writeLogFile("--------�ٻ���ʼ--------")
	if findstr("�ٻ�",true) or findpic("xsrw�ٻ�",true)then
		loading(3)
		�ر�����ҳ(3)
		sleep(1000)
		if findstr(zhName,true) then
			sleep(1000)
			if findpic(zhButton,true) then
				sleep(1000)
				if findpic("��",true) then
					loading(4)
					
					while findstr("OK") == false do
						sleep(6000)
						writeLogFile("�����ٻ��ɹ�")
						mytap(589,343)--�鿨
						while findpic("hd����ս��",true) do
							sleep(5000)
							--mytap(1216,29)--�鿨
						end
						--mytap(1216,29)--�鿨
					end
					while findpic("hd����ս��",true) do
						sleep(1000)
						--mytap(1216,29)--�鿨
					end
				end
			else
				writeLogFile("δ�ҵ������ٻ���ť")
			end
		else
			writeLogFile("δ�ҵ������ٻ���")
		end
		
		
		
		if findstr("OK",true) then
			
			loading(3)
			mytap(1216,29)--������ҳ
			loading(3)
		end
	end
	
	writeLogFile("--------�ٻ�����--------")
end

function ��齱(actName,chapterName,count)
	writeLogFile("--------��齱��ʼ--------")
	while true do
		
		if findpic(chapterName,true) == false then
			sleep(1000)
			if findpic(actName,true) == false then
				sleep(1000)
				if findpic("�",true) == false then
					sleep(1000)
					if findpic("��ս",true) == false then
						sleep(1000)
					end
					
				end
			else
				sleep(3000)
				�ر�����ҳ(3)
				sleep(1000)
				if findpic(chapterName) == false then
					writeLogFile("�˺�δ�����ù���")
					break
				end
			end
		else
			sleep(2000)
			if findpic("hd-�齱-�ٻ�10��",true) then
				local countcj = 20
				while countcj>1 do
					countcj = countcj -1
					if findpic("hd-�齱-��һ��",true) then
						sleep(2000)
						if findstr("ȷ��",true) then
							
							writeLogFile("������һ��ɹ�")
						end
						sleep(2000)
					end
					if  findpic("hd-�齱-�ٴ��ٻ�10��",true)then
						
						writeLogFile("�齱�ɹ�1��")
						
						sleep(2000)
					end
					if  findpic("hd-�齱-û��ȯ��",true)then
						
						writeLogFile("û��ȯ��")
						break
						sleep(2000)
					end
					
				end
			end
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("�齱ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	--������������ο�
	
	writeLogFile("--------��齱����--------")
end
