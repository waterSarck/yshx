setDict(0,"欲神幻想.txt")
useDict(0)


function 绑定游戏()
	writeLogFile("--------生成账号开始--------")
	local newUserInfo = 生成账号()
	writeLogFile("--------生成账号结束--------")
	writeLogFile("--------注册账号开始--------")
	注册账号(newUserInfo)
	writeLogFile("--------注册账号结束--------")
	writeLogFile("--------绑定账号开始--------")
	绑定账号(newUserInfo)
	writeLogFile("--------绑定账号结束--------")
	是否启动页(true)
	loading(5)
	if 是否主页(4) then
		writeLogFile("新账号成功",newUserInfo[1],newUserInfo[2])
	end
end
function 访客登录()
	
	if findstr("访客登入",true,429,709,567,759) then
		sleep(3000)
		if findstr("图像验证") == true then
			if 过滑块验证(10,2) == true then
				if findpic("登入",true) == true then
					sleep(2000)
					loading(6)
					sleep(3000)
				end
			end
		end
	end
	
end
function 服务条款()
	if findpic("xsrw服务条款") or findpic("xsrw提示") then
		--if findpic("xsrw同意条款",true) then
		if findpic("xsrw同意条款",true) or findpic("xsrw跳过剧情",true) then
			sleep(1000)
			if findpic("确认",true) then
				writeLogFile("服务条款成功")
				sleep(30000)---todo找不到？？？
				if findpic("xsrw跳过剧情",true) then
					loading(5)
				end
			end
			loading(5)
		end
	end
end
function 新手任务1战斗()
	--一段战斗
	writeLogFile("--------新手任务1战斗开始--------")
	while (findstr("离开")==false and findstr("下一关")==false) or findpic("xsrw摄像") or findpic("hd未关闭摄像") do
		mytap(945,603)--1技能
		sleep(1000)
		mytap(1160,603)--3技能
		sleep(1000)
		mytap(1160,603)--3技能
		sleep(1000)
		mytap(1052,603)--2技能
		sleep(1000)
		mytap(1052,603)--2技能
		sleep(1000)
		mytap(945,603)--1技能
		sleep(1000)
	end
	writeLogFile("--------新手任务1战斗结束--------")
end
function 新手任务2上古神器()
	--一段战斗
	writeLogFile("--------新手任务2上古神器开始--------")
	if findstr("离开",true) or findstr("再次挑战") or findpic("xsrw上古神器",true) then
		mytap(507,655)--点击离开
		loading(5)
		if findstr("出战",true) or findpic("xsrw出战",true) or findpic("xsrw上古神器",true) then
			sleep(2000)
			if findstr("第1章",true) or findstr("艾洛斯的觉醒",true) or  findpic("xsrw上古神器",true) then
				sleep(1000)
				if findpic("xsrw上古神器",true) then
					sleep(1000)
					if findpic("xsrw作战准备",true) then
						loading(3)
						过剧情(1)
						if findstr("下一关",true) or findpic("hd下一关",true) or findstr ("离开") then
							--writeLogFile("新手任务2上古神器成功")
							mytap(1099,657)--下一关
							loading(3)
							--二段战斗
							while (findstr("离开")==false and findstr("下一关")==false) or findpic("xsrw摄像") or findpic("hd未关闭摄像") do
								mytap(1160,603)--3技能
								sleep(1000)
								mytap(1160,603)--3技能
								sleep(1000)
								mytap(1052,603)--2技能
								sleep(1000)
								mytap(1052,603)--2技能
								sleep(1000)
								mytap(994,603)--1技能
								sleep(1000)
								mytap(928,280)--机器人
								sleep(1000)
							end
							while true do
								if findstr("离开",true) then
									loading(3)
									mytap(1216,29)--返回主页
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
	writeLogFile("--------新手任务2上古神器结束--------")
