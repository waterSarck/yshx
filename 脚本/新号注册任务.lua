setDict(0,"�������.txt")
useDict(0)


function ����Ϸ()
	writeLogFile("--------�����˺ſ�ʼ--------")
	local newUserInfo = �����˺�()
	writeLogFile("--------�����˺Ž���--------")
	writeLogFile("--------ע���˺ſ�ʼ--------")
	ע���˺�(newUserInfo)
	writeLogFile("--------ע���˺Ž���--------")
	writeLogFile("--------���˺ſ�ʼ--------")
	���˺�(newUserInfo)
	writeLogFile("--------���˺Ž���--------")
	�Ƿ�����ҳ(true)
	loading(5)
	if �Ƿ���ҳ(4) then
		writeLogFile("���˺ųɹ�",newUserInfo[1],newUserInfo[2])
	end
end
function �ÿ͵�¼()
	
	if findstr("�ÿ͵���",true,429,709,567,759) then
		sleep(3000)
		if findstr("ͼ����֤") == true then
			if ��������֤(10,2) == true then
				if findpic("����",true) == true then
					sleep(2000)
					loading(6)
					sleep(3000)
				end
			end
		end
	end
	
end
function ��������()
	if findpic("xsrw��������") or findpic("xsrw��ʾ") then
		--if findpic("xsrwͬ������",true) then
		if findpic("xsrwͬ������",true) or findpic("xsrw��������",true) then
			sleep(1000)
			if findpic("ȷ��",true) then
				writeLogFile("��������ɹ�")
				sleep(30000)---todo�Ҳ���������
				if findpic("xsrw��������",true) then
					loading(5)
				end
			end
			loading(5)
		end
	end
end
function ��������1ս��()
	--һ��ս��
	writeLogFile("--------��������1ս����ʼ--------")
	while (findstr("�뿪")==false and findstr("��һ��")==false) or findpic("xsrw����") or findpic("hdδ�ر�����") do
		mytap(945,603)--1����
		sleep(1000)
		mytap(1160,603)--3����
		sleep(1000)
		mytap(1160,603)--3����
		sleep(1000)
		mytap(1052,603)--2����
		sleep(1000)
		mytap(1052,603)--2����
		sleep(1000)
		mytap(945,603)--1����
		sleep(1000)
	end
	writeLogFile("--------��������1ս������--------")
end
function ��������2�Ϲ�����()
	--һ��ս��
	writeLogFile("--------��������2�Ϲ�������ʼ--------")
	if findstr("�뿪",true) or findstr("�ٴ���ս") or findpic("xsrw�Ϲ�����",true) then
		mytap(507,655)--����뿪
		loading(5)
		if findstr("��ս",true) or findpic("xsrw��ս",true) or findpic("xsrw�Ϲ�����",true) then
			sleep(2000)
			if findstr("��1��",true) or findstr("����˹�ľ���",true) or  findpic("xsrw�Ϲ�����",true) then
				sleep(1000)
				if findpic("xsrw�Ϲ�����",true) then
					sleep(1000)
					if findpic("xsrw��ս׼��",true) then
						loading(3)
						������(1)
						if findstr("��һ��",true) or findpic("hd��һ��",true) or findstr ("�뿪") then
							--writeLogFile("��������2�Ϲ������ɹ�")
							mytap(1099,657)--��һ��
							loading(3)
							--����ս��
							while (findstr("�뿪")==false and findstr("��һ��")==false) or findpic("xsrw����") or findpic("hdδ�ر�����") do
								mytap(1160,603)--3����
								sleep(1000)
								mytap(1160,603)--3����
								sleep(1000)
								mytap(1052,603)--2����
								sleep(1000)
								mytap(1052,603)--2����
								sleep(1000)
								mytap(994,603)--1����
								sleep(1000)
								mytap(928,280)--������
								sleep(1000)
							end
							while true do
								if findstr("�뿪",true) then
									loading(3)
									mytap(1216,29)--������ҳ
									loading(3)
									break
								end
							end
						end
						
					end
				end
			end
		end
	end
	writeLogFile("--------��������2�Ϲ���������--------")
