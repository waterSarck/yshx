function ȥ�����(count)
	while true do
		������ҳ(5)
		--mytap(1249,30)
		--mytap(594,10)
		sleep(3000)
		�رչ��ҳ()
		
		while findpic("����-�ر�",true)  do
			sleep(3000)
			
			writeLogFile("�رչ�����")
		end
		count = count -1
		if findpic("��ս") and findpic("�رչ��",true)==false then
			print("�رչ��ɹ�")
			return true
		end
		if count==0 then
			print("������ҳʧ��")
			return false
		end
	end
end

function �رչ��ҳ(count)
	sleep(3000)
	while findpic("�رչ��",true) or findpic("�رչ��1",true) or findpic("gg�¿����",true) or findpic("hd�رչ��ҳ5",true) do
		print("�رչ��")
	end
	
end

--type 1,2,3,4 ��Ӧ����ҩ��eatNum��ҩ����
function ������ҩ(count,type,eatNum)
	while true do
		count = count -1
		
		if findpic("ȷ��",true) == false then
			if findpic("�ظ�����") then
				if type > 3 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl4��ҩ",true)
						sleep(1000)
					end
					type = type -1
				end
				
				if type > 2 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl3��ҩ",true)
						sleep(1000)
					end
					type = type -1
				end
				
				
				if type > 1 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl2��ҩ",true)
						sleep(1000)
					end
					type = type -1
				end
				if type > 0 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl1��ҩ",true)
						sleep(1000)
					end
					type = type -1
				end
				
			end
			if findpic("��",true) == false then
				--if findpic("�����ѻظ�") == false then
				if findpic("��������",true) == false then
					mytap(1064,33)
				end
				--end
			else
				sleep(1000)
				
			end
			
			
		else
			break
		end
		sleep(2000)
		
		
		
		if count==0 then
			print("������ҩʧ��")
			mytap(562,681)
			break
		end
	end
	������ҳ(1)
end
function ����ֿ�(count)
	local countTmp = count
	while true do
		if findpic("qhװ��",true) == false then
			if findpic("qh�ֿ�") == false then
				if findpic("�ֿ�ͼ��",true) == false then
					sleep(3000)
				end
				print("����װ��ҳ��")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("����װ��ʧ��")
			������ҳ(5)
			return false
		end
		sleep(1000)
	end
	
	if findpic("qh����",true) then
		--loading(2)
		--�ر�����ҳ(5)
		sleep(1000)
		
		
		if findstr("�Զ�ѡ��",true) then
			sleep(1500)
			if findstr("ȷ��",true) then
				sleep(1500)
				if findpic("qh��",true) then
					writeLogFile("����װ���ɹ�")
					sleep(1500)
					--findpic("����",true)
					
				end
				
			end
			sleep(1500)
			
		else
			sleep(3500)
			writeLogFile("����ʧ��")
			
		end
		sleep(3000)
		
		
	else
		writeLogFile("δ�ҵ�����װ��")
	end
	
	
	
	������ҳ(5)
	loading(3)
	--������������ο�
end

function ǿ��װ��(count)
	local countTmp = count
	while true do
		if findpic("qhװ��",true) == false then
			if findpic("qh�ֿ�") == false then
				if findpic("�ֿ�ͼ��",true) == false then
					sleep(3000)
				end
				print("����װ��ҳ��")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("ǿ��ʧ��")
			������ҳ(5)
			return false
		end
		sleep(1000)
	end
	for i=1,6 do
		if findpic("qh��0",false) == false and findpic("qh��1",true)== false and findpic("qh��2",true)== false and findpic("qh��3",true)== false then
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	if findpic("qh��0",true) or findpic("qh��1",true) or findpic("qh��2",true) or findpic("qh��3",true) then
		--loading(2)
		--�ر�����ҳ(5)
		sleep(1000)
		while true do
			if findpic("js����",true) == false then
				sleep(1500)
				if findpic("qhСʯͷ",true) == false then
					--if findstr("�Զ�ѡ��",true) == false then
					sleep(1500)
					if findpic("qhǿ��",true) == false then
						
					end
					sleep(1500)
				end
			else
				sleep(3500)
				writeLogFile("ǿ���ɹ�")
				������ҳ(5)
				loading(3)
				return true
			end
			sleep(3000)
			count = count -1
			if count == 0 then
				writeLogFile("ǿ��ʧ��")
				������ҳ(5)
				loading(3)
				return false
			end
			sleep(2000)
		end
	else
		writeLogFile("δ�ҵ�����װ��")
	end
	
	
	
	������ҳ(5)
	loading(3)
	return false
	--������������ο�
end