end
function 新手任务3召唤()
	--召唤
	--召唤1次
	--是
	--loading
	--三角
	--结束战斗
	--召唤1次
	--是
	--loading
	--三角
	--结束战斗
	--ok
	--loading
	--返回主页
	--loading
	writeLogFile("--------新手任务3召唤开始--------")
	if findstr("召唤",true) or findpic("xsrw召唤",true)then
		loading(3)
		关闭引导页(3)
		sleep(1000)
		local zhcount = 0 --召唤次数
		
		while findstr("召唤1次",true) do
			sleep(3000)
			if findpic("是",true) then
				
				loading(4)
				while findpic("zh三角",true) do
					sleep(6000)
					if findpic("hd结束战斗",true) then
						sleep(5000)
						--mytap(1216,29)--抽卡
						break
					end
					--mytap(1216,29)--抽卡
				end
				while findpic("hd结束战斗",true) do
					sleep(1000)
					--mytap(1216,29)--抽卡
				end
				writeLogFile("召唤第"..zhcount.."次")
				zhcount = zhcount +1
			end
			sleep(4000)
			if zhcount == 2 then
				break
			end
		end
		
		if findstr("OK",true) then
			loading(3)
			mytap(1216,29)--返回主页
			loading(3)
		end
	end
	
	writeLogFile("--------新手任务3召唤结束--------")
end
function 新手任务4出战()
	writeLogFile("--------新手任务4出战开始--------")
	if findstr("出战",true) or findpic("xsrw出战",true) then
		--if true then
		sleep(1000)
		if findstr("第1章",true) or findstr("艾洛斯的觉醒",true) then
			--if true then
			sleep(2000)
			if findstr("1-2",true)  then
				--if true then
				sleep(2000)
				if findstr("作战准备",true) then
					--if true then
					sleep(2000)
					关闭引导页()
					sleep(2000)
					if findstr("自动编队",true) then
						sleep(2000)
						if findstr("出战",true) then
							loading(3)
							--二段战斗
							while (findstr("离开")==false and findstr("下一关")==false) or findpic("xsrw摄像") or findpic("hd未关闭摄像") do
								mytap(1160,603)--3技能
								sleep(1000)
								mytap(1160,603)--3技能
								sleep(1000)
								mytap(1052,603)--2技能
								sleep(1000)
								mytap(1052,603)--2技能
								sleep(1000)
								mytap(994,603)--1技能
								sleep(1000)
								mytap(813,267)--机器人
								sleep(1000)
							end
							loading(5)
							sleep(2000)
							if findstr("OK",true) or findstr("下一关",true) or findstr("离开") then
								sleep(4000)
								while findstr("是") ==false do
									mytap(1081,656)--下一关
									sleep(4000)
								end
								
								sleep(1000)
								if findstr("是",true) then
									loading(3)
									while findpic("hd下一关") ==false and findpic("hd离开") ==false  do
										if findpic("hd结束战斗",true) then
											loading(5)
											
										end
										mytap(1162,36)--点击战斗结束
										sleep(1000)
									end
									if findstr("离开",true) or findpic("hd下一关") or findpic("hd离开") then
										mytap(854,655)
										loading(3)
										mytap(1216,29)--返回主页
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
	if findstr("出战",true) or findpic("xsrw出战",true) then
		--if true then
		--sleep(1000)
		if findstr("第1章",true) or findstr("艾洛斯的觉醒",true) then
			--if true then
			sleep(2000)
			if findstr("原欲之神",true) then
				--if true then
				sleep(2000)
				if findstr("作战准备",true) then
					--if true then
					sleep(2000)
					if findstr("出战",true) then
						loading(3)
						--二段战斗
						while (findstr("离开")==false and findstr("下一关")==false) or findpic("xsrw摄像") or findpic("hd未关闭摄像") do
							mytap(1160,603)--3技能
							sleep(1000)
							mytap(1160,603)--3技能
							sleep(1000)
							mytap(1052,603)--2技能
							sleep(1000)
							mytap(1052,603)--2技能
							sleep(1000)
							mytap(994,603)--1技能
							sleep(1000)
							mytap(813,267)--机器人
							sleep(1000)
						end
						loading(5)
						sleep(2000)
						if findstr("OK",true) or findstr("下一关",true) or findstr("离开") then
							sleep(1000)
							mytap(1081,656)--下一关
							if findstr("下一关",true) then
							end
							sleep(1000)
							if findstr("是",true) then
								loading(3)
								while findpic("hd下一关") ==false and findpic("hd离开") ==false  do
									if findpic("hd结束战斗",true) then
										loading(5)
										
									end
									mytap(1162,36)--点击战斗结束
									sleep(1000)
								end
								if findstr("离开",true) or findpic("hd下一关") or findpic("hd离开") then
									mytap(854,655)
									loading(3)
									mytap(1216,29)--返回主页
									loading(3)
								end
							end
							
						end
					end
				end
			end
		end
	end
	
	writeLogFile("--------新手任务4出战结束--------")