end
function ��������3�ٻ�()
	--�ٻ�
	--�ٻ�1��
	--��
	--loading
	--����
	--����ս��
	--�ٻ�1��
	--��
	--loading
	--����
	--����ս��
	--ok
	--loading
	--������ҳ
	--loading
	writeLogFile("--------��������3�ٻ���ʼ--------")
	if findstr("�ٻ�",true) or findpic("xsrw�ٻ�",true)then
		loading(3)
		�ر�����ҳ(3)
		sleep(1000)
		local zhcount = 0 --�ٻ�����
		
		while findstr("�ٻ�1��",true) do
			sleep(3000)
			if findpic("��",true) then
				
				loading(4)
				while findpic("zh����",true) do
					sleep(6000)
					if findpic("hd����ս��",true) then
						sleep(5000)
						--mytap(1216,29)--�鿨
						break
					end
					--mytap(1216,29)--�鿨
				end
				while findpic("hd����ս��",true) do
					sleep(1000)
					--mytap(1216,29)--�鿨
				end
				writeLogFile("�ٻ���"..zhcount.."��")
				zhcount = zhcount +1
			end
			sleep(4000)
			if zhcount == 2 then
				break
			end
		end
		
		if findstr("OK",true) then
			loading(3)
			mytap(1216,29)--������ҳ
			loading(3)
		end
	end
	
	writeLogFile("--------��������3�ٻ�����--------")
end
function ��������4��ս()
	writeLogFile("--------��������4��ս��ʼ--------")
	if findstr("��ս",true) or findpic("xsrw��ս",true) then
		--if true then
		sleep(1000)
		if findstr("��1��",true) or findstr("����˹�ľ���",true) then
			--if true then
			sleep(2000)
			if findstr("1-2",true)  then
				--if true then
				sleep(2000)
				if findstr("��ս׼��",true) then
					--if true then
					sleep(2000)
					�ر�����ҳ()
					sleep(2000)
					if findstr("�Զ����",true) then
						sleep(2000)
						if findstr("��ս",true) then
							loading(3)
							--����ս��
							while (findstr("�뿪")==false and findstr("��һ��")==false) or findpic("xsrw����") or findpic("hdδ�ر�����") do
								mytap(1160,603)--3����
								sleep(1000)
								mytap(1160,603)--3����
								sleep(1000)
								mytap(1052,603)--2����
								sleep(1000)
								mytap(1052,603)--2����
								sleep(1000)
								mytap(994,603)--1����
								sleep(1000)
								mytap(813,267)--������
								sleep(1000)
							end
							loading(5)
							sleep(2000)
							if findstr("OK",true) or findstr("��һ��",true) or findstr("�뿪") then
								sleep(4000)
								while findstr("��") ==false do
									mytap(1081,656)--��һ��
									sleep(4000)
								end
								
								sleep(1000)
								if findstr("��",true) then
									loading(3)
									while findpic("hd��һ��") ==false and findpic("hd�뿪") ==false  do
										if findpic("hd����ս��",true) then
											loading(5)
											
										end
										mytap(1162,36)--���ս������
										sleep(1000)
									end
									if findstr("�뿪",true) or findpic("hd��һ��") or findpic("hd�뿪") then
										mytap(854,655)
										loading(3)
										mytap(1216,29)--������ҳ
										loading(3)
									end
								end
								
							end
							
						end
					end
				end
			end
		end
	end
	if findstr("��ս",true) or findpic("xsrw��ս",true) then
		--if true then
		--sleep(1000)
		if findstr("��1��",true) or findstr("����˹�ľ���",true) then
			--if true then
			sleep(2000)
			if findstr("ԭ��֮��",true) then
				--if true then
				sleep(2000)
				if findstr("��ս׼��",true) then
					--if true then
					sleep(2000)
					if findstr("��ս",true) then
						loading(3)
						--����ս��
						while (findstr("�뿪")==false and findstr("��һ��")==false) or findpic("xsrw����") or findpic("hdδ�ر�����") do
							mytap(1160,603)--3����
							sleep(1000)
							mytap(1160,603)--3����
							sleep(1000)
							mytap(1052,603)--2����
							sleep(1000)
							mytap(1052,603)--2����
							sleep(1000)
							mytap(994,603)--1����
							sleep(1000)
							mytap(813,267)--������
							sleep(1000)
						end
						loading(5)
						sleep(2000)
						if findstr("OK",true) or findstr("��һ��",true) or findstr("�뿪") then
							sleep(1000)
							mytap(1081,656)--��һ��
							if findstr("��һ��",true) then
							end
							sleep(1000)
							if findstr("��",true) then
								loading(3)
								while findpic("hd��һ��") ==false and findpic("hd�뿪") ==false  do
									if findpic("hd����ս��",true) then
										loading(5)
										
									end
									mytap(1162,36)--���ս������
									sleep(1000)
								end
								if findstr("�뿪",true) or findpic("hd��һ��") or findpic("hd�뿪") then
									mytap(854,655)
									loading(3)
									mytap(1216,29)--������ҳ
									loading(3)
								end
							end
							
						end
					end
				end
			end
		end
	end
	
	writeLogFile("--------��������4��ս����--------")
