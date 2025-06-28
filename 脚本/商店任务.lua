function 刷活动商店(shoopName,actName,page,count)
	if shoopName == "MAX" then
		shoopName = {"hd扫荡券","hd羁绊契约","hd金币","hd破界之玉","sd结缘石","hd回忆沙漏"
		,"hd香水","hd纯洁","hd破阵秘册","hd坚壁秘册","hd破阵书页","hd坚壁书页","hd凝神秘石","hd圣愈秘册","hd灵佑秘册","hd圣愈书页","hd灵佑书页"}
	end
	if shoopName == "LV1" then
		shoopName = {"hd扫荡券","hd羁绊契约","hd金币","hd破界之玉"}
		--,"hd香水","hd纯洁","hd破阵秘册","hd坚壁秘册","hd破阵书页","hd坚壁书页","hd凝神秘石","hd圣愈秘册","hd灵佑秘册","hd圣愈书页","hd灵佑书页"}
	end
	
	if shoopName == "FK" then
		shoopName = {"hd古神契约","hd扫荡券","hd金币","hd破阵书页","hd坚壁书页","hd凝神秘石","hd圣愈书页","hd灵佑书页"}
		--,"hd香水","hd纯洁","hd破阵秘册","hd坚壁秘册","hd破阵书页","hd坚壁书页","hd凝神秘石","hd圣愈秘册","hd灵佑秘册","hd圣愈书页","hd灵佑书页"}
	end
	local tmpCount = count
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
			关闭引导页(3)
			sleep(1000)
			if findstr("商店",true) then
				关闭引导页(3)
				if page == 2 then
					findstr("优惠",true)
				end
				sleep(3000)
				break
			end
		end
		sleep(1000)
		tmpCount = tmpCount -1
		if tmpCount==0 then
			返回主页(1)
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
					if findstr("是",true) == false then
						
					else
						sleep(1000)
						if findstr("错误提示") then
							findstr("确认",true)
							findstr("是",true)
							writeLogFile("积分不足或已售完")
							break
						end
						
					end
				else
					writeLogFile("刷活动商店成功",shoopName[j])
					sleep(1500)
					break
				end
				sleep(1000)
				tmpCount = tmpCount -1
				if tmpCount==0 then
					返回主页(1)
					break
				end
				
			end
		else
			writeLogFile("暂无商品")
		end
	end
	--mytap(54,30)
	返回主页(3)
end

function 刷周期商店(shoopName,goods,count)
	local tmpCount = count
	while true do
		
		if findstr(shoopName,true) == false then
			if findstr("周期商店",true) == false then
				if findstr("商店",true) == false then
				else
					关闭引导页(5)
				end
			end
		else
			break
		end
		sleep(1000)
		tmpCount = tmpCount -1
		if tmpCount==0 then
			返回主页(1)
			return false
		end
	end
	
	购买商品(goods,false)
	--mytap(54,30)
	返回主页(3)
end


function 刷商店(shoopName,goods,count)
	local tmpCount = count
	while true do
		if findstr("商店",true) then
			关闭引导页(5)
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
				返回主页(3)
				return false
			end
		end
	end
	::continuetmp::
	local actionFlag = 购买商品(goods,true)
	--mytap(54,30)
	返回主页(3)
	return actionFlag
end

function 刷武斗会商店(shoopName1,shoopName2,goods,count)
	查找商店路径(shoopName1,shoopName2,count)
	local actionFlag = 购买商品(goods,true)
	--mytap(54,30)
	返回主页(3)
	return actionFlag
end
function 查找商店路径(shoopName1,shoopName2,count)
	local tmpCount = count
	while true do
		if findstr("商店",true) then
			关闭引导页(5)
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
				返回主页(3)
				return false
			end
		end
	end
	::continuetmp::
end

function 购买商品(goods,maxflag)
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
					if findstr("是",true) == false then
						
					else
						sleep(1000)
						if findstr("错误提示") then
							findstr("确认",true)
							findstr("是",true)
							writeLogFile("积分不足或已售完")
							break
						end
						
					end
				else
					writeLogFile("刷活动商店成功",goods[j])
					sleep(1500)
					--return ture
					break
				end
				sleep(1000)
				tmpCount = tmpCount -1
				if tmpCount==0 then
					返回主页(1)
					break
				end
				
			end
		else
			writeLogFile("暂无商品")
		end
	end
	return false
end

function 炼金()
	
	if 进入仓库道具页(count) then
		滑动查找元素(滑动位置,次数，上滑查找，图片名称，文字名称)
	end
end
