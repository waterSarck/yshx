setDict(0,"�������.txt")
useDict(0)
function �����߱�(chapterName,stagerName,count,knType)
	print(stagerName[1])
	
	while true do
		if findPicAry(stagerName,true)== false and findStrSub("Clear",true)==false then
			--if findpic(chapterName,true) == false then
			if findPicMove(chapterName,{1144,410,751,410},true) == false then
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
			else
				if knType == 1 then
					if findstr("������",true) or findstr("Ȼ����",true) or findstr("ɯ����",true) or findpic("zx-����",true) then
						
						sleep(1000)
						
					end
				end
			end
			
		else
			sleep(2000)
			�ر�����ҳ(3)
			������ͼ()
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
	--������������ο�
end

function �����߱�����(chapterName,stagerName,count,knType,zhangjie)
	print(zhangjie)
	local stagerNameStr = {}
	if zhangjie == nil then
		zhangjie = "0"
	end
	for i=0,20 do
		stagerNameStr[i] = zhangjie.."-"..i
		
	end
	print(stagerNameStr)
	while true do
		
		--if findpic(chapterName,true) == false then
		if findPicMove(chapterName,{1144,410,751,410},true) == false then
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
		else
			if knType == 1 then
				if findstr("������",true) or findstr("Ȼ����",true) or findstr("ɯ����",true) or findpic("zx-����",true) then
					
					sleep(1000)
					
				end
			end
			
			
			if findStrSubAry(stagerNameStr,true) or findPicAry(stagerName,true) then
				sleep(2000)
				�ر�����ҳ(3)
				������ͼ()
				break
			end
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
	--������������ο�
end

function ��ͼ()
	if findpic("hd��ս׼��",true) or findpic("hd��һ��",true) then
		
		�ر�����ҳ(3)
        sleep(3000)
                findpic("zd�ȼ���ʾ��һ��",true)
		loading(5)
		--������
		if findpic("hd�ظ�����") then
			writeLogFile("���޾���ս��")
			findpic("hd�ظ�����-��",true)
		elseif findstr("��",true) then
			
			writeLogFile("����H")
			loading(5)
			������(1)
		else
			if findpic("hd��ս",true) then --ս����־
				sleep(1000)
				�ر�����ҳ(3)
				if findpic("zd����ؿ�",true) or findpic("hd��ս",true) or findpic("zx�������þ���") then
					findpic("hd�ظ�����-��",true)
					sleep(1000)
					if findstr("�Զ����",true) then
						writeLogFile("�Զ����")
					end
					findpic("hd��ս",true)
				end
				loading(5)
				��ս��(1)
			else
				������(1)
			end
			
		end
		if findpic("ok",true) then
			writeLogFile("����")
		end
		if findpic("hd�뿪",true) then
			loading(5)
			writeLogFile("��ͼ����")
			while findpic("hd�뿪",true) do
				loading(5)
			end
			
			return true
		end
	end
end

function ������ͼ()
	writeLogFile("������ͼ")
	if findpic("hd��ս׼��",true) or findpic("hd��һ��",true) or findstr("��ս׼��",true) then
		sleep(3000)
        findpic("zd�ȼ���ʾ��һ��",true)
        loading(5)
		
        
		--������
		if findpic("hd�ظ�����") then
			writeLogFile("���޾���ս��")
			findpic("hd�ظ�����-��",true)
			
		else
			
			if findpic("hd��ս",true) then --ս����־
				sleep(1000)
				�ر�����ҳ(3)
				if findpic("zd����ؿ�",true) or findpic("zx�������þ���") or findpic("hd��ս",true) then
					findpic("hd�ظ�����-��",true)
					sleep(1000)
					if findstr("�Զ����",true) then
						writeLogFile("�Զ����")
					end
					findpic("hd��ս",true)
				end
				loading(5)
				��ս��(1)
			else
				if findstr("��",true) then
					writeLogFile("����H")
				end
				������(1)
			end
			while findpic("hd��һ��") do
				if findpic("ok",true) then
					writeLogFile("����")
				end
				findpic("hd��һ��",true)
				sleep(2000)
                
                        findpic("zd�ȼ���ʾ��һ��",true)
                        sleep(3000)
				
				if findpic("hd�ظ�����") then
					print("���޾���ս��")
					findpic("hd�ظ�����-��",true)
					break
				end
				if findstr("��",true) then
					writeLogFile("����H")
					loading(5)
					������(1)
				end
				loading(5)
				if findpic("hd��ս",true) then --ս����־
					loading(5)
					��ս��(1)
				else
					if findstr("��",true) then
						writeLogFile("����H")
					end
					������(1)
				end
			end
			
		end
		if findpic("hd�뿪",true) then
			loading(5)
			writeLogFile("��ͼ����")
			findpic("hd�뿪",true)
			return false
		end
	end
