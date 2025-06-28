function 去除广告(count)
	while true do
		返回主页(5)
		--mytap(1249,30)
		--mytap(594,10)
		sleep(3000)
		关闭广告页()
		
		while findpic("古神活动-关闭",true)  do
			sleep(3000)
			
			writeLogFile("关闭古神广告")
		end
		count = count -1
		if findpic("出战") and findpic("关闭广告",true)==false then
			print("关闭广告成功")
			return true
		end
		if count==0 then
			print("进入主页失败")
			return false
		end
	end
end

function 关闭广告页(count)
	sleep(3000)
	while findpic("关闭广告",true) or findpic("关闭广告1",true) or findpic("gg月卡广告",true) or findpic("hd关闭广告页5",true) do
		print("关闭广告")
	end
	
end

--type 1,2,3,4 对应体力药，eatNum吃药数量
function 吃体力药(count,type,eatNum)
	while true do
		count = count -1
		
		if findpic("确认",true) == false then
			if findpic("回复精力") then
				if type > 3 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl4号药",true)
						sleep(1000)
					end
					type = type -1
				end
				
				if type > 2 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl3号药",true)
						sleep(1000)
					end
					type = type -1
				end
				
				
				if type > 1 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl2号药",true)
						sleep(1000)
					end
					type = type -1
				end
				if type > 0 then
					--cilickNum(10,336,371)
					--cilickNum(10,483,371)
					--cilickNum(10,629,371)
					for i=1,eatNum do
						findpic("tl1号药",true)
						sleep(1000)
					end
					type = type -1
				end
				
			end
			if findpic("是",true) == false then
				--if findpic("精力已回复") == false then
				if findpic("增加体力",true) == false then
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
			print("吃体力药失败")
			mytap(562,681)
			break
		end
	end
	返回主页(1)