end
function 新手任务5领奖励()
	writeLogFile("--------新手任务5领奖励开始--------")
	if findstr("出战") then
		mytap(81,480)--任务
		sleep(3000)
		关闭引导页()
		sleep(4000)
		mytap(1125,177)--领取
		sleep(2000)
		if findpic("ok",true) or findstr("OK",true) then
			sleep(1000)
			mytap(1216,29)--返回主页
		end
		返回主页(3)
		sleep(5000)
	end
	writeLogFile("--------新手任务5领奖励结束--------")
end

function 新手任务6密室()
	writeLogFile("--------新手任务6密室开始--------")
	if findstr("蜜室",true) or findpic("xsrw密室",true) or findpic("xsrw密室2",true) then
		--if true then
		sleep(2000)
		if findstr("伊娜丝",true) then
			loading(3)
			密室_关闭引导页(10)
			sleep(8000)
			while findpic("xsrw密室时御者",true) do
				sleep(3000)
			end
			--mytap(1048,213)--密室任务
			sleep(10000)
			if findstr("自动选择",true)  or findStrSub("自动",true) then
				sleep(1000)
				if findstr("确认",true) then
					sleep(3000)
					mytap(1216,29)--返回主页
					sleep(1000)
					mytap(1216,29)--返回主页
					sleep(1000)
					loading(3)
				end
			end
		end
		--返回主页(3)
	end
	writeLogFile("--------新手任务6密室结束--------")
end
function 新手任务7第一章(count,stagerName,chapterName)
	writeLogFile("--------新手任务7第一章开始--------")
	
	while true do
		if findpic(stagerName,true)== false then
			if findpic(chapterName,true) == false then
				
				if findpic("主线",true) == false then
					if findpic("出战",true) == false then
						sleep(2000)
					end
					sleep(2000)
					
				else
					sleep(3000)
					关闭引导页()
					sleep(1000)
					if findpic(chapterName) == false then
						print("账号未解锁该功能")
						break
					end
				end
			end
			
		else
			sleep(2000)
			关闭引导页(3)
			推图()
			findpic("hd离开",true)
			返回上一层(5)
			--mytap(80,13)--返回
			sleep(1000)
			findpic("zy资源",true)
			sleep(1000)
			findpic("zy淘金之旅",true)
			sleep(1000)
			if findpic("zy淘金1层",true) then
				writeLogFile("淘金1层")
			end
			sleep(5000)
			
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			print("战斗失败")
			break
		end
	end
	
	
	返回主页(5)
	writeLogFile("--------新手任务7第一章结束--------")
