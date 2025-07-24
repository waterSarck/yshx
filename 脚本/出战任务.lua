setDict(0,"欲神幻想.txt")
useDict(0)
function 推主线本(chapterName,stagerName,count,knType)
	print(stagerName[1])
	
	while true do
		if findPicAry(stagerName,true)== false and findStrSub("Clear",true)==false then
			--if findpic(chapterName,true) == false then
			if findPicMove(chapterName,{1144,410,751,410},true) == false then
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
			else
				if knType == 1 then
					if findstr("经困难",true) or findstr("然困难",true) or findstr("莎困难",true) or findpic("zx-困难",true) then
						
						sleep(1000)
						
					end
				end
			end
			
		else
			sleep(2000)
			关闭引导页(3)
			连续推图()
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
	--你可以拿来做参考
end

function 推主线本文字(chapterName,stagerName,count,knType,zhangjie)
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
		else
			if knType == 1 then
				if findstr("经困难",true) or findstr("然困难",true) or findstr("莎困难",true) or findpic("zx-困难",true) then
					
					sleep(1000)
					
				end
			end
			
			
			if findStrSubAry(stagerNameStr,true) or findPicAry(stagerName,true) then
				sleep(2000)
				关闭引导页(3)
				连续推图()
				break
			end
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
	--你可以拿来做参考
end

function 推图()
	if findpic("hd作战准备",true) or findpic("hd下一关",true) then
		
		关闭引导页(3)
        sleep(3000)
                findpic("zd等级提示下一关",true)
		loading(5)
		--无体力
		if findpic("hd回复精力") then
			writeLogFile("暂无精力战斗")
			findpic("hd回复精力-否",true)
		elseif findstr("是",true) then
			
			writeLogFile("剧情H")
			loading(5)
			过剧情(1)
		else
			if findpic("hd出战",true) then --战斗标志
				sleep(1000)
				关闭引导页(3)
				if findpic("zd进入关卡",true) or findpic("hd出战",true) or findpic("zx队伍配置警告") then
					findpic("hd回复精力-否",true)
					sleep(1000)
					if findstr("自动编队",true) then
						writeLogFile("自动编队")
					end
					findpic("hd出战",true)
				end
				loading(5)
				过战斗(1)
			else
				过剧情(1)
			end
			
		end
		if findpic("ok",true) then
			writeLogFile("升级")
		end
		if findpic("hd离开",true) then
			loading(5)
			writeLogFile("推图结束")
			while findpic("hd离开",true) do
				loading(5)
			end
			
			return true
		end
	end
end

function 连续推图()
	writeLogFile("连续推图")
	if findpic("hd作战准备",true) or findpic("hd下一关",true) or findstr("作战准备",true) then
		sleep(3000)
        findpic("zd等级提示下一关",true)
        loading(5)
		
        
		--无体力
		if findpic("hd回复精力") then
			writeLogFile("暂无精力战斗")
			findpic("hd回复精力-否",true)
			
		else
			
			if findpic("hd出战",true) then --战斗标志
				sleep(1000)
				关闭引导页(3)
				if findpic("zd进入关卡",true) or findpic("zx队伍配置警告") or findpic("hd出战",true) then
					findpic("hd回复精力-否",true)
					sleep(1000)
					if findstr("自动编队",true) then
						writeLogFile("自动编队")
					end
					findpic("hd出战",true)
				end
				loading(5)
				过战斗(1)
			else
				if findstr("是",true) then
					writeLogFile("剧情H")
				end
				过剧情(1)
			end
			while findpic("hd下一关") do
				if findpic("ok",true) then
					writeLogFile("升级")
				end
				findpic("hd下一关",true)
				sleep(2000)
                
                        findpic("zd等级提示下一关",true)
                        sleep(3000)
				
				if findpic("hd回复精力") then
					print("暂无精力战斗")
					findpic("hd回复精力-否",true)
					break
				end
				if findstr("是",true) then
					writeLogFile("剧情H")
					loading(5)
					过剧情(1)
				end
				loading(5)
				if findpic("hd出战",true) then --战斗标志
					loading(5)
					过战斗(1)
				else
					if findstr("是",true) then
						writeLogFile("剧情H")
					end
					过剧情(1)
				end
			end
			
		end
		if findpic("hd离开",true) then
			loading(5)
			writeLogFile("推图结束")
			findpic("hd离开",true)
			return false
		end
	end
end

