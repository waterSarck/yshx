function 召唤(zhName,zhButton)
	writeLogFile("--------召唤开始--------")
	if findstr("召唤",true) or findpic("xsrw召唤",true)then
		loading(3)
		关闭引导页(3)
		sleep(1000)
		if findstr(zhName,true) then
			sleep(1000)
			if findpic(zhButton,true) then
				sleep(1000)
				if findpic("是",true) then
					loading(4)
					
					while findstr("OK") == false do
						sleep(6000)
						writeLogFile("新手召唤成功")
						mytap(589,343)--抽卡
						while findpic("hd结束战斗",true) do
							sleep(5000)
							--mytap(1216,29)--抽卡
						end
						--mytap(1216,29)--抽卡
					end
					while findpic("hd结束战斗",true) do
						sleep(1000)
						--mytap(1216,29)--抽卡
					end
				end
			else
				writeLogFile("未找到新手召唤按钮")
			end
		else
			writeLogFile("未找到新手召唤池")
		end
		
		
		
		if findstr("OK",true) then
			
			loading(3)
			mytap(1216,29)--返回主页
			loading(3)
		end
	end
	
	writeLogFile("--------召唤结束--------")
end

function 活动抽奖(actName,chapterName,count)
	writeLogFile("--------活动抽奖开始--------")
	while true do
		
		if findpic(chapterName,true) == false then
			sleep(1000)
			if findpic(actName,true) == false then
				sleep(1000)
				if findpic("活动",true) == false then
					sleep(1000)
					if findpic("出战",true) == false then
						sleep(1000)
					end
					
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
			if findpic("hd-抽奖-召唤10次",true) then
				local countcj = 20
				while countcj>1 do
					countcj = countcj -1
					if findpic("hd-抽奖-下一箱",true) then
						sleep(2000)
						if findstr("确认",true) then
							
							writeLogFile("更换下一箱成功")
						end
						sleep(2000)
					end
					if  findpic("hd-抽奖-再次召唤10次",true)then
						
						writeLogFile("抽奖成功1次")
						
						sleep(2000)
					end
					if  findpic("hd-抽奖-没有券了",true)then
						
						writeLogFile("没有券了")
						break
						sleep(2000)
					end
					
				end
			end
		end
		
		sleep(2000)
		count = count -1
		if count==0 then
			findpic("取消",true)
			writeLogFile("抽奖失败")
			break
		end
	end
	
	
	返回主页(5)
	--你可以拿来做参考
	
	writeLogFile("--------活动抽奖结束--------")
end