end
function 新手任务8解锁信箱(chapterName,stagerName,count)
	writeLogFile("--------新手任务8解锁信箱（主线普通2-2）开始--------")
	
	while true do
		if findpic(stagerName,true)== false then
			if findpic(chapterName,true) == false then
				
				if findpic("主线",true) == false then
					if findpic("出战",true) == false then
						sleep(2000)
					end
					sleep(2000)
					
				else
					sleep(3000)
					关闭引导页()
					sleep(1000)
					if findpic(chapterName) == false then
						print("账号未解锁该功能")
						break
					end
				end
			end
			
		else
			sleep(2000)
			关闭引导页(3)
			推图()
			while true do
				while findpic("hd下一关") or findstr("下一关") do
					findpic("hd离开",true)
					findstr("离开",true)
					loading(5)
				end
				while  findstr("作战准备") do
					if 返回上一层(5) then
						break
					end
					
				end
				
				--mytap(80,13)--返回
				sleep(1000)
				if findstr("经困难",true) or findstr("然困难",true) or findstr("莎困难",true)then
					
					sleep(1000)
					推单章节("zx第一章","zxkn1-1",10)
					sleep(1000)
					break
					
					
				end
			end
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			print("战斗失败")
			break
		end
	end
	
	
	返回主页(5)
	writeLogFile("--------新手任务8解锁信箱结束--------")
end


function 新手任务流程()
	
	新手任务2上古神器()
	新手任务3召唤()
	新手任务4出战()
	新手任务5领奖励()
	新手任务6密室()
	签到(5)
	返回主页(3)
	去除广告(10)
	sleep(5000)
	返回主页(3)
	
end

function 生成账号()
	--生成随机账号
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

function 注册账号(userInfo)
	local pwd = userInfo[2]
	local userName = userInfo[1]
	local counttmp = 10
	while true do
		if findpic("xsrw绑定账号",true) == false then
			--if false then
			sleep(1000)
			if findpic("设定",true) == false then
			end
			
		end
		sleep(3000)
		loading(5)
		if findstr("点选表示同意使用者条款",true,123,752,601,867) then
			--if true then
			sleep(1000)
			if findstr("下一步",true) then
				--if true then
				sleep(5000)
				if findstr("图像验证") == true then
					move(345,1026,315,374,400)
					if findpic("xsrw注册新账号",true)  then
						sleep(1000)
						move(345,374,315,1026,400)
						if findstr("注册") == true then
							if findPicAndClick("xsrw电邮地址",true,150,10)==true then
								sleep(1000)
								setIme(true)
								inputText(userName,true)
								sleep(1000)
								if findPicAndClick("xsrw密码",true)==true then
									sleep(1000)
									setIme(true)
									inputText(pwd,true)
									sleep(1000)
									if findPicAndClick("xsrw二次密码",true)==true then
										sleep(1000)
										inputText(pwd,true)
										sleep(1000)
										--move(345,374,315,1026,400)
										if 过滑块验证(10,3)==true then
											sleep(1000)
											move(345,1026,315,374,400)
											sleep(1000)
											while findpic("xsrw新号注册",true) == true do
												while true do
													local loginFlag = 注册检查()
													print("注册检查状态",loginFlag)
													if loginFlag==true then
														break
														
													elseif loginFlag==1 then
														过滑块验证(10,3)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw新号注册",true)
													elseif loginFlag==2 then
														findPicAndClick("xsrw电邮地址",true,150,10)
														sleep(1000)
														inputText(userName,true)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw新号注册",true)
													elseif loginFlag==3 then
														findPicAndClick("xsrw密码",true)
														sleep(1000)
														inputText(pwd)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw新号注册",true)
														
													elseif loginFlag==5 then
														findPicAndClick("xsrw二次密码",true)
														sleep(1000)
														inputText(pwd,true)
														sleep(1000)
														sleep(1000)
														move(345,1026,315,374,400)
														sleep(1000)
														findpic("xsrw新号注册",true)
													end
												end
												
												sleep(2000)
											end
											--填写信息检查 信箱未填、密码未填、滑块未到位
											while findstr("返回",true) == true do
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
			writeLogFile("注册账号失败")
			
			break
			
		end
	end
	返回主页(5)
end