function ǿ������(count)
	local countTmp = count
	while true do
		if findpic("qh����",true) == false then
			if findpic("qh�ֿ�") == false then
				if findpic("�ֿ�ͼ��",true) == false then
					sleep(3000)
				end
				print("����װ��ҳ��")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("ǿ��ʧ��")
			������ҳ(5)
			return false
		end
		sleep(1000)
	end
	
	local sqlist = {"sq������","sq������","sqľ����"}
	
	for i=1,#sqlist do
		if findpic(sqlist[i],true) then
			--loading(2)
			--�ر�����ҳ(5)
			sleep(1000)
			if findpic("sqǿ��",true) then
				sleep(1500)
				if findstr("�Զ�ѡ��",true) then
					sleep(1500)
					if findpic("js����",true) then
						sleep(1500)
						writeLogFile("ǿ���ɹ�")
						
						sleep(2000)
					end
					sleep(3000)
					
				end
				sleep(2000)
				findpic("����",true)
				sleep(2000)
			end
		else
			writeLogFile("δ�ҵ���������")
		end
	end
	
	
	������ҳ(5)
	loading(3)
	--������������ο�
end

function ���ʼ�(cycCount)
	--�ʼ�
	--ȫ����ȡ
	--ok
	--������ҳ
	while true do
		if findPicAry({"yj�ʼ�","yj�ʼ�2","yj�ʼ�3","yj�ʼ�4","yj�ʼ�5"},true) then
			sleep(3000)
			if findPicAndClick("yjȫ����ȡ",true,5,5) then
				sleep(3000)
				if findPicAndClick("yjok",true,5,5) then
					writeLogFile("��ȡ�ʼ������ɹ�")
					sleep(3000)
					break
				end
			end
			
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("��ȡ�ʼ�����ʧ��")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	sleep(2000)
	������ҳ(2)
	return false
end

function ̽��(cycCount)
	--̽��
	--�ر�����
	--ȫ����ȡ
	--ok
	--һ����ǲ
	--������ҳ
	while true do
		if findPicAndClick("ts��ǲ",true,5,5) then
			sleep(3000)
			�ر�����ҳ(5)
			if findPicAndClick("tsȫ����ȡ",true,5,5) then
				sleep(3000)
				if findPicAndClick("tsok",true,5,5) then
					writeLogFile("��ȡ̽�������ɹ�")
					sleep(3000)
					break
				end
			end
			
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("��ȡ̽������ʧ��")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	findPicAndClick("tsһ����ǲ",true,5,5)
	sleep(2000)
	������ҳ(2)
	
end
function ������ɫ(count)
	local tmpCount
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
	for i=1,4 do
		--if findpic("js���׿���",false) == false  then
		if findpic("jsR��ɫ",false) == false and findpic("jsRlv",false) == false then
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	--if findpic("js���׿���",true) then
	if findpic("jsR��ɫ",true) or findpic("jsRlv",true) then
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
				if findpic("jsСҩˮ",true) == false then
					
					sleep(1500)
				end
			else
				sleep(1500)
				writeLogFile("�����ɹ�")
				������ҳ(5)
				loading(3)
				return true
			end
			sleep(3000)
			count = count -1
			if count == 0 then
				writeLogFile("����ʧ��")
				������ҳ(5)
				return false
			end
			sleep(2000)
		end
	else
		writeLogFile("δ�ҵ�������ɫ")
	end
	
	
	
	������ҳ(5)
	loading(3)
	return false
	--������������ο�
end

function ���ǽ�ɫ(count)
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
	local name = {"js����˿","js������","jsսȮ"}
	for j=1,#name do
		for i=1,4 do
			if findpic(name[j],false) == false  then
				swipe(777,627,771,177,1000)
				sleep(1000)
			else
				sleep(1000)
				break
			end
			sleep(1000)
		end
		if findpic(name[j],true) then
			loading(2)
			��ɫҳ_�ر�����(5)
			sleep(1000)
			while true do
				if findpic("js-����",true) then
					sleep(3000)
					����ҳ_�ر�����(5)
					sleep(3000)
					if findstr("����",true) then
						
						sleep(1500)
						if findstr("ȷ��",true) or findstr("ʱ��",true) then
							writeLogFile("���׳ɹ�")
							sleep(1500)
							--findpic("����",true)
							
						end
						
						��ɫҳ_�ر�����(5)
						break
					end
					sleep(1000)
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
			
			
			findpic("����",true)
			sleep(2000)
			
		else
			writeLogFile("δ�ҵ���ɫ")
		end
	end
	
	
	������ҳ(5)
	loading(3)
	return true
	--������������ο�
end

function ������ɫ(count)
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
	local name = {"js����˿","js������","jsսȮ"}
	for j=1,#name do
		for i=1,4 do
			if findpic(name[j],false) == false  then
				swipe(777,627,771,177,1000)
				sleep(1000)
			else
				sleep(1000)
				break
			end
			sleep(1000)
		end
		if findpic(name[j],true) then
			loading(2)
			��ɫҳ_�ر�����(5)
			sleep(1000)
			while true do
				if findpic("js-����",true) then
					sleep(3000)
					����ҳ_�ر�����(5)
					sleep(3000)
					if findstr("����",true) then
						
						sleep(1500)
						if findstr("ȷ��",true) or findstr("ʱ��",true) then
							writeLogFile("���׳ɹ�")
							sleep(1500)
							--findpic("����",true)
							
						end
						
						��ɫҳ_�ر�����(5)
						break
					end
					sleep(1000)
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
			
			
			findpic("����",true)
			sleep(2000)
			
		else
			writeLogFile("δ�ҵ���ɫ")
		end
	end
	
	
	������ҳ(5)
	loading(3)
	return true
	--������������ο�
end

function ǩ��(cycCount)
	while true do
		if �Ƿ���ҳ()==false then
			mytap(647,637)
			loading(5,"����")
			sleep(3000)
			while true do
				if findPicAndClick("ok",true,5,5) then
					sleep(3000)
					if �Ƿ���ҳ() then
						return true
					end
					������ҳ(1)
				end
				cycCount = cycCount -1
				if cycCount == 0 then
					print("ǩ��ʧ��")
					������ҳ(1)
					return false
				end
				sleep(2000)
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			print("ǩ��ʧ��")
			������ҳ(1)
			return false
		end
		sleep(2000)
	end
end
--�жϵ�¼״̬ ����ֵ����ҳ-1 ��¼ҳ�ɹ�ҳ-2 ��¼ҳ-3
function �жϵ�½״̬()
	print("-------�жϵ�¼״̬��ʼ")
	--��Ϊ�ǵ�¼״̬���¼���������
	loading(5)
	
	if �Ƿ�����ҳ(true) then
		sleep(5000)
		loading(5)
		if isInPage(5,"�ÿ͵���","�ÿ͵���","txt",txtParam,0.9)== true then
			print("��¼ҳ")
			return 3
		elseif �Ƿ������ҳ(1) then
			return 1
		else
			print("δ֪ҳ��")
			return 0
		end
	elseif isInPage(5,"�ÿ͵���","�ÿ͵���","txt",txtParam,0.9) then
		print("��¼ҳ")
		return 3
	elseif �Ƿ������ҳ(1) then
		return 1
	else
		print("δ֪ҳ��")
		return 0
	end
	
	print("-------�жϵ�¼״̬����")
end



function ��������֤(cycCount,type)
	local hkArea = {268,803,571,1078}--Ŀ�껬������
	local moveLen = 50 --�������� Ĭ��50
	local hkStartX = 198 --������ť��ʼλ��
	local hkStartY = 1120 --������ť��ʼλ��
	local hkEndX = hkStartX + moveLen --������ť����λ��
	local hkEr = 38 --ƫ���� ������һ��
	local hkBrideLen = 156 --���鵽��Ļ�߽����
	print("��������",type)
	if type == 1 then--������¼
		hkArea={268,803,571,1178}
		moveLen = 50 --�������� Ĭ��50
		hkStartX= 198 --������ť��ʼλ��
		hkStartY=1120 --������ť��ʼλ��
		hkEr = 38 --ƫ���� ������һ��
		hkBrideLen = 156 --���鵽��Ļ�߽����
	end
	if type == 2 then--�ÿ͵�¼
		hkArea={240,577,566,857}
		moveLen = 50 --�������� Ĭ��50
		hkStartX = 194 --������ť��ʼλ��
		hkStartY = 896 --������ť��ʼλ��
		hkEndX = hkStartX + moveLen --������ť����λ��
		hkEr = 38 --ƫ���� ������һ��
		hkBrideLen = 156 --���鵽��Ļ�߽����
	end
	if type == 3 then--ע��
		hkArea={241,907,568,1269}
		moveLen = 50 --�������� Ĭ��50
		hkStartX = 194 --������ť��ʼλ��
		hkStartY = 1226 --������ť��ʼλ��
		hkEndX = hkStartX + moveLen --������ť����λ��
		hkEr = 38 --ƫ���� ������һ��
		hkBrideLen = 156 --���鵽��Ļ�߽����
	end
	if type == 4 then--ע��
		hkArea={241,453,571,804}
		moveLen = 50 --�������� Ĭ��50
		hkStartX = 194 --������ť��ʼλ��
		hkStartY = 767 --������ť��ʼλ��
		hkEndX = hkStartX + moveLen --������ť����λ��
		hkEr = 38 --ƫ���� ������һ��
		hkBrideLen = 156 --���鵽��Ļ�߽����
	end
	
	
	
	while true do
		while findstr("���ڼ�����") do
			sleep(3000)
		end
		if findpic("����") or findpic("����һ��") or findstr("���һ������ƴͼ") then
			local x=-1 y=-1
			ret,x,y=findStr(hkArea[1],hkArea[2],hkArea[3],hkArea[4],"����","FFFFFF-505050",0.7)
			print("x",x,"y",y)
			if x < 500 and x > 0 then
				local hkEndX =hkStartX + x - hkBrideLen + hkEr
				toast("000",x,y,12)
				print(hkStartX,hkStartY,hkEndX,hkStartY)
				move(hkStartX,hkStartY,hkEndX,hkStartY)--��������
			else
				move(hkStartX,hkStartY,240,hkStartY)--Ĭ�ϻ�������
			end
			sleep(2000)
		end
		if findpic("��֤�ɹ�") or findpic("������֤�ɹ�") then
			print("������֤�ɹ�")
			return true
		end
		sleep(3000)
		cycCount = cycCount -1
		if cycCount == 0 then
			return false
		end
	end