end

function �ƻ��(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if findPicAry(stagerName,true)== false  then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("�",true) == false then
						if findpic("��ս",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					�ر�����ҳ()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("�˺�δ�����ù���")
						break
					end
				end
			end
		else
			sleep(2000)
			������ͼ()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ս��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end

function �ƻ��STR(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if findStrSubAry(stagerName,true)== false  then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("�",true) == false then
						if findpic("��ս",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					�ر�����ҳ()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("�˺�δ�����ù���")
						break
					end
				end
			end
		else
			sleep(2000)
			������ͼ()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ս��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end

function �ƻ��new(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if (findstr("Story") and (findstr("NEW!",true) or findstr("NEWI",true)))== false then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("�",true) == false then
						if findpic("��ս",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					�ر�����ҳ()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("�˺�δ�����ù���")
						break
					end
				end
			end
		else
			sleep(2000)
			������ͼ()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ս��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end

function �ƻ����(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		
		if findpic(actName,true) == false then
			if findpic("�",true) == false then
				if findpic("��ս",true) == false then
					sleep(2000)
				end
				sleep(2000)
			end
		else
			sleep(3000)
			�ر�����ҳ()
			sleep(1000)
			
			swipe(266,523,266,323,1000)
			sleep(2000)
			if findpic(chapterName,true)  then
				sleep(2000)
				if findPicAry(stagerName,true) then
					sleep(2000)
					������ͼ()
					break
				else
					writeLogFile("δ�ҵ��½�")
				end
			else
				writeLogFile("�˺�δ�����ù���")
				break
			end
		end
		
		
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ս��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end
--����ƣ��½�����
function ɨ����Դ(actName,chapterName,count)
	print("********ɨ����Դ",actName,chapterName,"��ʼ")
	while true do
		if findpic("ok",true) == false then
			if findpic("ȷ��",true) == false then
				if findpic("ɨ��",true) == false then
					if findPicAry(chapterName,true) == false then
						if findPicMove(actName,{1144,410,751,410},true) == false then
							if findpic("zy��Դ",true) == false then
								if findpic("��ս",true) == false then
									sleep(2000)
								end
								sleep(2000)
							end
							sleep(2000)
						else
							sleep(3000)
							�ر�����ҳ()
							sleep(1000)
							
						end
						sleep(500)
					end
					sleep(500)
				else
					sleep(1000)
					if findpic("zy��������") then
						writeLogFile("���޴���ɨ��")
						findpic("ȷ��",true)
						break
					end
					if findpic("zy��δͨ��") then
						writeLogFile("��δͨ��")
						findpic("ȷ��",true)
						��ͼ()
						break
					end
					findpic("max",true)
				end
				sleep(500)
			end
			sleep(500)
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	print("********ɨ����Դ",actName,chapterName,"����")
	--������������ο�
end

function �����½�(actName,chapterName,stager,count)
	while true do
		if findpic(chapterName,true) == false then
			if findpic(actName,true) == false then
				if findpic("�",true) == false then
					if findpic("��ս",true) == false then
						sleep(2000)
					end
					sleep(2000)
				end
			else
				sleep(3000)
				�ر�����ҳ()
				sleep(1000)
				if findpic(chapterName) == false then
					writeLogFile("�˺�δ�����ù���")
					return false
				end
			end
		else
        writeLogFile("�����½ڳɹ�")
        	return true
        end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("�����½�ʧ��")
			return false
		end
	end
end

function ɨ��(count)
	while true do
		if findpic("ok",true) == false then
        sleep(2000)
			if findpic("ȷ��",true) == false then
            sleep(2000)
				if findpic("ɨ��",true) == false then
                sleep(2000)
				else
                sleep(2000)
					if findpic("zy��������") then
						writeLogFile("���޴���ɨ��")
						findpic("ȷ��",true)
						break
					end
					if findpic("���澫��") then
						writeLogFile("���޾���ɨ��")
						findpic("ȡ��",true)
						break
					end
				end
			end
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
end
function ɨ�����̻�ع�(actName,chapterName,stager,count)
	if �����½�(actName,chapterName,stager,count)==true then
    sleep(2000)
    	if findStrSubMove(stager,{751,410,1144,410},true) then
        	ɨ��(5)
        end   
    end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end
--����ƣ��½�����
function ɨ�����̻(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("ȷ��",true) == false then
				if findpic("ɨ��",true) == false then
					if findPicMove(stager,{751,410,1144,410},true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("�",true) == false then
									if findpic("��ս",true) == false then
										sleep(2000)
									end
									sleep(2000)
								end
							else
								sleep(3000)
								�ر�����ҳ()
								sleep(1000)
								if findpic(chapterName) == false then
									writeLogFile("�˺�δ�����ù���")
									break
								end
							end
						end
					end
				else
					if findpic("zy��������") then
						writeLogFile("���޴���ɨ��")
						findpic("ȷ��",true)
						break
					end
					if findpic("���澫��") then
						writeLogFile("���޾���ɨ��")
						findpic("ȡ��",true)
						break
					end
				end
			end
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end
--����ƣ��½�����
function ɨ���(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("ȷ��",true) == false then
				if findpic("ɨ��",true) == false then
					if findpic(stager,true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("�",true) == false then
									if findpic("��ս",true) == false then
										sleep(2000)
									end
									sleep(2000)
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
						end
					end
				else
					if findpic("���澫��") then
						writeLogFile("���޾���ɨ��")
						findpic("ȡ��",true)
						break
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end
function ��ȡ�������()
	if findpic("hd����",true) then
		sleep(2000)
		if findpic("hd����2",true) or findStrSub("����",true)  then
			sleep(2000)
			if findpic("hdȫ����ȡ",true) or findStrSub("ȫ����ȡ",true)  then
				sleep(2000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("��ȡ����ɹ�")
				end
			end
			sleep(2000)
			if findstr("ÿ��",true) or findStrSub("ÿ��",true) then
				sleep(2000)
				if findpic("hdȫ����ȡ",true) or findStrSub("ȫ����ȡ",true)  then
					sleep(2000)
					if findpic("ok",true)  then
						sleep(2000)
						writeLogFile("��ȡ�ÿ������ɹ�")
					end
				end
			end
		end
	end
    ҳ���ͼ("rw-hd")
end
function ɨ������һ��(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("ȷ��",true) == false then
				if findpic("ɨ��",true) == false then
					if findPicAry(stager,true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("�",true) == false then
									if findpic("��ս",true) == false then
										sleep(2000)
									end
									sleep(2000)
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
							writeLogFile("�ƶ���Ļ")
							swipe(751,410,1244,410,1000)
						end
					end
				else
					if findpic("���澫��") then
						writeLogFile("���޾���ɨ��")
						findpic("ȡ��",true)
						break
					elseif findstr("�޷�ʹ��ɨ��") or findstr("�޷�ʹ��ɨн") then
						findpic("ȷ��",true)
						��ͼ()
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
	
	��ȡ�������()
	
	������ҳ(5)
	--������������ο�
end


function �ƶϿ���(storyName,actionName,count)
	--��ս
	--����
	--�Ͽ���
	--�ر�����
	--hard
	--��ս --����
	--�Զ����
	--��ս
	--��ս��
	--ɨ�� --ȯ����
	--�콱
	
	--��ȡ����
	
	while true do
		
		
		if findpic(storyName,true) == false then
			if findpic("ts����",true) == false then
				if findpic("��ս",true) == false then
					sleep(2000)
				end
				sleep(2000)
			end
		else
			sleep(3000)
			if	actionName == 2 then
				findpic("ts�ڶ���",true)
			end
			sleep(3000)
			�ر�����ҳ(3)
			sleep(2000)
			������ͼ()
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
	
	if findpic("ts����",true) then
		sleep(2000)
		if findpic("hdȫ����ȡ",true)  then
			sleep(2000)
			if findpic("ok",true)  then
				sleep(2000)
			end
		end
	end
	
	������ҳ(5)
	--������������ο�
end


function ˢ��������ս(lv,count)
	local stg1 = "Hard"
	local stg2 = "50"
	if lv == 60 then
		stg1 = "Extreme"
		stg2 = "60"
	end
	
	if lv == 65 then
		stg1 = "Maniac"
		stg2 = "65"
	end
	
	if lv == 70 then
		stg1 = "God"
		stg2 = "70"
	end
	
	
	while true do
		
		if findstr("��������ս",true) == false then
			if findstr("��������ս",true) == false then
				if findpic("ts����",true) == false then
					if findpic("��ս",true) == false then
						sleep(2000)
					end
					sleep(2000)
				end
				
			end
		else
			sleep(3000)
			�ر�����ҳ(3)
			sleep(2000)
			if findStrSub(stg1,true,761,81,1254,530) or findStrSub(stg2,true,761,81,1254,530) then
				
				if findstr("��ս",true) then
					sleep(5000)
					if findstr("�Զ����",true) then
						
						sleep(1000)
						if findStrSub("����",true) then
							sleep(1000)
							findStrSub("ȷ��",true)
							writeLogFile("ȱ�ٽ�ɫ")
							sleep(1000)
							findstr("�Զ����",true)
						end
						if findstr("��ս",true) then
							sleep(1000)
							loading(5)
							��ս��()
							if findpic("sd�뿪",true) then
								loading(3)
							end
							if findStrSub("ɨ��",true) then
								sleep(2000)
								findpic("max",true)
								sleep(2000)
								findstr("ȷ��",true)
								sleep(2000)
								findpic("ok",true)
								sleep(2000)
								findStrSub("ok",true)
								
							end
							break
						end
						
					end
					if findStrSub("�볡���߲���",true) then
						sleep(1000)
						findStrSub("ȷ��",true)
						writeLogFile("�����볡ȯս��")
						sleep(1000)
						break
					end
					
					
					
				end
			end
			
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			
			print("ս��ʧ��")
			break
		end
	end
	
	if findpic("sl����",true) then
		sleep(2000)
		findpic("sl����",true)
		sleep(2000)
		if findStrSub("��������ս",true)  then
			sleep(2000)
			if findStrSub("ȫ����ȡ",true)  then
				sleep(6000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("����������ȡ�ɹ�")
				end
			end
			
		end
		findStrSub("��ս",true)
		sleep(2000)
		if findStrSub("��ս",true)  then
			sleep(2000)
			if findStrSub("ȫ����ȡ",true)  then
				sleep(6000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("������ս������ȡ�ɹ�")
				end
			end
			
		end
	end
	
	������ҳ(5)	--������������ο�
end

--������
function ������(count)
	while findpic("hd��һ��") ==false or findpic("hd�뿪") ==false or findpic("hd����ս��",true) do
		writeLogFile("������")
		sleep(2000)
		if findpic("hd��һ��") or findpic("hd�뿪") or findpic("hd��ս׼��") then
			writeLogFile("�������")
			return true
		end
		
		if findpic("hd����ս��",true) then
			loading(5)
			
		end
		if findpic("hd��ͣս��",false)==false then
			
			--=mytap(1162,36)--���ս������
			sleep(1000)
		end
		sleep(1000)
		findpic("zd����ս��",true)
		--mytap(1162,36)--���ս������
		sleep(1000)
		if findpic("jq�Զ�����") or findpic("qj�Զ�����1") then
			mytap(650,212)--�����Ի�
			sleep(1000)
			mytap(650,250)--�����Ի�
			sleep(1000)
			mytap(650,280)--�����Ի�
			sleep(1000)
			mytap(650,310)--�����Ի�
		else
			mytap(1071,35)--�����Ի�
			sleep(1000)
			writeLogFile("δ�ҵ��Զ����ţ������Ļ(1071,36)")
		end
		����ս��ģʽ()
		
		
		
	end
	loading(5)
	if findpic("hd��һ��") or findpic("hd�뿪") then
		return true
	end
end
function ����ս��ģʽ()
	
	if findpic("hdδ�Զ�3") then
		--findPicAry({"hdδ�Զ�2"},true)
        findStrSub("AUTO",true,0,570,324,711)
		sleep(1000)
        findpic("hdδ�Զ�3",true)
        sleep(1000)
	end
	if findpic("hdδ����") and findpic("hd�Ѽ���") == false then
		findpic("hdδ����",true)
		sleep(1000)
	end
    findpic("hdδ����2",true)
    sleep(1000)
    findpic("hdδ����3",true)
    sleep(1000)
	findpic("hdδ�ر�����",true)
    sleep(1000)
    findpic("hdδ�ر�����2",true)
	sleep(1000)
    �رչ��ҳ()
end
--��ս��
function ��ս��20240720(count)
	while findpic("hd��һ��") ==false or findpic("hd�뿪") ==false or findpic("hd����ս��",true) do
		writeLogFile("��ս��")
		findpic("hd����ս��",true)
		sleep(2000)
		if findpic("hd��һ��") or findpic("hd�뿪") or findpic("hd��ս׼��") then
			--print("�������")
			writeLogFile("��ս������")
			return true
		end
		
		if findpic("hd����ս��",true) then
			loading(5)
			
		end
		loading(5)
		
		--if findpic("hd��ͣս��",false) == false then
		
		----mytap(1162,36)--���ս������
		--mytap(1169,63)
		--sleep(1000)
		
		--else
		--mytap(1169,63)--���ս������
		--sleep(1000)
		--end
		--sleep(2000)
		--findpic("zd����ս��",true)
		--findpic("zd����ս��2",true)
		
		����ս��ģʽ()
		
	end
	loading(5)
	if findpic("hd��һ��") or findpic("hd�뿪") then
		writeLogFile("��ս������")
		return true
	end
end

function ��ս��(count)
	while findpic("hd��һ��") ==false or findpic("hd�뿪") ==false or findpic("sd�뿪") ==false or findpic("hd����ս��") do
		writeLogFile("��ս��")
		sleep(2000)
		if findpic("hd����ս��",true) then
			loading(5)
		end
		sleep(2000)
		if findpic("hd��һ��") or findpic("hd�뿪") or findpic("sd�뿪") or findpic("hd��ս׼��") then
			--print("�������")
			writeLogFile("��ս������")
			return true
		end
		
		if findpic("hd����ս��",true) then
			loading(5)
			
		end
		
		
		--if findpic("hd��ͣս��",false) == false then
		
		----mytap(1162,36)--���ս������
		--mytap(1169,63)
		--sleep(1000)
		
		--else
		--mytap(1169,63)--���ս������
		--sleep(1000)
		--end
		--sleep(2000)
		--findpic("zd����ս��",true)
		--findpic("zd����ս��2",true)
		
		����ս��ģʽ()
		
	end
	--loading(5)
	if findpic("hd��һ��") or findpic("hd�뿪") or findpic("sd�뿪") then
		writeLogFile("��ս������")
		return true
	end
end

function �Ƶ��½�(chapterName,stagerName,count)
	writeLogFile("--------��",chapterName,stagerName,"��ʼ--------")
	
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
						writeLogFile("�˺�δ�����ù���")
						break
					end
				end
			end
			
		else
			sleep(2000)
			�ر�����ҳ(3)
			��ͼ()
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ս��ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	writeLogFile("--------��",chapterName,stagerName,"����--------")
end

function ��δ�����½�(chapterName,stagerName,countIn)
	writeLogFile("--------��",chapterName,stagerName,"��ʼ--------")
	local count = countIn
	for i=1,#stagerName do
		while true do
			
			if findpic(stagerName[i],true)== false then
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
				
				return trues
			end
			
			sleep(2000)
			count = count -1
			if count==0 then
				findpic("ȡ��",true)
				print("ս��ʧ��")
				count = countIn
				break
			end
		end
	end
	
	������ҳ(5)
	writeLogFile("--------��",chapterName,stagerName,"����--------")
end

function ɨ������(chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("ȷ��",true) == false then
				if findpic("ɨ��",true) == false then
					if findpic(stager,true) == false then
						if findpic(chapterName,true) == false then
							
							if findpic("����",true) == false then
								if findpic("��ս",true) == false then
									sleep(2000)
								end
								sleep(2000)
							end
						end
					else
						sleep(3000)
						�ر�����ҳ(3)
						sleep(1000)
						if findpic(stager) == false then
							writeLogFile("�˺�δ�������½�")
							break
						end
					end
					
					
				else
					if findpic("���澫��") then
						writeLogFile("���޾���ɨ��")
						findpic("ȡ��",true)
						break
					elseif findstr("�޷�ʹ��ɨ��") or findstr("�޷�ʹ��ɨн") then
						findpic("ȷ��",true)
						��ͼ()
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("ɨ���ɹ�")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("ȡ��",true)
			writeLogFile("ɨ��ʧ��")
			break
		end
	end
	
	
	������ҳ(5)
	--������������ο�
end
function �Զ����(cycCount)
	
	while true do
		if findpic("bd���",true) then
			sleep(3000)
			�ر�����ҳ(5)
			if findstr("�Զ����",true) then
				sleep(3000)
				writeLogFile("�Զ���ӳɹ�")
				sleep(3000)
				break
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("�Զ����ʧ��")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	sleep(2000)
	������ҳ(2)
	
end