function 绑定账号(userInfo)
	local pwd = userInfo[2]
	local userName = userInfo[1]
	--填写信息检查 信箱未填、密码未填、滑块未到位
	if findstr("图像验证")  == true then
		if findPicAndClick("xsrw电邮地址",true,150,10)==true then
			sleep(1000)
			setIme(true)
			inputText(userName,true)
			sleep(1000)
			if findPicAndClick("xsrw密码",true)==true then
				sleep(1000)
				inputText(pwd,true)
				sleep(1000)
				
				if 过滑块验证(10,1)==true then
					sleep(1000)
					move(345,1026,315,374,400)
					sleep(8000)
					if findpic("xsrw游戏绑定",true) == true then
						sleep(2000)
						while true do
							local loginFlag = 登录检查()
							print("登录检查状态",loginFlag)
							if loginFlag==true or loginFlag ==1 or loginFlag ==4 then
								break
								
								
							elseif loginFlag==2 then
								findPicAndClick("xsrw电邮地址",true,150,10)
								sleep(1000)
								inputText(userName,true)
								sleep(1000)
								sleep(1000)
								move(345,1026,315,374,400)
								sleep(1000)
								findpic("xsrw游戏绑定",true)
							elseif loginFlag==3 then
								findPicAndClick("xsrw密码",true)
								sleep(1000)
								inputText(pwd,true)
								sleep(1000)
								sleep(1000)
								move(345,1026,315,374,400)
								sleep(1000)
								findpic("xsrw游戏绑定",true)
								
							end
						end
						if 过滑块验证(10,4)==true then
							sleep(6000)
							if findpic("xsrw绑定确认是",true) == true then
								loading(3)
								sleep(3000)
								while true do
									local loginFlag = 登录检查()
									print("登录检查状态",loginFlag)
									if loginFlag==true or loginFlag ==2 or loginFlag ==3 or loginFlag ==4 then
										break
										
										
									else
										过滑块验证(10,4)
										sleep(1000)
										move(345,1026,315,374,400)
										sleep(1000)
										findpic("xsrw绑定确认是",true)
									end
								end
								sleep(30000)
								if findpic("xsrw账号绑定成功",true) == true then
									loading(5)
									if findstr("确认",true) == true then
										writeLogFile("账号绑定成功")
										local nowDate = os.date("%Y%m%d", os.time())
										writeFile("/mnt/shared/Pictures/newUser.txt",nowDate.."\n",true)
										writeFile("/mnt/shared/Pictures/newUser.txt",userName.."|"..pwd.."\n",true)
										新建账号入库(userName,pwd)
										loading(3)
										重启服务()
										是否启动页(true)
									elseif findstr("绑定失败") then
										findstr("进入游戏",true)
										writeLogFile("账号绑定失败")
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

function 领取新手任务奖励(userList)
	findpic("xsrw-新生活动",true)
	sleep(4000)
	findpic("xsrw-新生活动",true)
	sleep(4000)
    findStrSub("新手活动",true)
    sleep(4000)
	local createCount = 查询账号创建天数(userList.userName)
	if findStrSub("任务",true) then
		sleep(4000)
		local stagerName = {"第1天","第2天","第3天","第4天","第5天","第6天","第7天"}
		local loopCount = math.tointeger(createCount)
		if loopCount>#stagerName then
			loopCount = #stagerName
		end
		for i=1,loopCount do
			findStrSub(stagerName[i],true)
			findstr("全部领取",true)
			sleep(4000)
			findpic("确认",true)
			sleep(4000)
			findpic("ok",true)
			sleep(4000)
			
		end
		findpic("rw宝箱4",true)
		local t = 490
		for i=1,10 do
			
			mytap(t,640)--宝箱1位置
			sleep(3000)
			mytap(t,640)--宝箱1位置
			findpic("ok",true)
			sleep(2000)
			t=t+40
		end
		findpic("ok",true)
		sleep(4000)
	end
	返回主页(5)