end
--��һ���
function ��һ���()
	--local codeFilePath = "/mnt/sdcard/Pictures/code.txt"
	--local codeCount = getFileLineNum(codeFilePath)
	local codeList = ��ѯ�һ���()
	print("=============")
	print("����",codeList,"�һ���")
	print("=============")
	if findpic("�趨",true) == false then
		
	else
		for i=1,#codeList do
			local codeInfo = codeList[i]
			local code = codeInfo.invite_code..""
			local codeDes  = codeInfo.invite_dec..""
			
			if findpic("sz����") then
				while findpic("ȷ��",true) do
					sleep(1000)
					
				end
				
			end
			
			sleep(3000)
			if findpic("sz��Ŷһ�",true)  then
				sleep(1000)
				
				
				if findpic("sz���������",true) then
					sleep(1000)
					
					if findpic("ȷ��") then
						sleep(1000)
						writeLogFile(code)
						setIme(true)
						inputText(code,true)
						sleep(5000)
						while findpic("ȷ��",true) do
							sleep(6000)
							if findpic("sz�һ��ɹ�") then
								writeLogFile("�һ��ɹ�",code," :",codeDes)
							end
							if findpic("sz�һ�����") then
								writeLogFile("�һ����ظ�",code," :",codeDes)
							end
							sleep(1000)
						end
					end
					
					
					
				end
			end
		end
		
	end
	
	������ҳ(3)
end

function ��ع���()
	local codeFilePath = "/mnt/sdcard/Pictures/hgcode.txt"
	local codeCount = getFileLineNum(codeFilePath)
	print("=============")
	print("����",codeCount,"�ع���")
	print("=============")
	for i=1,codeCount do
		local codeInfo = readUserInfoByLineNum(i,codeFilePath)
		local code = codeInfo[1]
		local codeDes  = codeInfo[2]
		local tempCount = 10
		while true do
			
			--if (findpic("hd�ع���������2",true) == false) and (findpic("hd�������",true) == false) then
			if findpic("hd�������",true) == false then
				sleep(2000)
				if findpic("hd���߻ع�",true) == false then
					sleep(1000)
					if findpic("hd��������",true) == false then
						sleep(1000)
						if findpic("hd��ҳ�",true) == false then
							
						end
						sleep(2000)
					end
					sleep(2000)
				else
					if findpic("hd����ȡ�ع���",true) then
						writeLogFile("����ȡ�ع���")
						sleep(3000)
						������ҳ(3)
						return false
					end
				end
				sleep(2000)
			else
				sleep(2000)
				if findpic("hd�ع���ȷ��") then
					sleep(1000)
					writeLogFile(code)
					inputText(code)
					sleep(1000)
					if findpic("hd�ع�ȷ��",true) then
						sleep(3000)
						findpic("hd�ع�ȷ��",true)
						sleep(3000)
						if findpic("hd�ع���OK",true) then
							writeLogFile("�ع���һ��ɹ�",code)
							sleep(3000)
							������ҳ(3)
							return true
						end
						
						sleep(1000)
					end
					
					
					
					
				end
				
			end
			tempCount = tempCount-1
			if tempCount ==0 then
				break
			end
		end
		
	end
	������ҳ(3)
	return false