end
function 清理仓库(count)
	local countTmp = count
	while true do
		if findpic("qh装备",true) == false then
			if findpic("qh仓库") == false then
				if findpic("仓库图标",true) == false then
					sleep(3000)
				end
				print("进入装备页面")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("清理装备失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	
	if findpic("qh出售",true) then
		--loading(2)
		--关闭引导页(5)
		sleep(1000)
		
		
		if findstr("自动选择",true) then
			sleep(1500)
			if findstr("确定",true) then
				sleep(1500)
				if findpic("qh是",true) then
					writeLogFile("清理装备成功")
					sleep(1500)
					--findpic("返回",true)
					
				end
				
			end
			sleep(1500)
			
		else
			sleep(3500)
			writeLogFile("清理失败")
			
		end
		sleep(3000)
		
		
	else
		writeLogFile("未找到清理装备")
	end
	
	
	
	返回主页(5)
	loading(3)
	--你可以拿来做参考
end

function 强化装备(count)
	local countTmp = count
	while true do
		if findpic("qh装备",true) == false then
			if findpic("qh仓库") == false then
				if findpic("仓库图标",true) == false then
					sleep(3000)
				end
				print("进入装备页面")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("强化失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	for i=1,6 do
		if findpic("qh加0",false) == false and findpic("qh加1",true)== false and findpic("qh加2",true)== false and findpic("qh加3",true)== false then
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	if findpic("qh加0",true) or findpic("qh加1",true) or findpic("qh加2",true) or findpic("qh加3",true) then
		--loading(2)
		--关闭引导页(5)
		sleep(1000)
		while true do
			if findpic("js升级",true) == false then
				sleep(1500)
				if findpic("qh小石头",true) == false then
					--if findstr("自动选择",true) == false then
					sleep(1500)
					if findpic("qh强化",true) == false then
						
					end
					sleep(1500)
				end
			else
				sleep(3500)
				writeLogFile("强化成功")
				返回主页(5)
				loading(3)
				return true
			end
			sleep(3000)
			count = count -1
			if count == 0 then
				writeLogFile("强化失败")
				返回主页(5)
				loading(3)
				return false
			end
			sleep(2000)
		end
	else
		writeLogFile("未找到升级装备")
	end
	
	
	
	返回主页(5)
	loading(3)
	return false
	--你可以拿来做参考
end

function 强化神器(count)
	local countTmp = count
	while true do
		if findpic("qh神器",true) == false then
			if findpic("qh仓库") == false then
				if findpic("仓库图标",true) == false then
					sleep(3000)
				end
				print("进入装备页面")
			end
		else
			break
		end
		sleep(3000)
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("强化失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	
	local sqlist = {"sq火神器","sq土神器","sq木神器"}
	
	for i=1,#sqlist do
		if findpic(sqlist[i],true) then
			--loading(2)
			--关闭引导页(5)
			sleep(1000)
			if findpic("sq强化",true) then
				sleep(1500)
				if findstr("自动选择",true) then
					sleep(1500)
					if findpic("js升级",true) then
						sleep(1500)
						writeLogFile("强化成功")
						
						sleep(2000)
					end
					sleep(3000)
					
				end
				sleep(2000)
				findpic("返回",true)
				sleep(2000)
			end
		else
			writeLogFile("未找到升级神器")
		end
	end
	
	
	返回主页(5)
	loading(3)
	--你可以拿来做参考
end

function 领邮件(cycCount)
	--邮件
	--全部领取
	--ok
	--返回主页
	while true do
		if findPicAry({"yj邮件","yj邮件2","yj邮件3","yj邮件4","yj邮件5"},true) then
			sleep(3000)
			if findPicAndClick("yj全部领取",true,5,5) then
				sleep(3000)
				if findPicAndClick("yjok",true,5,5) then
					writeLogFile("领取邮件奖励成功")
					sleep(3000)
					break
				end
			end
			
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("领取邮件奖励失败")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	sleep(2000)
	返回主页(2)
	return false
end

function 探索(cycCount)
	--探索
	--关闭引导
	--全部领取
	--ok
	--一键派遣
	--返回主页
	while true do
		if findPicAndClick("ts派遣",true,5,5) then
			sleep(3000)
			关闭引导页(5)
			if findPicAndClick("ts全部领取",true,5,5) then
				sleep(3000)
				if findPicAndClick("tsok",true,5,5) then
					writeLogFile("领取探索奖励成功")
					sleep(3000)
					break
				end
			end
			
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("领取探索奖励失败")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	findPicAndClick("ts一键派遣",true,5,5)
	sleep(2000)
	返回主页(2)
	
end
function 升级角色(count)
	local tmpCount
	while true do
		if findpic("js角色选择") == false then
			if findpic("js角色",true) == false then
				sleep(3000)
				
				print("进入角色页面")
			end
		else
			break
		end
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("升级失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	for i=1,4 do
		--if findpic("js机甲狂兽",false) == false  then
		if findpic("jsR角色",false) == false and findpic("jsRlv",false) == false then
			swipe(777,627,771,177,1000)
			sleep(1000)
		else
			sleep(1000)
			break
		end
		sleep(1000)
	end
	--if findpic("js机甲狂兽",true) then
	if findpic("jsR角色",true) or findpic("jsRlv",true) then
		loading(2)
		角色页_关闭引导(5)
		sleep(1000)
		while true do
			if findpic("js突破",true) == false then
				if findstr("前往突破",true) == false then
					
					sleep(1500)
				else
					角色页_关闭引导(5)
				end
				sleep(1000)
			else
				
				sleep(1500)
				if findstr("是",true) then
					writeLogFile("突破成功")
					sleep(1500)
					--findpic("返回",true)
					break
				end
			end
			sleep(3000)
			count = count -1
			if count == 0 then
				writeLogFile("突破失败")
				
				count = 6
				break
			end
			sleep(2000)
		end
		while true do
			if findpic("js升级",true) == false then
				if findpic("js小药水",true) == false then
					
					sleep(1500)
				end
			else
				sleep(1500)
				writeLogFile("升级成功")
				返回主页(5)
				loading(3)
				return true
			end
			sleep(3000)
			count = count -1
			if count == 0 then
				writeLogFile("升级失败")
				返回主页(5)
				return false
			end
			sleep(2000)
		end
	else
		writeLogFile("未找到升级角色")
	end
	
	
	
	返回主页(5)
	loading(3)
	return false
	--你可以拿来做参考
end

function 升星角色(count)
	count = 6
	while true do
		if findpic("js角色选择") == false then
			if findpic("js角色",true) == false then
				sleep(3000)
				
				print("进入角色页面")
			end
		else
			break
		end
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("升星失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	local name = {"js伊娜丝","js卡蒂雅","js战犬"}
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
			角色页_关闭引导(5)
			sleep(1000)
			while true do
				if findpic("js-觉醒",true) then
					sleep(3000)
					升阶页_关闭引导(5)
					sleep(3000)
					if findstr("升阶",true) then
						
						sleep(1500)
						if findstr("确认",true) or findstr("时认",true) then
							writeLogFile("升阶成功")
							sleep(1500)
							--findpic("返回",true)
							
						end
						
						角色页_关闭引导(5)
						break
					end
					sleep(1000)
				end
				sleep(3000)
				count = count -1
				if count == 0 then
					writeLogFile("升阶失败")
					
					count = 6
					break
				end
				sleep(2000)
			end
			
			
			findpic("返回",true)
			sleep(2000)
			
		else
			writeLogFile("未找到角色")
		end
	end
	
	
	返回主页(5)
	loading(3)
	return true
	--你可以拿来做参考
end

function 进化角色(count)
	count = 6
	while true do
		if findpic("js角色选择") == false then
			if findpic("js角色",true) == false then
				sleep(3000)
				
				print("进入角色页面")
			end
		else
			break
		end
		countTmp = countTmp -1
		if countTmp == 0 then
			writeLogFile("升星失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	local name = {"js伊娜丝","js卡蒂雅","js战犬"}
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
			角色页_关闭引导(5)
			sleep(1000)
			while true do
				if findpic("js-觉醒",true) then
					sleep(3000)
					升阶页_关闭引导(5)
					sleep(3000)
					if findstr("升阶",true) then
						
						sleep(1500)
						if findstr("确认",true) or findstr("时认",true) then
							writeLogFile("升阶成功")
							sleep(1500)
							--findpic("返回",true)
							
						end
						
						角色页_关闭引导(5)
						break
					end
					sleep(1000)
				end
				sleep(3000)
				count = count -1
				if count == 0 then
					writeLogFile("升阶失败")
					
					count = 6
					break
				end
				sleep(2000)
			end
			
			
			findpic("返回",true)
			sleep(2000)
			
		else
			writeLogFile("未找到角色")
		end
	end
	
	
	返回主页(5)
	loading(3)
	return true
	--你可以拿来做参考
end

function 签到(cycCount)
	while true do
		if 是否主页()==false then
			mytap(647,637)
			loading(5,"入中")
			sleep(3000)
			while true do
				if findPicAndClick("ok",true,5,5) then
					sleep(3000)
					if 是否主页() then
						return true
					end
					返回主页(1)
				end
				cycCount = cycCount -1
				if cycCount == 0 then
					print("签到失败")
					返回主页(1)
					return false
				end
				sleep(2000)
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			print("签到失败")
			返回主页(1)
			return false
		end
		sleep(2000)
	end
end
--判断登录状态 返回值：首页-1 登录页成功页-2 登录页-3
function 判断登陆状态()
	print("-------判断登录状态开始")
	--若为非登录状态则登录，否则继续
	loading(5)
	
	if 是否启动页(true) then
		sleep(5000)
		loading(5)
		if isInPage(5,"访客登入","访客登入","txt",txtParam,0.9)== true then
			print("登录页")
			return 3
		elseif 是否进入主页(1) then
			return 1
		else
			print("未知页面")
			return 0
		end
	elseif isInPage(5,"访客登入","访客登入","txt",txtParam,0.9) then
		print("登录页")
		return 3
	elseif 是否进入主页(1) then
		return 1
	else
		print("未知页面")
		return 0
	end
	
	print("-------判断登录状态结束")
end



function 过滑块验证(cycCount,type)
	local hkArea = {268,803,571,1078}--目标滑块区域
	local moveLen = 50 --滑动距离 默认50
	local hkStartX = 198 --滑动按钮起始位置
	local hkStartY = 1120 --滑动按钮起始位置
	local hkEndX = hkStartX + moveLen --滑动按钮结束位置
	local hkEr = 38 --偏移量 滑块宽度一半
	local hkBrideLen = 156 --滑块到屏幕边界距离
	print("滑块类型",type)
	if type == 1 then--正常登录
		hkArea={268,803,571,1178}
		moveLen = 50 --滑动距离 默认50
		hkStartX= 198 --滑动按钮起始位置
		hkStartY=1120 --滑动按钮起始位置
		hkEr = 38 --偏移量 滑块宽度一半
		hkBrideLen = 156 --滑块到屏幕边界距离
	end
	if type == 2 then--访客登录
		hkArea={240,577,566,857}
		moveLen = 50 --滑动距离 默认50
		hkStartX = 194 --滑动按钮起始位置
		hkStartY = 896 --滑动按钮起始位置
		hkEndX = hkStartX + moveLen --滑动按钮结束位置
		hkEr = 38 --偏移量 滑块宽度一半
		hkBrideLen = 156 --滑块到屏幕边界距离
	end
	if type == 3 then--注册
		hkArea={241,907,568,1269}
		moveLen = 50 --滑动距离 默认50
		hkStartX = 194 --滑动按钮起始位置
		hkStartY = 1226 --滑动按钮起始位置
		hkEndX = hkStartX + moveLen --滑动按钮结束位置
		hkEr = 38 --偏移量 滑块宽度一半
		hkBrideLen = 156 --滑块到屏幕边界距离
	end
	if type == 4 then--注册
		hkArea={241,453,571,804}
		moveLen = 50 --滑动距离 默认50
		hkStartX = 194 --滑动按钮起始位置
		hkStartY = 767 --滑动按钮起始位置
		hkEndX = hkStartX + moveLen --滑动按钮结束位置
		hkEr = 38 --偏移量 滑块宽度一半
		hkBrideLen = 156 --滑块到屏幕边界距离
	end
	
	
	
	while true do
		while findstr("正在加载中") do
			sleep(3000)
		end
		if findpic("滑动") or findpic("再试一次") or findstr("向右滑动填充拼图") then
			local x=-1 y=-1
			ret,x,y=findStr(hkArea[1],hkArea[2],hkArea[3],hkArea[4],"滑块","FFFFFF-505050",0.7)
			print("x",x,"y",y)
			if x < 500 and x > 0 then
				local hkEndX =hkStartX + x - hkBrideLen + hkEr
				toast("000",x,y,12)
				print(hkStartX,hkStartY,hkEndX,hkStartY)
				move(hkStartX,hkStartY,hkEndX,hkStartY)--滑动滑块
			else
				move(hkStartX,hkStartY,240,hkStartY)--默认滑动滑块
			end
			sleep(2000)
		end
		if findpic("验证成功") or findpic("滑块验证成功") then
			print("滑块验证成功")
			return true
		end
		sleep(3000)
		cycCount = cycCount -1
		if cycCount == 0 then
			return false
		end
	end
end
--领兑换码
function 领兑换码()
	--local codeFilePath = "/mnt/sdcard/Pictures/code.txt"
	--local codeCount = getFileLineNum(codeFilePath)
	local codeList = 查询兑换码()
	print("=============")
	print("共计",codeList,"兑换码")
	print("=============")
	if findpic("设定",true) == false then
		
	else
		for i=1,#codeList do
			local codeInfo = codeList[i]
			local code = codeInfo.invite_code..""
			local codeDes  = codeInfo.invite_dec..""
			
			if findpic("sz错误") then
				while findpic("确认",true) do
					sleep(1000)
					
				end
				
			end
			
			sleep(3000)
			if findpic("sz序号兑换",true)  then
				sleep(1000)
				
				
				if findpic("sz请输入序号",true) then
					sleep(1000)
					
					if findpic("确认") then
						sleep(1000)
						writeLogFile(code)
						setIme(true)
						inputText(code,true)
						sleep(5000)
						while findpic("确认",true) do
							sleep(6000)
							if findpic("sz兑换成功") then
								writeLogFile("兑换成功",code," :",codeDes)
							end
							if findpic("sz兑换过了") then
								writeLogFile("兑换码重复",code," :",codeDes)
							end
							sleep(1000)
						end
					end
					
					
					
				end
			end
		end
		
	end
	
	返回主页(3)
end

function 领回归码()
	local codeFilePath = "/mnt/sdcard/Pictures/hgcode.txt"
	local codeCount = getFileLineNum(codeFilePath)
	print("=============")
	print("共计",codeCount,"回归码")
	print("=============")
	for i=1,codeCount do
		local codeInfo = readUserInfoByLineNum(i,codeFilePath)
		local code = codeInfo[1]
		local codeDes  = codeInfo[2]
		local tempCount = 10
		while true do
			
			--if (findpic("hd回归码点击输入2",true) == false) and (findpic("hd点击输入",true) == false) then
			if findpic("hd点击输入",true) == false then
				sleep(2000)
				if findpic("hd至高回归",true) == false then
					sleep(1000)
					if findpic("hd分享邀请",true) == false then
						sleep(1000)
						if findpic("hd首页活动",true) == false then
							
						end
						sleep(2000)
					end
					sleep(2000)
				else
					if findpic("hd已领取回归码",true) then
						writeLogFile("已领取回归码")
						sleep(3000)
						返回主页(3)
						return false
					end
				end
				sleep(2000)
			else
				sleep(2000)
				if findpic("hd回归码确定") then
					sleep(1000)
					writeLogFile(code)
					inputText(code)
					sleep(1000)
					if findpic("hd回归确认",true) then
						sleep(3000)
						findpic("hd回归确认",true)
						sleep(3000)
						if findpic("hd回归码OK",true) then
							writeLogFile("回归码兑换成功",code)
							sleep(3000)
							返回主页(3)
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
	返回主页(3)
	return false
end

function 领取每日任务奖励(userName)
	local actionFlag = false
	findpic("礼包",true)
	sleep(4000)
	findpic("礼包",true)
	sleep(4000)
	findstr("全部领取",true,930,626,1189,697)
	sleep(4000)
	findpic("确认",true)
	sleep(4000)
	if findpic("ok",true) then
		
	end
	sleep(4000)
	findpic("每日任务宝箱2",true)
	--findpic("rw宝箱5",false)
	--findPicAndClick("rw宝箱5",false,0,0,0.7)
	local a=496
	for i=1,25 do
		
		mytap(a,640)--宝箱1位置
		sleep(2000)
		mytap(a,640)--宝箱1位置s
		findpic("ok",true)
		sleep(2000)
		a=a+20
	end
	
	findpic("ok",true)
	sleep(4000)
	
	if findpic("tj每日任务完成") then
		writeLogFile("tj每日任务完成")
		actionFlag = true
	end
	
	页面截图(userName)
	findpic("每周",true)
	sleep(4000)
	findstr("全部领取",true,930,626,1189,697)
	sleep(4000)
	findpic("确认",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	findpic("rw宝箱4",true)
	local t = 490
	for i=1,25 do
		
		mytap(t,640)--宝箱1位置
		sleep(3000)
		mytap(t,640)--宝箱1位置
		findpic("ok",true)
		sleep(2000)
		t=t+20
	end
	
	findpic("ok",true)
	sleep(4000)
	页面截图(userName)
	findpic("成就",true)
	sleep(4000)
	findstr("全部领取",true,930,626,1189,697)
	sleep(1000)
	findpic("确认",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	
	findpic("rw-轨迹任务",true)
	sleep(4000)
	findstr("全部领取",true,930,626,1189,697)
	sleep(1000)
	findpic("确认",true)
	sleep(4000)
	findpic("ok",true)
	sleep(4000)
	
	
	返回主页(5)
	return actionFlag
end

function 退出登录(cycCount)
	while true do
		if findpic("确认",true) == false then
			if findpic("注销",true) == false then
				if findpic("设定",true) == false then
					
				end
			end
		else
			sleep(30*1000)
			loading(5)
			if 是否启动页(true)== true then
				
				sleep(5000)
				if findstr("访客登入",false,429,709,567,759) then
					return true
				else
					return false
				end
				
			end
			if findstr("访客登入",false,429,709,567,759) then
				return true
			end
		end
		loading(5)
		异常重新登录(3)
		cycCount = cycCount -1
		if cycCount == 0 then
			print("退出登录失败")
			return false
		end
		sleep(2000)
	end
	
	
end

function 登录(Account,Password)
	
	sleep(2000*4)
	local countOut = 5
	while true do
		if findstr("访客登入",false,429,709,567,759) then
			mytap(211,599)
		end
		if findstr("图像验证") == true then
			if findPicAndClick("登录邮箱",true,150,10)==true then
				sleep(1000)
				setIme(true)
				inputText(Account,true)
				sleep(1000)
				if findPicAndClick("登录密码",true)==true then
					sleep(1000)
					inputText(Password,true)
					sleep(1000)
					if 过滑块验证(10)==true then
						sleep(1000)
						move(345,1026,315,374,400)
						sleep(1000)
						while findpic("dl未登入",true) do
							sleep(3000)
						end
						if findpic("登入",true) == true then
							sleep(2000)
							--填写信息检查 信箱未填、密码未填、滑块未到位
							while true do
								local loginFlag = 登录检查()
								print("登录检查状态",loginFlag)
								if loginFlag==true then
									break
									
								elseif loginFlag==1 then
									过滑块验证(10)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("登入",true)
								elseif loginFlag==2 then
									findPicAndClick("登录邮箱",true,150,10)
									sleep(1000)
									inputText(Account,true)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("登入",true)
								elseif loginFlag==3 then
									findPicAndClick("登录密码",true)
									sleep(1000)
									inputText(Password,true)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("登入",true)
								elseif loginFlag==4 then
									findstr("返回",true)
									sleep(1000)
									过滑块验证(10)
									sleep(1000)
									sleep(1000)
									move(345,1026,315,374,400)
									sleep(1000)
									findpic("登入",true)
								end
							end
							while findpic("dl未登入",true) do
								sleep(3000)
							end
							loading(5)
							if 是否启动页(true)== true then
								
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
			print("登录失败")
			return false
		end
		
	end
	
	
end