end
function ��������5�콱��()
	writeLogFile("--------��������5�콱����ʼ--------")
	if findstr("��ս") then
		mytap(81,480)--����
		sleep(3000)
		�ر�����ҳ()
		sleep(4000)
		mytap(1125,177)--��ȡ
		sleep(2000)
		if findpic("ok",true) or findstr("OK",true) then
			sleep(1000)
			mytap(1216,29)--������ҳ
		end
		������ҳ(3)
		sleep(5000)
	end
	writeLogFile("--------��������5�콱������--------")
end

function ��������6����()
	writeLogFile("--------��������6���ҿ�ʼ--------")
	if findstr("����",true) or findpic("xsrw����",true) or findpic("xsrw����2",true) then
		--if true then
		sleep(2000)
		if findstr("����˿",true) then
			loading(3)
			����_�ر�����ҳ(10)
			sleep(8000)
			while findpic("xsrw����ʱ����",true) do
				sleep(3000)
			end
			--mytap(1048,213)--��������
			sleep(10000)
			if findstr("�Զ�ѡ��",true)  or findStrSub("�Զ�",true) then
				sleep(1000)
				if findstr("ȷ��",true) then
					sleep(3000)
					mytap(1216,29)--������ҳ
					sleep(1000)
					mytap(1216,29)--������ҳ
					sleep(1000)
					loading(3)
				end
			end
		end
		--������ҳ(3)
	end
	writeLogFile("--------��������6���ҽ���--------")
