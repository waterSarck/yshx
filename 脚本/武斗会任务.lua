function 领取武斗会奖励(cycCount)
	while true do
		if findPicAndClick("武斗会",true,10,5) then
			sleep(3000)
			if findPicAndClick("一般竞技场",true,10,10) then
				sleep(3000)
				关闭引导页(5)
				if findPicAndClick("wdh累积奖励",true,5,5) then
					sleep(3000)
					if findPicAndClick("wdh领取奖励",true,5,5) then
						sleep(3000)
						if findPicAndClick("wdhok",true,5,5) or findPicAndClick("wdh确认",true,5,5) then
							writeLogFile("领取奖励成功")
							sleep(3000)
							返回主页(1)
							break
							sleep(6000)
						end
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("领取失败")
			sleep(3000)
			返回主页(1)
			return false
		end
		sleep(2000)
	end
end

function 领取特殊武斗会奖励(cycCount)
	while true do
		if findPicAndClick("武斗会",true,10,5) then
			sleep(3000)
			if findPicAndClick("wdh特殊竞技场",true,10,10) then
				sleep(3000)
				关闭引导页(5)
				if findPicAndClick("wdh累积奖励",true,5,5) then
					sleep(3000)
					if findPicAndClick("wdh领取奖励",true,5,5) then
						sleep(3000)
						if findPicAndClick("wdhok",true,5,5) or findPicAndClick("wdh确认",true,5,5) then
							writeLogFile("领取奖励成功")
							sleep(3000)
							返回主页(1)
							break
							sleep(6000)
						end
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("领取失败")
			sleep(3000)
			返回主页(1)
			return false
		end
		sleep(2000)
	end
end
function 刷武斗会(cycCount)
	local actionFlag = false
	while true do
		---武斗会
		---一般竞技场
		---关闭指引
		---出战
		---出战2
		---loading
		---结束战斗
		---离开
		---loading
		---返回主页
		
		if findPicAndClick("武斗会",true,5,5) then
			sleep(3000)
			if findPicAndClick("一般竞技场",true) then
				sleep(3000)
				关闭引导页(5)
				sleep(3000)
				while findpic("wdh一般竞技场出战",true) or findpic("wdh一般竞技场出战新",true)do
					sleep(3000)
					if findpic("wdh一般竞技场出战2",true) then
						sleep(3000)
						if findpic("wdh错误") then
							while findpic("wdh确认",true) do
								sleep(2000)
								writeLogFile("错误")
							end
						end
						if findpic("wdh警告") then
							while findpic("wdh否",true) do
								sleep(2000)
								writeLogFile("未编队错误")
								
							end
							if findstr("自动编队",true) then
								sleep(2000)
								writeLogFile("自动编队")
							end
							findpic("wdh一般竞技场出战2",true)
						end
						loading(3)
						sleep(6000)
						local counttmp = 10
						while findpic("离开")==false do
							findpic("结束战斗",true)
							sleep(3000)
							writeLogFile("结束战斗")
						end
						loading(5)
						while findpic("ok",true) do
							sleep(2000)
							writeLogFile("ok")
						end
						while findpic("离开",true) do
							sleep(2000)
							writeLogFile("离开")
						end
						loading(5)
					end
					if findPicAndClick("wdh出战次数不足") then
						sleep(1000)
						
						if findpic("wdh否",true) then
							sleep(3000)
							返回主页(2)
							writeLogFile("出战次数不足")
							return true
						end
						返回主页(2)
						return true
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("武斗会失败")
			return false
		end
		sleep(2000)
	end
end

function 刷武斗会特殊(cycCount)
	while true do
		---武斗会
		---一般竞技场
		---关闭指引
		---出战
		---出战2
		---loading
		---结束战斗
		---离开
		---loading
		---返回主页
		
		if findPicAndClick("武斗会",true,5,5) then
			sleep(3000)
			if findPicAndClick("wdh特殊竞技场",true) then
				sleep(3000)
				关闭引导页(5)
				sleep(3000)
				findpic("wdh确认",true)
				sleep(3000)
				if findstr("编辑防守队伍",true) or findstr("编辑防守队伍",true) then
					sleep(3000)
					if findstr("自动编队",true) then
						sleep(2000)
						writeLogFile("自动编辑防守队伍")
						if findstr("储存队伍",true) then
							sleep(2000)
							writeLogFile("存储防守队伍")
						end
					end
					返回上一层(3)
					sleep(2000)
				end
				while findpic("wdh一般竞技场出战",true) or findpic("wdh一般竞技场出战新",true)do
					sleep(3000)
					
					if findpic("wdh一般竞技场出战2",true) then
						sleep(3000)
						if findpic("wdh错误") then
							while findpic("wdh确认",true) do
								sleep(2000)
								writeLogFile("错误")
							end
						end
						if findpic("wdh警告") then
							while findpic("wdh否",true) do
								sleep(2000)
								writeLogFile("未编队错误")
								
							end
							if findstr("自动编队",true) then
								sleep(2000)
								writeLogFile("自动编队")
							end
							findpic("wdh一般竞技场出战2",true)
						end
						loading(3)
						sleep(6000)
						local counttmp = 10
						while findpic("离开")==false and findpic("ok")==false do
							findpic("结束战斗",true)
							sleep(3000)
							findstr("下一场",true)
							sleep(3000)
							writeLogFile("结束战斗")
						end
						loading(5)
						while findpic("ok",true) do
							writeLogFile("ok")
							sleep(2000)
						end
						while findpic("离开",true) do
							writeLogFile("离开")
							sleep(2000)
						end
						loading(5)
					end
					if findPicAndClick("wdh出战次数不足",true) then
						sleep(1000)
						if findpic("wdh否",true) then
							sleep(3000)
							返回主页(2)
							writeLogFile("出战次数不足")
							return true
						end
						返回主页(2)
						return true
						
					end
				end
				--返回主页(3)
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("武斗会失败")
			返回主页(3)
			return false
		end
		sleep(2000)
	end
end