function 推活动本(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if findPicAry(stagerName,true)== false  then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("活动",true) == false then
						if findpic("出战",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					关闭引导页()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("账号未解锁该功能")
						break
					end
				end
			end
		else
			sleep(2000)
			连续推图()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("战斗失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end

function 推活动本STR(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if findStrSubAry(stagerName,true)== false  then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("活动",true) == false then
						if findpic("出战",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					关闭引导页()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("账号未解锁该功能")
						break
					end
				end
			end
		else
			sleep(2000)
			连续推图()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("战斗失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end

function 推活动本new(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		if (findstr("Story") and (findstr("NEW!",true) or findstr("NEWI",true)))== false then
			if findpic(chapterName,true) == false then
				if findpic(actName,true) == false then
					if findpic("活动",true) == false then
						if findpic("出战",true) == false then
							sleep(2000)
						end
						sleep(2000)
					end
				else
					sleep(3000)
					关闭引导页()
					sleep(1000)
					if findpic(chapterName) == false then
						writeLogFile("账号未解锁该功能")
						break
					end
				end
			end
		else
			sleep(2000)
			连续推图()
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("战斗失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end

function 推活动本大(actName,chapterName,stagerName,count)
	print(stagerName[1])
	while true do
		
		if findpic(actName,true) == false then
			if findpic("活动",true) == false then
				if findpic("出战",true) == false then
					sleep(2000)
				end
				sleep(2000)
			end
		else
			sleep(3000)
			关闭引导页()
			sleep(1000)
			
			swipe(266,523,266,323,1000)
			sleep(2000)
			if findpic(chapterName,true)  then
				sleep(2000)
				if findPicAry(stagerName,true) then
					sleep(2000)
					连续推图()
					break
				else
					writeLogFile("未找到章节")
				end
			else
				writeLogFile("账号未解锁该功能")
				break
			end
		end
		
		
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("战斗失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end
--活动名称，章节名称
function 扫荡资源(actName,chapterName,count)
	print("********扫荡资源",actName,chapterName,"开始")
	while true do
		if findpic("ok",true) == false then
			if findpic("确认",true) == false then
				if findpic("扫荡",true) == false then
					if findPicAry(chapterName,true) == false then
						if findPicMove(actName,{1144,410,751,410},true) == false then
							if findpic("zy资源",true) == false then
								if findpic("出战",true) == false then
									sleep(2000)
								end
								sleep(2000)
							end
							sleep(2000)
						else
							sleep(3000)
							关闭引导页()
							sleep(1000)
							
						end
						sleep(500)
					end
					sleep(500)
				else
					sleep(1000)
					if findpic("zy次数用完") then
						writeLogFile("暂无次数扫荡")
						findpic("确认",true)
						break
					end
					if findpic("zy尚未通关") then
						writeLogFile("尚未通关")
						findpic("确认",true)
						推图()
						break
					end
					findpic("max",true)
				end
				sleep(500)
			end
			sleep(500)
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			writeLogFile("扫荡失败")
			break
		end
	end
	
	
	返回主页(5)
	print("********扫荡资源",actName,chapterName,"结束")
	--你可以拿来做参考
end

function 查找章节(actName,chapterName,stager,count)
	while true do
		if findpic(chapterName,true) == false then
			if findpic(actName,true) == false then
				if findpic("活动",true) == false then
					if findpic("出战",true) == false then
						sleep(2000)
					end
					sleep(2000)
				end
			else
				sleep(3000)
				关闭引导页()
				sleep(1000)
				if findpic(chapterName) == false then
					writeLogFile("账号未解锁该功能")
					return false
				end
			end
		else
        writeLogFile("查找章节成功")
        	return true
        end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("查找章节失败")
			return false
		end
	end
end

function 扫荡(count)
	while true do
		if findpic("ok",true) == false then
        sleep(2000)
			if findpic("确认",true) == false then
            sleep(2000)
				if findpic("扫荡",true) == false then
                sleep(2000)
				else
                sleep(2000)
					if findpic("zy次数用完") then
						writeLogFile("暂无次数扫荡")
						findpic("确认",true)
						break
					end
					if findpic("保存精力") then
						writeLogFile("暂无精力扫荡")
						findpic("取消",true)
						break
					end
				end
			end
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("扫荡失败")
			break
		end
	end
end
function 扫荡复刻活动重构(actName,chapterName,stager,count)
	if 查找章节(actName,chapterName,stager,count)==true then
    sleep(2000)
    	if findStrSubMove(stager,{751,410,1144,410},true) then
        	扫荡(5)
        end   
    end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end
--活动名称，章节名称
function 扫荡复刻活动(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("确认",true) == false then
				if findpic("扫荡",true) == false then
					if findPicMove(stager,{751,410,1144,410},true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("活动",true) == false then
									if findpic("出战",true) == false then
										sleep(2000)
									end
									sleep(2000)
								end
							else
								sleep(3000)
								关闭引导页()
								sleep(1000)
								if findpic(chapterName) == false then
									writeLogFile("账号未解锁该功能")
									break
								end
							end
						end
					end
				else
					if findpic("zy次数用完") then
						writeLogFile("暂无次数扫荡")
						findpic("确认",true)
						break
					end
					if findpic("保存精力") then
						writeLogFile("暂无精力扫荡")
						findpic("取消",true)
						break
					end
				end
			end
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("扫荡失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end
--活动名称，章节名称
function 扫荡活动(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("确认",true) == false then
				if findpic("扫荡",true) == false then
					if findpic(stager,true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("活动",true) == false then
									if findpic("出战",true) == false then
										sleep(2000)
									end
									sleep(2000)
								end
							else
								sleep(3000)
								关闭引导页(3)
								sleep(1000)
								if findpic(chapterName) == false then
									writeLogFile("账号未解锁该功能")
									break
								end
							end
						end
					end
				else
					if findpic("保存精力") then
						writeLogFile("暂无精力扫荡")
						findpic("取消",true)
						break
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("扫荡失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end
function 领取活动任务奖励()
	if findpic("hd任务",true) then
		sleep(2000)
		if findpic("hd任务2",true) or findStrSub("任务",true)  then
			sleep(2000)
			if findpic("hd全部领取",true) or findStrSub("全部领取",true)  then
				sleep(2000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("领取任务成功")
				end
			end
			sleep(2000)
			if findstr("每日",true) or findStrSub("每日",true) then
				sleep(2000)
				if findpic("hd全部领取",true) or findStrSub("全部领取",true)  then
					sleep(2000)
					if findpic("ok",true)  then
						sleep(2000)
						writeLogFile("领取活动每日任务成功")
					end
				end
			end
		end
	end
    页面截图("rw-hd")
end
function 扫荡活动最近一章(actName,chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("确认",true) == false then
				if findpic("扫荡",true) == false then
					if findPicAry(stager,true) == false then
						if findpic(chapterName,true) == false then
							if findpic(actName,true) == false then
								if findpic("活动",true) == false then
									if findpic("出战",true) == false then
										sleep(2000)
									end
									sleep(2000)
								end
							else
								sleep(3000)
								关闭引导页(3)
								sleep(1000)
								if findpic(chapterName) == false then
									writeLogFile("账号未解锁该功能")
									break
								end
							end
						else
							sleep(2000)
							writeLogFile("移动屏幕")
							swipe(751,410,1244,410,1000)
						end
					end
				else
					if findpic("保存精力") then
						writeLogFile("暂无精力扫荡")
						findpic("取消",true)
						break
					elseif findstr("无法使用扫荡") or findstr("无法使用扫薪") then
						findpic("确认",true)
						推图()
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("扫荡失败")
			break
		end
	end
	
	领取活动任务奖励()
	
	返回主页(5)
	--你可以拿来做参考
end


function 推断空塔(storyName,actionName,count)
	--出战
	--特殊
	--断空塔
	--关闭引导
	--hard
	--出战 --卷不足
	--自动编队
	--出战
	--过战斗
	--扫荡 --券不足
	--领奖
	
	--领取奖励
	
	while true do
		
		
		if findpic(storyName,true) == false then
			if findpic("ts特殊",true) == false then
				if findpic("出战",true) == false then
					sleep(2000)
				end
				sleep(2000)
			end
		else
			sleep(3000)
			if	actionName == 2 then
				findpic("ts第二区",true)
			end
			sleep(3000)
			关闭引导页(3)
			sleep(2000)
			连续推图()
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
	
	if findpic("ts奖励",true) then
		sleep(2000)
		if findpic("hd全部领取",true)  then
			sleep(2000)
			if findpic("ok",true)  then
				sleep(2000)
			end
		end
	end
	
	返回主页(5)
	--你可以拿来做参考
end


function 刷神力殊死战(lv,count)
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
		
		if findstr("神力殊死战",true) == false then
			if findstr("神力殊死战",true) == false then
				if findpic("ts特殊",true) == false then
					if findpic("出战",true) == false then
						sleep(2000)
					end
					sleep(2000)
				end
				
			end
		else
			sleep(3000)
			关闭引导页(3)
			sleep(2000)
			if findStrSub(stg1,true,761,81,1254,530) or findStrSub(stg2,true,761,81,1254,530) then
				
				if findstr("出战",true) then
					sleep(5000)
					if findstr("自动编队",true) then
						
						sleep(1000)
						if findStrSub("警告",true) then
							sleep(1000)
							findStrSub("确认",true)
							writeLogFile("缺少角色")
							sleep(1000)
							findstr("自动编队",true)
						end
						if findstr("出战",true) then
							sleep(1000)
							loading(5)
							过战斗()
							if findpic("sd离开",true) then
								loading(3)
							end
							if findStrSub("扫荡",true) then
								sleep(2000)
								findpic("max",true)
								sleep(2000)
								findstr("确认",true)
								sleep(2000)
								findpic("ok",true)
								sleep(2000)
								findStrSub("ok",true)
								
							end
							break
						end
						
					end
					if findStrSub("入场道具不足",true) then
						sleep(1000)
						findStrSub("确认",true)
						writeLogFile("暂无入场券战斗")
						sleep(1000)
						break
					end
					
					
					
				end
			end
			
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			
			print("战斗失败")
			break
		end
	end
	
	if findpic("sl任务",true) then
		sleep(2000)
		findpic("sl任务",true)
		sleep(2000)
		if findStrSub("神力殊死战",true)  then
			sleep(2000)
			if findStrSub("全部领取",true)  then
				sleep(6000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("神力任务领取成功")
				end
			end
			
		end
		findStrSub("挑战",true)
		sleep(2000)
		if findStrSub("挑战",true)  then
			sleep(2000)
			if findStrSub("全部领取",true)  then
				sleep(6000)
				if findpic("ok",true)  then
					sleep(2000)
					writeLogFile("神力挑战任务领取成功")
				end
			end
			
		end
	end
	
	返回主页(5)	--你可以拿来做参考
end

--过剧情
function 过剧情(count)
	while findpic("hd下一关") ==false or findpic("hd离开") ==false or findpic("hd结束战斗",true) do
		writeLogFile("过剧情")
		sleep(2000)
		if findpic("hd下一关") or findpic("hd离开") or findpic("hd作战准备") then
			writeLogFile("剧情结束")
			return true
		end
		
		if findpic("hd结束战斗",true) then
			loading(5)
			
		end
		if findpic("hd暂停战斗",false)==false then
			
			--=mytap(1162,36)--点击战斗结束
			sleep(1000)
		end
		sleep(1000)
		findpic("zd返回战斗",true)
		--mytap(1162,36)--点击战斗结束
		sleep(1000)
		if findpic("jq自动播放") or findpic("qj自动播放1") then
			mytap(650,212)--结束对话
			sleep(1000)
			mytap(650,250)--结束对话
			sleep(1000)
			mytap(650,280)--结束对话
			sleep(1000)
			mytap(650,310)--结束对话
		else
			mytap(1071,35)--结束对话
			sleep(1000)
			writeLogFile("未找到自动播放，点击屏幕(1071,36)")
		end
		设置战斗模式()
		
		
		
	end
	loading(5)
	if findpic("hd下一关") or findpic("hd离开") then
		return true
	end
end
function 设置战斗模式()
	
	if findpic("hd未自动3") then
		--findPicAry({"hd未自动2"},true)
        findStrSub("AUTO",true,0,570,324,711)
		sleep(1000)
        findpic("hd未自动3",true)
        sleep(1000)
	end
	if findpic("hd未加速") and findpic("hd已加速") == false then
		findpic("hd未加速",true)
		sleep(1000)
	end
    findpic("hd未加速2",true)
    sleep(1000)
    findpic("hd未加速3",true)
    sleep(1000)
	findpic("hd未关闭摄像",true)
    sleep(1000)
    findpic("hd未关闭摄像2",true)
	sleep(1000)
    关闭广告页()
end
--过战斗
function 过战斗20240720(count)
	while findpic("hd下一关") ==false or findpic("hd离开") ==false or findpic("hd结束战斗",true) do
		writeLogFile("过战斗")
		findpic("hd结束战斗",true)
		sleep(2000)
		if findpic("hd下一关") or findpic("hd离开") or findpic("hd作战准备") then
			--print("剧情结束")
			writeLogFile("过战斗结束")
			return true
		end
		
		if findpic("hd结束战斗",true) then
			loading(5)
			
		end
		loading(5)
		
		--if findpic("hd暂停战斗",false) == false then
		
		----mytap(1162,36)--点击战斗结束
		--mytap(1169,63)
		--sleep(1000)
		
		--else
		--mytap(1169,63)--点击战斗结束
		--sleep(1000)
		--end
		--sleep(2000)
		--findpic("zd返回战斗",true)
		--findpic("zd返回战斗2",true)
		
		设置战斗模式()
		
	end
	loading(5)
	if findpic("hd下一关") or findpic("hd离开") then
		writeLogFile("过战斗结束")
		return true
	end
end

function 过战斗(count)
	while findpic("hd下一关") ==false or findpic("hd离开") ==false or findpic("sd离开") ==false or findpic("hd结束战斗") do
		writeLogFile("过战斗")
		sleep(2000)
		if findpic("hd结束战斗",true) then
			loading(5)
		end
		sleep(2000)
		if findpic("hd下一关") or findpic("hd离开") or findpic("sd离开") or findpic("hd作战准备") then
			--print("剧情结束")
			writeLogFile("过战斗结束")
			return true
		end
		
		if findpic("hd结束战斗",true) then
			loading(5)
			
		end
		
		
		--if findpic("hd暂停战斗",false) == false then
		
		----mytap(1162,36)--点击战斗结束
		--mytap(1169,63)
		--sleep(1000)
		
		--else
		--mytap(1169,63)--点击战斗结束
		--sleep(1000)
		--end
		--sleep(2000)
		--findpic("zd返回战斗",true)
		--findpic("zd返回战斗2",true)
		
		设置战斗模式()
		
	end
	--loading(5)
	if findpic("hd下一关") or findpic("hd离开") or findpic("sd离开") then
		writeLogFile("过战斗结束")
		return true
	end
end

function 推单章节(chapterName,stagerName,count)
	writeLogFile("--------推",chapterName,stagerName,"开始--------")
	
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
						writeLogFile("账号未解锁该功能")
						break
					end
				end
			end
			
		else
			sleep(2000)
			关闭引导页(3)
			推图()
			
			break
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("战斗失败")
			break
		end
	end
	
	
	返回主页(5)
	writeLogFile("--------推",chapterName,stagerName,"结束--------")
end

function 推未开放章节(chapterName,stagerName,countIn)
	writeLogFile("--------推",chapterName,stagerName,"开始--------")
	local count = countIn
	for i=1,#stagerName do
		while true do
			
			if findpic(stagerName[i],true)== false then
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
				
				return trues
			end
			
			sleep(2000)
			count = count -1
			if count==0 then
				findpic("取消",true)
				print("战斗失败")
				count = countIn
				break
			end
		end
	end
	
	返回主页(5)
	writeLogFile("--------推",chapterName,stagerName,"结束--------")
end

function 扫荡主线(chapterName,stager,count)
	while true do
		if findpic("ok",true) == false then
			if findpic("确认",true) == false then
				if findpic("扫荡",true) == false then
					if findpic(stager,true) == false then
						if findpic(chapterName,true) == false then
							
							if findpic("主线",true) == false then
								if findpic("出战",true) == false then
									sleep(2000)
								end
								sleep(2000)
							end
						end
					else
						sleep(3000)
						关闭引导页(3)
						sleep(1000)
						if findpic(stager) == false then
							writeLogFile("账号未解锁该章节")
							break
						end
					end
					
					
				else
					if findpic("保存精力") then
						writeLogFile("暂无精力扫荡")
						findpic("取消",true)
						break
					elseif findstr("无法使用扫荡") or findstr("无法使用扫薪") then
						findpic("确认",true)
						推图()
					else
						findpic("max",true)
					end
				end
			end
		else
			writeLogFile("扫荡成功")
			break
		end
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("扫荡失败")
			break
		end
	end
	
	
	返回主页(5)
	--你可以拿来做参考
end
function 自动编队(cycCount)
	
	while true do
		if findpic("bd编队",true) then
			sleep(3000)
			关闭引导页(5)
			if findstr("自动编队",true) then
				sleep(3000)
				writeLogFile("自动编队成功")
				sleep(3000)
				break
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("自动编队失败")
			sleep(3000)
			break
		end
		sleep(2000)
	end
	sleep(2000)
	返回主页(2)
	
end