end
function 新手升级角色(count)
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
			writeLogFile("升级失败")
			返回主页(5)
			return false
		end
		sleep(1000)
	end
	--local name = {"js伊娜丝","js林恩","js卡蒂雅","js战犬"}
    local name = {"时御者","仙姿","幽夜女","苍白天使","新月"}
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
					if findstr("自动选择",true) == false then
						if findstr("已法等级上限") or findstr("已达等级上限") then
							writeLogFile(name[j],"已达等级上限")
							
							sleep(1500)
							break
							
						end
						sleep(1500)
					end
					sleep(1000)
				else
					sleep(1500)
					writeLogFile("升级成功")
					--findpic("返回",true)
					break
				end
				sleep(3000)
				count = count -1
				if count == 0 then
					writeLogFile("升级失败")
					
					count = 6
					break
				end
				sleep(2000)
			end
			
			
			if findpic("js装备",true)  then
				角色页_关闭引导(5)
				sleep(2500)
				if findstr("自动选择",true)  then
					sleep(1500)
					mytap(974,640)
					
				end
				
			end
			findpic("返回",true)
			sleep(2000)
			
		else
			writeLogFile("未找到角色")
		end
	end
	
	
	返回主页(5)
	loading(3)
	--你可以拿来做参考
end
function 是否有活动章节(count)
	while true do
		
		if findpic("活动",true) == false then
			if findpic("出战",true) == false then
				sleep(2000)
			end
			sleep(2000)
			
		else
			sleep(1000)
			关闭引导页()
			sleep(1000)
			
			writeLogFile("已开放活动章节")
			返回主页(5)
			return true
			
		end
		
		count = count -1
		if count==0 then
			writeLogFile("未开放活动章节")
			返回主页(5)
			return false
		end
	end
	返回主页(5)
	return false
	
	
	
	--你可以拿来做参考
end


function 注册检查()
	--填写信息检查 信箱未填、密码未填、滑块未到位
	print("注册检查开始")
	for i=1,3 do
		
		if findpic("滑动") or findpic("再试一次") or findstr("向右滑动填充拼图") or findstr("×请完成安全验证") or findpic("dl请完成安全验证") then
			print("滑块失败")
			return 1
		end
		if findpic("zc信箱未填写") or findstr("必联络信箱未填写") then
			print("信箱未填写")
			sleep(1000)
			return 2
		end
		if findpic("dl请输入密码") or findstr("※请输入密码") then
			print("1次密码未填写")
			sleep(1000)
			return 3
		end
		if findstr("登入错误") then
			print("captcha验证码失败")
			sleep(1000)
			return 4
		end
		if findpic("zc请输入确认密码") or findstr("※请输入确认密码") then
			print("确认密码与密码不符")
			sleep(1000)
			return 5
		end
		swipe(645,782,645,1240,1000)
		sleep(1000)
	end
	return true
end


function 新手任务(createCount)
	--访客登入
	--滑块认证
	--loading
	--服务条款
	--logFileNum = "02"
	writeLogFile("=============")
	writeLogFile("共计",createCount,"新建用户")
	
	for i=1,createCount do
		writeLogFile("********第",i,"个新手任务开始********")
		writeLogFile("--------退出登录开始--------")
		if 是否进入主页(1)  then
			
			if findpic("设定",true) then
				sleep(2000)
				if findpic("xsrw设置绑定账号",true) then
					goto continue
					
				else
					
					退出登录(5)
				end
			end
		end
		writeLogFile("--------退出登录结束--------")
		
		writeLogFile("--------访客登录开始--------")
		是否启动页(true)
		sleep(30000)
		if isInPage(5,"访客登入","访客登入","txt",txtParam,0.9)  then
			访客登录(5)
		end
		writeLogFile("--------访客登录结束--------")
		
		writeLogFile("--------服务条款开始--------")
		if findpic("xsrw服务条款") or findpic("xsrw提示") then
			服务条款()
			新手任务1战斗()
		end
		writeLogFile("--------服务条款结束--------")
		
		writeLogFile("--------新手任务开始--------")
		新手任务流程()
		writeLogFile("--------新手任务结束--------")
		
		::continue::
		
		
		绑定游戏()
		
		
		
		
		writeLogFile("********新手任务结束********")
	end
end
