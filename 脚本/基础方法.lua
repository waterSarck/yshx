setDict(0,"�������.txt")
useDict(0)
--�Ƿ�������
function loading(count)
	local stopCount = 0
	while true do
		count = count -1
		if findStrSub("������") or findStrSub("������") or findpic("zrz����") or findpic("������") or findpic("������2") or findpic("������3") then
			print("������...")
			sleep(10000)
			count = count +1
			stopCount = stopCount + 1
		end
		if count==0 then
			return false
		end
		if stopCount>30 then
			writeLogFile("����3���ӣ���������")
			��������()
			sleep(8000)
			stopCount=0
		end
	end
end
--����ҳ���Ƿ�ɹ�
function isInPage(cycCount,pageName,keyName,keyType,sim)
	if  keyType == "img" then
		while true do
			cycCount = cycCount -1
			if findpic(keyName) then
				print(pageName,"����ɹ�")
				return true
			end
			if cycCount==0 then
				print(pageName,"����ʧ��")
				return false
			end
			sleep(1000)
		end
	elseif	keyType == "txt" then
		while true do
			cycCount = cycCount -1
			print(cycCount)
			if findstr(keyName) then
				print(pageName,"����ɹ�")
				return true
			end
			if cycCount==0 then
				print(pageName,"����ʧ��")
				return false
			end
			sleep(1000)
		end
	else
		print(pageName,"��������")
		return false
	end
end
--�����кŻ�ȡ�û���Ϣ
function readUserInfoByLineNum(lineNum,filePath)
	--��ȡ�û��ļ�
	local mydata = readdata(filePath)
	return {mydata[lineNum][1],mydata[lineNum][2]}
end
--��ȡ�ļ�����
function getFileLineNum(filePath)
	local mydata = readdata(filePath)
	return #mydata
end
function readdata(path_data)
	local t = {}
	local i = 1
	for line in io.lines(path_data) do
		t[i] = splitStr(line,"|")
		i = i + 1
	end
	return t
end

function getPoint(p0,p1,p2,p3,t)
	local tSq = t * t
	local tCu = tSq * t
	
	local oneMinusT = 1 - t
	local oneMinusTSq = oneMinusT * oneMinusT
	local oneMinusTCu = oneMinusTSq * oneMinusT
	
	local point = {
	x = oneMinusTCu * p0.x + 3 * oneMinusT * t * p1.x + 3 * oneMinusTSq * t * p2.x + tCu * p3.x,
	y = oneMinusTCu * p0.y + 3 * oneMinusT * t * p1.y + 3 * oneMinusTSq * t * p2.y + tCu * p3.y,
	}
	
	return point
end
--���������ж�
function findAreaStr(x1, y1, x2, y2,text,colorfmt,sim)
	local x=-1 y=-1
	print(x1, y1, x2, y2,text,colorfmt,sim)
	ret,x,y=findStr(x1,y1,x2,y2,text,colorfmt,sim)
	print("x:"..x.." y:"..y)
	if x~=-1 and y~=-1 then
		return true
	end