end
function ��������7��һ��(count,stagerName,chapterName)
	writeLogFile("--------��������7��һ�¿�ʼ--------")
	
	while true do
		if findpic(stagerName,true)== false then
			if findpic(chapterName,true) == false then
				
				if findpic("����",true) == false then
					if findpic("��ս",true) == false then
						sleep(2000)
					end
					sleep(2000)
					
				else
					sleep(3000)
					�ر�����ҳ()
					sleep(1000)
					if findpic(chapterName) == false then
						print("�˺�δ�����ù���")
						break
					end
				end
			end
			
		else
			sleep(2000)
			�ر�����ҳ(3)
			��ͼ()
			findpic("hd�뿪",true)
			������һ��(5)
			--mytap(80,13)--����
			sleep(1000)
			findpic("zy��Դ",true)
			sleep(1000)
			findpic("zy�Խ�֮��",true)
			sleep(1000)
			if findpic("zy�Խ�1��",true) then
				writeLogFile("�Խ�1��")
			end
			sleep(5000)
			
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			print("ս��ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	writeLogFile("--------��������7��һ�½���--------")
end
function ��������8��������(chapterName,stagerName,count)
	writeLogFile("--------��������8�������䣨������ͨ2-2����ʼ--------")
	
	while true do
		if findpic(stagerName,true)== false then
			if findpic(chapterName,true) == false then
				
				if findpic("����",true) == false then
					if findpic("��ս",true) == false then
						sleep(2000)
					end
					sleep(2000)
					
				else
					sleep(3000)
					�ر�����ҳ()
					sleep(1000)
					if findpic(chapterName) == false then
						print("�˺�δ�����ù���")
						break
					end
				end
			end
			
		else
			sleep(2000)
			�ر�����ҳ(3)
			��ͼ()
			while true do
				while findpic("hd��һ��") or findstr("��һ��") do
					findpic("hd�뿪",true)
					findstr("�뿪",true)
					loading(5)
				end
				while  findstr("��ս׼��") do
					if ������һ��(5) then
						break
					end
					
				end
				
				--mytap(80,13)--����
				sleep(1000)
				if findstr("������",true) or findstr("Ȼ����",true) or findstr("ɯ����",true)then
					
					sleep(1000)
					�Ƶ��½�("zx��һ��","zxkn1-1",10)
					sleep(1000)
					break
					
					
				end
			end
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			print("ս��ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	writeLogFile("--------��������8�����������--------")
end


function ������������()
	
	��������2�Ϲ�����()
	��������3�ٻ�()
	��������4��ս()
	��������5�콱��()
	��������6����()
	ǩ��(5)
	������ҳ(3)
	ȥ�����(10)
	sleep(5000)
	������ҳ(3)
	
end

function �����˺�()
	--��������˺�
	local pwd = "a"
	local userName = "@sina.com"
	for i=1,10 do
		local no = math.random(1,9)
		userName = randomStr(no)..userName
	end
	for i=1,10 do
		local no = math.random(1,9)
		pwd = randomStr(no)..pwd
	end
	pwd = pwd..math.random(1,9)
	writeLogFile("userName",userName)
	writeLogFile("pwd",pwd)
	return {userName,pwd}
end

function ע���˺�(userInfo)
	local pwd = userInfo[2]
	local userName = userInfo[1]
	local counttmp = 10
	while true do
		if findpic("xsrw���˺�",true) == false then
			--if false then
			sleep(1000)
			if findpic("�趨",true) == false then
			end
			
		end
		sleep(3000)
		loading(5)
		if findstr("��ѡ��ʾͬ��ʹ��������",true,123,752,601,867) then
			--if true then
			sleep(1000)
			if findstr("��һ��",true) then
				--if true then
				sleep(5000)
				if findstr("ͼ����֤") == true then
					move(345,1026,315,374,400)
					if findpic("xsrwע�����˺�",true)  then
						sleep(1000)
						move(345,374,315,1026,400)
						if findstr("ע��") == true then
							if findPicAndClick("xsrw���ʵ�ַ",true,150,10)==true then
								sleep(1000)
								setIme(true)
								inputText(userName,true)
								sleep(1000)
								if findPicAndClick("xsrw����",true)==true then
									sleep(1000)
									setIme(true)
									inputText(pwd,true)
									sleep(1000)
									if findPicAndClick("xsrw��������",true)==true then
										sleep(1000)
										inputText(pwd,true)
										sleep(1000)
										--move(345,374,315,1026,400)
										if ��������֤(10,3)==true then
											sleep(1000)
											move(345,1026,315,374,400)
											sleep(1000)
											while findpic("xsrw�º�ע��",true) == true do
												while true do
													local loginFlag = ע����()
													print("ע����״̬",loginFlag)
													if loginFlag==true then
														break
														
													elseif loginFlag==1 then
														��������֤(10,3)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw�º�ע��",true)
													elseif loginFlag==2 then
														findPicAndClick("xsrw���ʵ�ַ",true,150,10)
														sleep(1000)
														inputText(userName,true)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw�º�ע��",true)
													elseif loginFlag==3 then
														findPicAndClick("xsrw����",true)
														sleep(1000)
														inputText(pwd)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw�º�ע��",true)
														
													elseif loginFlag==5 then
														findPicAndClick("xsrw��������",true)
														sleep(1000)
														inputText(pwd,true)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw�º�ע��",true)
													end
												end
												
												sleep(2000)
											end
											--��д��Ϣ��� ����δ�����δ�����δ��λ
											while findstr("����",true) == true do
												sleep(2000)
											end
											break
										end
									end
								end
							end
						end
					end
				end
			end
		end
		
		
		counttmp = counttmp -1
		if counttmp == 0 then
			writeLogFile("ע���˺�ʧ��")
			
			break
			
		end
	end
	������ҳ(5)
end

function ���˺�(userInfo)
	local pwd = userInfo[2]
	local userName = userInfo[1]
	--��д��Ϣ��� ����δ�����δ�����δ��λ
	if findstr("ͼ����֤")  == true then
		if findPicAndClick("xsrw���ʵ�ַ",true,150,10)==true then
			sleep(1000)
			setIme(true)
			inputText(userName,true)
			sleep(1000)
			if findPicAndClick("xsrw����",true)==true then
				sleep(1000)
				inputText(pwd,true)
				sleep(1000)
				
				if ��������֤(10,1)==true then
					sleep(1000)
					move(345,1026,315,374,400)
					sleep(8000)
					if findpic("xsrw��Ϸ��",true) == true then
						sleep(2000)
						while true do
							local loginFlag = ��¼���()
							print("��¼���״̬",loginFlag)
							if loginFlag==true or loginFlag ==1 or loginFlag ==4 then
								break
								
								
							elseif loginFlag==2 then
								findPicAndClick("xsrw���ʵ�ַ",true,150,10)
								sleep(1000)
								inputText(userName,true)
								sleep(1000)
								sleep(1000)
								move(345,1026,315,374,400)
								sleep(1000)
								findpic("xsrw��Ϸ��",true)
							elseif loginFlag==3 then
								findPicAndClick("xsrw����",true)
								sleep(1000)
								inputText(pwd,true)
								sleep(1000)
								sleep(1000)
								move(345,1026,315,374,400)
								sleep(1000)
								findpic("xsrw��Ϸ��",true)
								
							end
						end
						if ��������֤(10,4)==true then
							sleep(6000)
							if findpic("xsrw��ȷ����",true) == true then
								loading(3)
								sleep(3000)
								while true do
									local loginFlag = ��¼���()
									print("��¼���״̬",loginFlag)
									if loginFlag==true or loginFlag ==2 or loginFlag ==3 or loginFlag ==4 then
										break
										
										
									else
										��������֤(10,4)
										sleep(1000)
										move(345,1026,315,374,400)
										sleep(1000)
										findpic("xsrw��ȷ����",true)
									end
								end
								sleep(30000)
								if findpic("xsrw�˺Ű󶨳ɹ�",true) == true then
									loading(5)
									if findstr("ȷ��",true) == true then
										writeLogFile("�˺Ű󶨳ɹ�")
										local nowDate = os.date("%Y%m%d", os.time())
										writeFile("/mnt/shared/Pictures/newUser.txt",nowDate.."\n",true)
										writeFile("/mnt/shared/Pictures/newUser.txt",userName.."|"..pwd.."\n",true)
										�½��˺����(userName,pwd)
										loading(3)
										��������()
										�Ƿ�����ҳ(true)
									elseif findstr("��ʧ��") then
										findstr("������Ϸ",true)
										writeLogFile("�˺Ű�ʧ��")
										loading(5)
									end
									
								end
							end
						end
						
					end
					
				end
			end
			sleep(1000)
		end
	end
	
end

function ��ȡ����������(userList)
	findpic("xsrw-�����",true)
	sleep(4000)
	findpic("xsrw-�����",true)
	sleep(4000)
    findStrSub("���ֻ",true)
    sleep(4000)
	local createCount = ��ѯ�˺Ŵ�������(userList.userName)
	if findStrSub("����",true) then
		sleep(4000)
		local stagerName = {"��1��","��2��","��3��","��4��","��5��","��6��","��7��"}
		local loopCount = math.tointeger(createCount)
		if loopCount>#stagerName then
			loopCount = #stagerName
		end
		for i=1,loopCount do
			findStrSub(stagerName[i],true)
			findstr("ȫ����ȡ",true)
			sleep(4000)
			findpic("ȷ��",true)
			sleep(4000)
			findpic("ok",true)
			sleep(4000)
			
		end
		findpic("rw����4",true)
		local t = 490
		for i=1,10 do
			
			mytap(t,640)--����1λ��
			sleep(3000)
			mytap(t,640)--����1λ��
			findpic("ok",true)
			sleep(2000)
			t=t+40
		end
		findpic("ok",true)
		sleep(4000)
	end
	������ҳ(5)
end
function ����������ɫ(count)
	count = 6
	while true do
		if findpic("js��ɫѡ��") == false then
			if findpic("js��ɫ",true) == false then
				sleep(3000)
				
				print("�����ɫҳ��")
			end
		else
			break
		end
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("����ʧ��")
			������ҳ(5)
			return false
		end
		sleep(1000)
	end
	--local name = {"js����˿","js�ֶ�","js������","jsսȮ"}
    local name = {"ʱ����","����","��ҹŮ","�԰���ʹ","����"}
	for j=1,#name do
		for i=1,4 do
			--if findpic(name[j],false) == false  then
            if findStrSub(name[j],false) == false  then
				swipe(777,627,771,177,1000)
				sleep(1000)
			else
				sleep(1000)
				break
			end
			sleep(1000)
		end
		if findStrSub(name[j],true) then
			loading(2)
			��ɫҳ_�ر�����(5)
			sleep(1000)
			while true do
				if findpic("jsͻ��",true) == false then
					if findstr("ǰ��ͻ��",true) == false then
						
						sleep(1500)
					else
						��ɫҳ_�ر�����(5)
					end
					sleep(1000)
				else
					
					sleep(1500)
					if findstr("��",true) then
						writeLogFile("ͻ�Ƴɹ�")
						sleep(1500)
						--findpic("����",true)
						break
					end
				end
				sleep(3000)
				count = count -1
				if count == 0 then
					writeLogFile("ͻ��ʧ��")
					
					count = 6
					break
				end
				sleep(2000)
			end
			while true do
				if findpic("js����",true) == false then
					if findstr("�Զ�ѡ��",true) == false then
						if findstr("�ѷ��ȼ�����") or findstr("�Ѵ�ȼ�����") then
							writeLogFile(name[j],"�Ѵ�ȼ�����")
							
							sleep(1500)
							break
							
						end
						sleep(1500)
					end
					sleep(1000)
				else
					sleep(1500)
					writeLogFile("�����ɹ�")
					--findpic("����",true)
					break
				end
				sleep(3000)
				count = count -1
				if count == 0 then
					writeLogFile("����ʧ��")
					
					count = 6
					break
				end
				sleep(2000)
			end
			
			
			if findpic("jsװ��",true)  then
				��ɫҳ_�ر�����(5)
				sleep(2500)
				if findstr("�Զ�ѡ��",true)  then
					sleep(1500)
					mytap(974,640)
					
				end
				
			end
			findpic("����",true)
			sleep(2000)
			
		else
			writeLogFile("δ�ҵ���ɫ")
		end
	end
	
	
	������ҳ(5)
	loading(3)
	--������������ο�
end
function �Ƿ��л�½�(count)
	while true do
		
		if findpic("�",true) == false then
			if findpic("��ս",true) == false then
				sleep(2000)
			end
			sleep(2000)
			
		else
			sleep(1000)
			�ر�����ҳ()
			sleep(1000)
			
			writeLogFile("�ѿ��Ż�½�")
			������ҳ(5)
			return true
			
		end
		
		count = count -1
		if count==0 then
			writeLogFile("δ���Ż�½�")
			������ҳ(5)
			return false
		end
	end
	������ҳ(5)
	return false
	
	
	
	--������������ο�
end


function ע����()
	--��д��Ϣ��� ����δ�����δ�����δ��λ
	print("ע���鿪ʼ")
	for i=1,3 do
		
		if findpic("����") or findpic("����һ��") or findstr("���һ������ƴͼ") or findstr("������ɰ�ȫ��֤") or findpic("dl����ɰ�ȫ��֤") then
			print("����ʧ��")
			return 1
		end
		if findpic("zc����δ��д") or findstr("����������δ��д") then
			print("����δ��д")
			sleep(1000)
			return 2
		end
		if findpic("dl����������") or findstr("������������") then
			print("1������δ��д")
			sleep(1000)
			return 3
		end
		if findstr("�������") then
			print("captcha��֤��ʧ��")
			sleep(1000)
			return 4
		end
		if findpic("zc������ȷ������") or findstr("��������ȷ������") then
			print("ȷ�����������벻��")
			sleep(1000)
			return 5
		end
		swipe(645,782,645,1240,1000)
		sleep(1000)
	end
	return true
end


function ��������(createCount)
	--�ÿ͵���
	--������֤
	--loading
	--��������
	--logFileNum = "02"
	writeLogFile("=============")
	writeLogFile("����",createCount,"�½��û�")
	
	for i=1,createCount do
		writeLogFile("********��",i,"����������ʼ********")
		writeLogFile("--------�˳���¼��ʼ--------")
		if �Ƿ������ҳ(1)  then
			
			if findpic("�趨",true) then
				sleep(2000)
				if findpic("xsrw���ð��˺�",true) then
					goto continue
					
				else
					
					�˳���¼(5)
				end
			end
		end
		writeLogFile("--------�˳���¼����--------")
		
		writeLogFile("--------�ÿ͵�¼��ʼ--------")
		�Ƿ�����ҳ(true)
		sleep(30000)
		if isInPage(5,"�ÿ͵���","�ÿ͵���","txt",txtParam,0.9)  then
			�ÿ͵�¼(5)
		end
		writeLogFile("--------�ÿ͵�¼����--------")
		
		writeLogFile("--------�������ʼ--------")
		if findpic("xsrw��������") or findpic("xsrw��ʾ") then
			��������()
			��������1ս��()
		end
		writeLogFile("--------�����������--------")
		
		writeLogFile("--------��������ʼ--------")
		������������()
		writeLogFile("--------�����������--------")
		
		::continue::
		
		
		����Ϸ()
		
		
		
		
		writeLogFile("********�����������********")
	end
end
