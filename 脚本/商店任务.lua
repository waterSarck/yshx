function ˢ��̵�(shoopName,actName,page,count)
	if shoopName == "MAX" then
		shoopName = {"hdɨ��ȯ","hd���Լ","hd���","hd�ƽ�֮��","sd��Եʯ","hd����ɳ©"
		,"hd��ˮ","hd����","hd�����ز�","hd����ز�","hd������ҳ","hd�����ҳ","hd������ʯ","hdʥ���ز�","hd�����ز�","hdʥ����ҳ","hd������ҳ"}
	end
	if shoopName == "LV1" then
		shoopName = {"hdɨ��ȯ","hd���Լ","hd���","hd�ƽ�֮��"}
		--,"hd��ˮ","hd����","hd�����ز�","hd����ز�","hd������ҳ","hd�����ҳ","hd������ʯ","hdʥ���ز�","hd�����ز�","hdʥ����ҳ","hd������ҳ"}
	end
	
	if shoopName == "FK" then
		shoopName = {"hd������Լ","hdɨ��ȯ","hd���","hd������ҳ","hd�����ҳ","hd������ʯ","hdʥ����ҳ","hd������ҳ"}
		--,"hd��ˮ","hd����","hd�����ز�","hd����ز�","hd������ҳ","hd�����ҳ","hd������ʯ","hdʥ���ز�","hd�����ز�","hdʥ����ҳ","hd������ҳ"}
	end
	local tmpCount = count
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
			�ر�����ҳ(3)
			sleep(1000)
			if findstr("�̵�",true) then
				�ر�����ҳ(3)
				if page == 2 then
					findstr("�Ż�",true)
				end
				sleep(3000)
				break
			end
		end
		sleep(1000)
		tmpCount = tmpCount -1
		if tmpCount==0 then
			������ҳ(1)
			return false
		end
	end
	
	for j=1,#shoopName do
		for i=1,3 do
			if findpic(shoopName[j],false) == false  then
				swipe(777,627,777,177,1000)
				sleep(1000)
			else
				sleep(1000)
				goto continuetmp
			end
			sleep(1000)
		end
		for i=1,3 do
			if findpic(shoopName[j],false) == false  then
				swipe(777,177,777,627,1000)
				sleep(1000)
			else
				sleep(1000)
				goto continuetmp
			end
			sleep(1000)
		end
		::continuetmp::
		if findpic(shoopName[j],true) then
			sleep(1000)
			tmpCount = count
			findpic("max",true)
			while true do
				if findpic("ok",true) == false then
					sleep(1000)
					if findstr("��",true) == false then
						
					else
						sleep(1000)
						if findstr("������ʾ") then
							findstr("ȷ��",true)
							findstr("��",true)
							writeLogFile("���ֲ����������")
							break
						end
						
					end
				else
					writeLogFile("ˢ��̵�ɹ�",shoopName[j])
					sleep(1500)
					break
				end
				sleep(1000)
				tmpCount = tmpCount -1
				if tmpCount==0 then
					������ҳ(1)
					break
				end
				
			end
		else
			writeLogFile("������Ʒ")
		end
	end
	--mytap(54,30)
	������ҳ(3)
end

function ˢ�����̵�(shoopName,goods,count)
	local tmpCount = count
	while true do
		
		if findstr(shoopName,true) == false then
			if findstr("�����̵�",true) == false then
				if findstr("�̵�",true) == false then
				else
					�ر�����ҳ(5)
				end
			end
		else
			break
		end
		sleep(1000)
		tmpCount = tmpCount -1
		if tmpCount==0 then
			������ҳ(1)
			return false
		end
	end
	
	������Ʒ(goods,false)
	--mytap(54,30)
	������ҳ(3)
end


function ˢ�̵�(shoopName,goods,count)
	local tmpCount = count
	while true do
		if findstr("�̵�",true) then
			�ر�����ҳ(5)
			for i=1,3 do
				if findStrSub(shoopName,true) == false  then
					swipe(131,550,131,177,1000)
					print("move")
					sleep(1000)
				else
					sleep(1000)
					goto continuetmp
				end
				sleep(1000)
			end
			
			sleep(1000)
			tmpCount = tmpCount -1
			if tmpCount==0 then
				print(tmpCount)
				������ҳ(3)
				return false
			end
		end
	end
	::continuetmp::
	local actionFlag = ������Ʒ(goods,true)
	--mytap(54,30)
	������ҳ(3)
	return actionFlag
end

function ˢ�䶷���̵�(shoopName1,shoopName2,goods,count)
	�����̵�·��(shoopName1,shoopName2,count)
	local actionFlag = ������Ʒ(goods,true)
	--mytap(54,30)
	������ҳ(3)
	return actionFlag
end
function �����̵�·��(shoopName1,shoopName2,count)
	local tmpCount = count
	while true do
		if findstr("�̵�",true) then
			�ر�����ҳ(5)
			for i=1,3 do
				if findStrSub(shoopName1,true) == false  then
					swipe(131,550,131,177,1000)
					print("move")
					sleep(1000)
				else
					sleep(1000)
                    if findStrSub(shoopName2,true) then
						goto continuetmp
                    end
				end
				sleep(1000)
			end
			
			sleep(1000)
			tmpCount = tmpCount -1
			if tmpCount==0 then
				print(tmpCount)
				������ҳ(3)
				return false
			end
		end
	end
	::continuetmp::
end

function ������Ʒ(goods,maxflag)
	for j=1,#goods do
		for i=1,3 do
			if findpic(goods[j],false) == false  then
				swipe(777,627,777,177,1000)
				sleep(1000)
			else
				sleep(1000)
				goto continuetmp
			end
			sleep(1000)
		end
		for i=1,3 do
			if findpic(goods[j],false) == false  then
				swipe(777,177,777,627,1000)
				sleep(1000)
			else
				sleep(1000)
				goto continuetmp
			end
			sleep(1000)
		end
		::continuetmp::
		if findpic(goods[j],true) then
			sleep(1000)
			tmpCount = 10
			if maxflag then
				findpic("max",true)
			end
			while true do
				if findpic("ok",true) == false then
					sleep(1000)
					if findstr("��",true) == false then
						
					else
						sleep(1000)
						if findstr("������ʾ") then
							findstr("ȷ��",true)
							findstr("��",true)
							writeLogFile("���ֲ����������")
							break
						end
						
					end
				else
					writeLogFile("ˢ��̵�ɹ�",goods[j])
					sleep(1500)
					--return ture
					break
				end
				sleep(1000)
				tmpCount = tmpCount -1
				if tmpCount==0 then
					������ҳ(1)
					break
				end
				
			end
		else
			writeLogFile("������Ʒ")
		end
	end
	return false
end

function ����()
	
	if ����ֿ����ҳ(count) then
		��������Ԫ��(����λ��,�������ϻ����ң�ͼƬ���ƣ���������)
	end
end