end

function ��ȡÿ��������(userName)
	local actionFlag = false
	findpic("���",true)
	sleep(4000)
	findpic("���",true)
	sleep(4000)
	findstr("ȫ����ȡ",true,930,626,1189,697)
	sleep(4000)
	findpic("ȷ��",true)
	sleep(4000)
	if findpic("ok",true) then
		
	end
	sleep(4000)
	findpic("ÿ��������2",true)
	--findpic("rw����5",false)
	--findPicAndClick("rw����5",false,0,0,0.7)
	local a=496
	for i=1,25 do
		
		mytap(a,640)--����1λ��
		sleep(2000)
		mytap(a,640)--����1λ��s
		findpic("ok",true)
		sleep(2000)
		a=a+20
	end
	
	findpic("ok",true)
	sleep(4000)
	
	if findpic("tjÿ���������") then
		writeLogFile("tjÿ���������")
		actionFlag = true
	end
	
	ҳ���ͼ(userName)
	findpic("ÿ��",true)
	sleep(4000)
	findstr("ȫ����ȡ",true,930,626,1189,697)
	sleep(4000)
	findpic("ȷ��",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	findpic("rw����4",true)
	local t = 490
	for i=1,25 do
		
		mytap(t,640)--����1λ��
		sleep(3000)
		mytap(t,640)--����1λ��
		findpic("ok",true)
		sleep(2000)
		t=t+20
	end
	
	findpic("ok",true)
	sleep(4000)
	ҳ���ͼ(userName)
	findpic("�ɾ�",true)
	sleep(4000)
	findstr("ȫ����ȡ",true,930,626,1189,697)
	sleep(1000)
	findpic("ȷ��",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	
	findpic("rw-�켣����",true)
	sleep(4000)
	findstr("ȫ����ȡ",true,930,626,1189,697)
	sleep(1000)
	findpic("ȷ��",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	
	
	������ҳ(5)
	return actionFlag
end

function �˳���¼(cycCount)
	while true do
		if findpic("ȷ��",true) == false then
			if findpic("ע��",true) == false then
				if findpic("�趨",true) == false then
					
				end
			end
		else
			sleep(30*1000)
			loading(5)
			if �Ƿ�����ҳ(true)== true then
				
				sleep(5000)
				if findstr("�ÿ͵���",false,429,709,567,759) then
					return true
				else
					return false
				end
				
			end
			if findstr("�ÿ͵���",false,429,709,567,759) then
				return true
			end
		end
		loading(5)
		�쳣���µ�¼(3)
		cycCount = cycCount -1
		if cycCount == 0 then
			print("�˳���¼ʧ��")
			return false
		end
		sleep(2000)
	end
	
	
end

function ��¼(Account,Password)
	
	sleep(2000*4)
	local countOut = 5
	while true do
		if findstr("�ÿ͵���",false,429,709,567,759) then
			mytap(211,599)
		end
		if findstr("ͼ����֤") == true then
			if findPicAndClick("��¼����",true,150,10)==true then
				sleep(1000)
				setIme(true)
				inputText(Account,true)
				sleep(1000)
				if findPicAndClick("��¼����",true)==true then
					sleep(1000)
					inputText(Password,true)
					sleep(1000)
					if ��������֤(10)==true then
						sleep(1000)
						move(345,1026,315,374,400)
						sleep(1000)
						while findpic("dlδ����",true) do
							sleep(3000)
						end
						if findpic("����",true) == true then
							sleep(2000)
							--��д��Ϣ��� ����δ�����δ�����δ��λ
							while true do
								local loginFlag = ��¼���()
								print("��¼���״̬",loginFlag)
								if loginFlag==true then
									break
									
								elseif loginFlag==1 then
									��������֤(10)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("����",true)
								elseif loginFlag==2 then
									findPicAndClick("��¼����",true,150,10)
									sleep(1000)
									inputText(Account,true)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("����",true)
								elseif loginFlag==3 then
									findPicAndClick("��¼����",true)
									sleep(1000)
									inputText(Password,true)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("����",true)
								elseif loginFlag==4 then
									findstr("����",true)
									sleep(1000)
									��������֤(10)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("����",true)
								end
							end
							while findpic("dlδ����",true) do
								sleep(3000)
							end
							loading(5)
							if �Ƿ�����ҳ(true)== true then
								
								return true
							end
						end
						
					end
				end
				sleep(1000)
			end
			
			
		end
		
		
		
		
		sleep(1000)
		countOut = countOut -1
		print("countOut",countOut)
		if countOut==0 then
			print("��¼ʧ��")
			return false
		end
		
	end
	
	
end