end
--������ͼ
function findPicAry(stagerName,clickflag)
	local t = #stagerName
	print("ͼƬ����",#stagerName)
	for i=0,t-1 do
		print("ͼƬ:",t-i)
		if findpic(stagerName[t-i],clickflag) then
			writeLogFile("��ͼ�ɹ�",stagerName[t-i])
			return true
		end
	end
	return false
end

function findStrSubAry(stagerName,clickflag)
	local t = #stagerName
	print("��������",#stagerName)
	for i=0,t-1 do
		print("����:",t-i)
		if findStrSub(stagerName[t-i],clickflag) then
			writeLogFile("���ֳɹ�",stagerName[t-i])
			return true
		end
	end
	return false
end
--������ͼ
function findPicMove(stagerName,mvPos,clickflag)
	for i=1,3 do
		if findpic(stagerName,false) == false  then
			swipe(mvPos[1],mvPos[2],mvPos[3],mvPos[4],1000)
			--swipe(751,410,1144,410,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	return findpic(stagerName,clickflag)
end
function findStrMove(stagerName,mvPos,clickflag)
	for i=1,3 do
		if findstr(stagerName,false) == false  then
			swipe(mvPos[1],mvPos[2],mvPos[3],mvPos[4],1000)
			--swipe(751,410,1144,410,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	return findstr(stagerName,clickflag)
end
function findStrSubMove(stagerName,mvPos,clickflag)
	for i=1,3 do
		if findStrSub(stagerName,false) == false  then
			swipe(mvPos[1],mvPos[2],mvPos[3],mvPos[4],1000)
			--swipe(751,410,1144,410,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	return findStrSub(stagerName,clickflag)
end

function findStrSubCount(stagerName,count,clickflag)
	for i=1,count do
		if findStrSub(stagerName,clickflag) then			
			return true
		else
			sleep(1000)
		end	
	end
	return false
end

function findPicCount(stagerName,count,clickflag)
	for i=1,count do
		if findpic(stagerName,clickflag) then			
			return true
		else
			sleep(1000)
		end	
	end
	return false
end
--�������ַ���
function findStrSub(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
    
    if t[7] == nil then
    	t[7],t[8],t[9],t[10],t[11] = 50,0,0.60,0.30,2.00
    end
	
	local x,y
	local ret = ocrEx(t[3],t[4],t[5],t[6],t[7],t[8],t[9],t[10],t[11],false,false)
	--print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			local findRet = utf8.inStr(1,ret[i].text,t[1])
			--print("���ҽ��",findRet)
			if findRet ~=nil and findRet>0 then
				
				print("���ҵ�������",ret[i].text)
				
				print("����",t[1],"�ɹ�")
				x,y = (ret[i].l+ret[i].r)/2,(ret[i].t+ret[i].b)/2
				if t[2] then
					tap(x + rnd(-10,10),y + rnd(-10,10))
					print("���",x,y)
					sleep(1000,1600)
				end
				return true
			end
		end
	end
	print("����",t[1],"ʧ��")
	return false
end

--�������ַ���
function findStrSubTapOther(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
    
    if t[7] == nil then
    	t[7],t[8],t[9],t[10],t[11] = 50,0,0.60,0.30,2.00
    end
	
	local x,y
	local ret = ocrEx(t[3],t[4],t[5],t[6],t[7],t[8],t[9],t[10],t[11],false,false)
	--print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			local findRet = utf8.inStr(1,ret[i].text,t[1])
			--print("���ҽ��",findRet)
			if findRet ~=nil and findRet>0 then
				
				print("���ҵ�������",ret[i].text)
				
				print("����",t[1],"�ɹ�")
				x,y = (ret[i].l+ret[i].r)/2,(ret[i].t+ret[i].b)/2
				if t[2] then
					tap(x + rnd(-10,10),y + rnd(-10,10))
					print("���",x,y)
					sleep(1000,1600)
				end
				return true
			end
		end
	end
	print("����",t[1],"ʧ��")
	return false
end

function findStrSubUTF8(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
	
	local x,y
	local ret = ocrEx(t[3],t[4],t[5],t[6],50,0,0.60,0.30,2.00,false,false)
	--print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			local findRet = utf8.inStr(1,ret[i].text,t[1])
			print("���ҽ��",findRet)
			if findRet ~=nil and findRet>0 then
				
				print("���ҵ�������",ret[i].text)
				print("����",t[1],"�ɹ�")
				x,y = (ret[i].l+ret[i].r)/2,(ret[i].t+ret[i].b)/2
				if t[2] then
					tap(x + rnd(-10,10),y + rnd(-10,10))
					print("���",x,y)
					sleep(1000,1600)
				end
				return true
			end
		end
	end
	print("����",t[1],"ʧ��")
	return false
end
function findPicAndClick(imgName,clickType,xx,yy,sim)
	
	
	if clickType == nil then
		clickType = false
	end
	
	if sim == nil then
		sim = 0.9
	end
	
	
	
	
	
	local ret,x,y = findImage(0,0,0,0,imgName..".png",sim)
	if x > -1 and y > -1 then
		print("��ͼ",imgName,"�ɹ�")
		print("λ��",x,y)
		if clickType then
			tap(x + xx,y + yy)
			print("���",x+xx,y+yy)
			sleep(1000,1600)
		end
		return true
	else
		print("��ͼ",imgName,"ʧ��")
		return false
	end
end


--�ظ����
function cilickNum(count,x,y)
	while true do
		count = count -1
		mytap(x,y)
		sleep(1000)
		if count==0 then
			return true
		end
	end
end
function findpic(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
	
	local ret,x,y = findImage(t[3],t[4],t[5],t[6],t[1]..".png",0.9)
	if x > -1 and y > -1 then
		print("��ͼ",t[1],"�ɹ�")
		if t[2] then
			tap(x + rnd(0,10),y + rnd(0,10))
			print("���",x,y)
			sleep(1000,1600)
		end
		return true
	else
		print("��ͼ",t[1],"ʧ��")
		return false
	end
end

function findpicPoint(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
	
	local ret,x,y = findImage(t[3],t[4],t[5],t[6],t[1]..".png",0.9)
	if x > -1 and y > -1 then
		print("��ͼ",t[1],"�ɹ�")
		if t[2] then
			tap(x + rnd(0,10),y + rnd(0,10))
			print("���",x,y)
			sleep(1000,1600)
		end
		return {x,y}
	else
		print("��ͼ",t[1],"ʧ��")
		return false
	end
end
function findstr(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
	
	local x,y
	local ret = ocrEx(t[3],t[4],t[5],t[6],50,0,0.60,0.30,2.00,false,false)
	--print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			--print("���ҽ��",ret[i].text)
			if ret[i].text == t[1] then
				print("����",t[1],"�ɹ�")
				x,y = (ret[i].l+ret[i].r)/2,(ret[i].t+ret[i].b)/2
				if t[2] then
					tap(x + rnd(-10,10),y + rnd(-10,10))
					print("���",x,y)
					sleep(1000,1600)
				end
				return true
			end
		end
	end
	print("����",t[1],"ʧ��")
	return false
end
function findstrtest(...)
	local t = {...}
	
	if t[2] == nil then
		t[2] = false
	end
	
	if t[3] == nil then
		t[3],t[4],t[5],t[6] = 0,0,0,0
	end
	
	local x,y
	local ret = ocrEx(t[3],t[4],t[5],t[6],50,0,0.60,0.30,2.00,false,false)
	--print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			print("���ҽ��",ret[i].text)
			if ret[i].text == t[1] then
				print("����",t[1],"�ɹ�")
				x,y = (ret[i].l+ret[i].r)/2,(ret[i].t+ret[i].b)/2
				if t[2] then
					tap(x + rnd(-10,10),y + rnd(-10,10))
					print("���",x,y)
					sleep(1000,1600)
				end
				return true
			end
		end
	end
	print("����",t[1],"ʧ��")
	return false
end

function findStrReturn(x1,y1,x2,y2,padding,maxsidelen,boxscore,boxthresh,clipratio)
	if maxsidelen == nil then
		maxsidelen =0
	end
	if padding == nil then
		padding =50
	end
	if boxscore == nil then
		boxscore =0.60
	end
	if boxthresh == nil then
		boxthresh =0.30
	end
	if clipratio == nil then
		clipratio =2.00
	end
	print("��������",x1," ",y1," ",x2," ",y2,padding)
	local ret = ocrEx(x1,y1,x2,y2,padding,maxsidelen,boxscore,boxthresh,clipratio,false,false)
	--ocrEx(0,0,0,0,50,0,0.31,0.16,2.00,false,false)
	--ocrEx(x1,y1,x2,y2,padding,0,0.60,0.30,2.00,false,false)
	print("���ҽ��",ret)
	if ret ~= nil then
		for i=1,#ret do
			print("���ҽ��",ret[i].text)
			return ret[i].text
		end
	end
	return false
end

function mytap(x,y)
	tap(x + rnd(-5,5),y + rnd(-5,5))
	print("���",x,y)
	sleep(1000,1600)
end

function move(start_x,start_y,end_x,end_y)
	local t = {}
	local xx = math.floor((end_x - start_x)/10)
	for i=1,10 do
		t[i] = start_x + xx*i + rnd(-5,5)
		print(t[i])
	end
	
	touchDown(1,start_x,start_y)
	for i=1,10 do
		touchMoveEx(1,t[i],end_y+rnd(-5,5),rnd(50,150))
		sleep(rnd(50,100))
	end
	
	touchMoveEx(1,end_x,end_y,rnd(50,100))
	sleep(rnd(500,1000))
	touchUp(1)
end



function randomStr(no)
	local enStr = {"a","b","e","f","g","h","k","l","q","w"}
	return enStr[no]
end
function findOCRParm(x1,y1,x2,y2,hope)
	--local maxsidelen = {0,639,1}
	--local padding = {0,100,1}
	--local boxscore = {0,1,0.1}
	--local boxthresh ={0,1,0.1}
	--local clipratio = {0,3,0.1}
	print ("Ԥ�ڽ��",hope)
	local maxsidelen = {0,1,1}
	local padding = {0,2,50}
	local boxscore = {0,10,0.1}
	local boxthresh ={0,10,0.1}
	local clipratio = {0,30,0.1}
	local loopNum = 0
	for i=1,maxsidelen[2] do
		padding[1] = 0
		for i=1,padding[2] do
			boxscore[1]=0
			for i=1,boxscore[2] do
				boxthresh[1]=0
				for i=1,boxthresh[2] do
					clipratio[1] = 0
					for i=1,clipratio[2] do
						local t = findStrReturn(x1,y1,x2,y2,padding[1],maxsidelen[1],boxscore[1],boxthresh[1],clipratio[1])
						print("���Բ���",padding[1],maxsidelen[1],boxscore[1],boxthresh[1],clipratio[1])
						if t~=false then
							print ("**�ɹ����**",t,"Ԥ�ڽ��",hope)
							if t==hope then
								print("************************����OCR�����ɹ�*****************************************")
								print("�ɹ�����",padding[1],maxsidelen[1],boxscore[1],boxthresh[1],clipratio[1])
								print ("�ɹ����",t)
								return true
							end
						end
						loopNum = loopNum + 1
						print("���Խ���",maxsidelen[2]*padding[2]*boxscore[2]*boxthresh[2]*clipratio[2],loopNum)
						clipratio[1] = clipratio[1] + clipratio[3]
					end
					boxthresh[1] = boxthresh[1] + boxthresh[3]
				end
				boxscore[1] = boxscore[1] + boxscore[3]
			end
			padding[1] = padding[1] + padding[3]
		end
		maxsidelen[1] = maxsidelen[1] + maxsidelen[3]
	end
end
function proStrAdd(proStr,addStr)
	return proStr..addStr
end
function proStrWriteToFile(proStr,logPath)
	local nowTime = os.date("[%Y-%m-%d %H:%M:%S]", os.time())
	local nowDate = os.date("%Y%m%d", os.time())
	if logPath == nil then
		logPath = "/mnt/shared/Pictures/"
	end
	--local logPath = "/mnt/shared/Pictures/tj.log"
	local logFileNum = getModel()
	if logFileNum ~= nil then
		logPath = logPath.."tj"..logFileNum..".log"
	end
	--local logStr = proStr
	--writeFile(logPath,nowDate,"|",startFlag,"|",userNameSt,"|",true)
	
	
	--print(logPath)
	print(proStr)
	writeFile(logPath,proStr,true)
end
function ��ȡģ��������(config)
	local mode = getModel()
	
	print(config,mode)
	return config[mode]
end

function myfunction(msg)
	print("this is msg fun " .. msg);
end
function getfunction()
	local fun =_G["myfunction"];
	if fun then
		fun("is ok");
	end
end

function readConfigFile(filePath)
	local file = io.open(filePath, "r") -- ���ļ�
	if not file then
		print("�޷��������ļ�")
		return nil
	end
	
	local config = {} -- �洢������Ϣ�ı�
	local section = "general" -- Ĭ�ϵ����öΣ�section������Ϊ"general"
	
	for line in file:lines() do
		local trimmedLine = line:gsub("%s+$", "") -- ȥ����β�Ŀհ��ַ����������з���
		if trimmedLine:sub(1, 1) == "[" and trimmedLine:sub(-1) == "]" then
			section = trimmedLine:sub(2, -2) -- �������ö�����
		elseif trimmedLine ~= "" then
			local key, value = trimmedLine:match("(%w+)=(%w+)") -- ������ֵ��
			--print(value)
			--print(key)
			--print(section)
			if key and value then
				config[key]=value
				--table.insert(config,key.."="..value)
			end
			--print(config.key1)
		end
	end
	file:close() -- �ر��ļ�
	print(config)
	return config
end

function getinites()
	configPath = "/mnt/sdcard/Pictures/config.ini"
	-- ʹ�ú�����ȡ�����ļ�
	local config = readConfigFile(configPath)
	if config then
		-- ��ӡ������Ϣ
		for key,value in pairs(config) do
			
			print("  Key: " .. key .. ", Value: " .. value)
			
		end
	end
end

function ��������(sj)
	local handle = io.output(configPath)
	io.write(jsonLib.encode(sj))
	io.close(handle)
end
--JSON
function ��ȡ����(configPath)
	local handle = io.input(configPath)
	local tt = jsonLib.decode(io.read("*a"))
	io.close(handle)
	return tt
end
