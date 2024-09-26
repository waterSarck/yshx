--签到任务
function 签到任务()
	if  是否进入主页(1) == false  then
		
		writeLogFile("*******开始处理任务（签到）")
		
		签到(10)
		sleep(10000)
		--返回主页(5)
	end
end

--去除广告
function 去除广告任务()
	
	if 是否进入主页(1)==false  then
		writeLogFile("*******开始处理任务（去除广告）")
		返回主页(3)
		去除广告(10)
		sleep(5000)
		返回主页(3)
		
	end
end

function 资源统计任务(userName,flag,success_action,fail_action)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（资源统计开始）")
		--资源统计(userName,10,"开始")
		local strst = 资源统计(userName,10,flag,success_action,fail_action)
		return strst
	end
	return ""
end

function 成品截图任务(userName)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（成品截图任务开始）")
		--资源统计(userName,10,"开始")
		成品截图(userName,6)
		
	end
	
end

function 领兑换码任务()
	
	if 是否进入主页(1) and 是否周几({"1","2","3","6","0","7"})  then
		writeLogFile("*******开始处理任务（领兑换码）")
		领兑换码()
	end
end
function 领回归码任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（领回归码）")
		return 领回归码()
	end
	return false
end

function 刷武斗会任务()
	
	if 是否进入主页(1)    then
		writeLogFile("*******开始处理任务（刷武斗会）")
		return 刷武斗会(5)
	end
	return false
end

function 领取邮件任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（领取邮件）")
		领邮件(5)
	end
end

function 探索任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（探索）")
		探索(5)
	end
end

function 清理仓库任务()
	
	if 是否进入主页(1) and 是否周几({"1","2","3","4","5","6"})   then
		writeLogFile("*******开始处理任务（清理仓库）")
		清理仓库(5)
	end
end



function 吃体力药任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（吃体力药）")
		吃体力药(10,4,5)
	end
end

function 推活动剧情本任务(activeList)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（推活动剧情本）")
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		--推活动本("hd水岸狂想","hd超绝死斗",{"bsn-EX1","hdEX2","hdEX3"},10)
		--推活动本("hd诸圣前夜","hd古老的传说",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("hd水岸狂想","hd水岸狂想曲",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--推活动本("hd巧克力梦工厂","hd美梦",{"hd-qkl-jq1","hd-qkl-jq2","hdstager1","hdstager2","hd-qkl-jq3","hdstager3","hdstager4","hd-qkl-jq4","hdstager5","hdstager6","hd-qkl-jq5","hdstager7","hdstager8","hd-qkl-jq6","hdstager9","hdstager10","hd-qkl-jq7","hd-qkl-jq8"},10)
		--推活动本("hd冰之圣夜","hd心的方向",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		--推活动本("hd深月巡礼","hd圣地异变",{"hd-syxl-jq1","hd-syxl-jq2","hdstager1","hdstager2","hd-syxl-jq3","hd-syxl-jq4","hd-syxl-jq5","hd-syxl-jq6","hdstager3","hdstager4","hd-syxl-jq7","hdstager5","hd-syxl-jq8"},10)
		--推活动本("hd天之音乐祭","hd两人的回忆",{"hd-yyj-jq1","hd-yyj-jq2","hd-yyj-jq3","hdstager1","hd-yyj-jq4","hd-yyj-jq5","hdstager2","hd-yyj-jq6"},10)
		推活动本(activeList.activeName,activeList.activeJQName,{"hd-sw-jq1","hdstager1","hd-sw-jq2","hd-sw-jq3","hd-sw-jq4","hd-sw-jq5","hd-sw-jq6","hdstager2","hd-sw-jq7","hd-sw-jq8","hd-sw-jq9","hd-sw-jq10","hd-sw-jq11",},10)
		
	end
end

function 推复刻活动剧情本任务(activeList)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（推复刻活动剧情本）")
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		--推活动本("hd水岸狂想","hd超绝死斗",{"bsn-EX1","hdEX2","hdEX3"},10)
		--推活动本("hd诸圣前夜","hd古老的传说",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("hd水岸狂想","hd水岸狂想曲",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--推活动本("hd巧克力梦工厂","hd美梦",{"hd-qkl-jq1","hd-qkl-jq2","hdstager1","hdstager2","hd-qkl-jq3","hdstager3","hdstager4","hd-qkl-jq4","hdstager5","hdstager6","hd-qkl-jq5","hdstager7","hdstager8","hd-qkl-jq6","hdstager9","hdstager10","hd-qkl-jq7","hd-qkl-jq8"},10)
		--推活动本("hd冰之圣夜","hd心的方向",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		--推活动本("hd深月巡礼","hd圣地异变",{"hd-syxl-jq1","hd-syxl-jq2","hdstager1","hdstager2","hd-syxl-jq3","hd-syxl-jq4","hd-syxl-jq5","hd-syxl-jq6","hdstager3","hdstager4","hd-syxl-jq7","hdstager5","hd-syxl-jq8"},10)
		--推活动本("hd天之音乐祭","hd两人的回忆",{"hd-yyj-jq1","hd-yyj-jq2","hd-yyj-jq3","hdstager1","hd-yyj-jq4","hd-yyj-jq5","hdstager2","hd-yyj-jq6"},10)
		推活动本(activeList.activeFKName,activeList.activeFKJQName,
		{"hd-htzc-jq1","hdstager1","hd-htzc-jq2","hd-htzc-jq3","hd-htzc-jq4","hd-htzc-jq5","hd-htzc-jq6","hdstager2","hd-htzc-jq7","hd-htzc-jq8"},10)
		
	end
end

function 推复刻活动死斗任务(activeList)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（推复刻活动死斗任务）")
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		推活动本STR(activeList.activeFKName,activeList.activeFKSDName,{"EX1","EX2","EX3"},10)
		--推活动本("hd诸圣前夜","hd古老的传说",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("bsn不死鸟眼泪","bsn秘密研究室",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--推活动本("hd水岸狂想","hd水岸狂想曲",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--推活动本("hd桃源奇遇","hd桃源之章",{"hd-ty-jq0","hdstager1","hdstager2","hd-ty-jq1","hdstager3","hdstager4","hd-ty-jq2","hdstager5","hdstager6","hd-ty-jq3","hdstager7","hdstager8","hd-ty-jq4","hdstager9","hdstager10","hdstager11","hd-ty-jq5","hdstager12","hd-ty-jq6"},10)
		--推活动本("hd冰之圣夜","hd心的方向",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		
		
		
	end
end

function 推活动积分本任务(activeList)
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推活动积分本）")
		--推活动本("hd水岸狂想","hd如我所愿",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd水岸狂想","hd如我所愿",{"hdbt1","hdbt2","hdbt3"},10)
		--推活动本("hd桃源奇遇","hd仙境之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd王冠之重","hd暴乱之章","hdstager5",15)
		--推活动本("hd冰之圣夜","hd纯白的逆袭",{"hdbt1","hdbt2","hdbt3"},10)
		--推活动本("hd女神的收获祭","hd财富祭典",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd女神的收获祭","hd神启祭典",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd巧克力梦工厂","hd知觉解放",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd深月巡礼","hd圣地异变",{"bsn-EX1","hdEX2","hdEX3"},10)
		推活动本(activeList.activeName,activeList.activeJFName,{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5","hdstager6","hdstager7"},10)
		
	end
end

function 推复刻活动积分本任务(activeList)
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推复刻活动积分本）")
		--推活动本("hd水岸狂想","hd如我所愿",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd水岸狂想","hd如我所愿",{"hdbt1","hdbt2","hdbt3"},10)
		--推活动本("hd桃源奇遇","hd仙境之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd王冠之重","hd暴乱之章","hdstager5",15)
		--推活动本("hd冰之圣夜","hd纯白的逆袭",{"hdbt1","hdbt2","hdbt3"},10)
		--推活动本("hd女神的收获祭","hd财富祭典",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd女神的收获祭","hd神启祭典",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd巧克力梦工厂","hd知觉解放",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--推活动本("hd深月巡礼","hd圣地异变",{"bsn-EX1","hdEX2","hdEX3"},10)
		推活动本(activeList.activeFKName,activeList.activeFKJFName,{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5","hdstager6","hdstager7"},10)
		
	end
end

function 扫荡复刻活动任务(activeList)
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务（扫荡复刻活动）")
		
		--扫荡复刻活动("hd女神的收获祭","hd财富祭典","hdstager1",10)
		--扫荡复刻活动("hd女神的收获祭","hd财富祭典","hdstager2",10)
		--扫荡复刻活动("hd女神的收获祭","hd财富祭典","hdstager3",10)
		--扫荡复刻活动("hd女神的收获祭","hd神启祭典","hdstager1",10)
		--扫荡复刻活动("hd女神的收获祭","hd神启祭典","hdstager2",10)
		--扫荡复刻活动("hd女神的收获祭","hd神启祭典","hdstager3",10)
		扫荡复刻活动重构(activeList.activeFKName,activeList.activeFKJFName,"Battle1",10)
		扫荡复刻活动重构(activeList.activeFKName,activeList.activeFKJFName,"Battle2",10)
		扫荡复刻活动重构(activeList.activeFKName,activeList.activeFKJFName,"Battle3",10)
	end
end

function 刷活动积分本任务(activeList)
	
	if 是否进入主页(1)     then
		writeLogFile("*******开始处理任务（刷活动积分本）")
		
		--扫荡活动("bsn不死鸟眼泪","bsn梦魇异境","hdstager5",15)
		--推活动本("hd王冠之重","hd暴乱之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd巧克力梦工厂","hd知觉解放","hdstager5",15)
		扫荡活动(activeList.activeName,activeList.activeJFName,"hdstager7",15)
	end
	
end

function 推小死斗任务(activeList)
	
	if 是否进入主页(1)     then
		writeLogFile("*******开始处理任务（推小死斗）")
		
		--扫荡活动("bsn不死鸟眼泪","bsn梦魇异境","hdstager5",15)
		--推活动本("hd王冠之重","hd暴乱之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd王冠之重","hd暴乱之章","hdstager5",15)
		--推活动本("hd桃源奇遇","hd死战之章1","hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		--推活动本("hd巧克力梦工厂","hd死斗",{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
		推活动本(activeList.activeName,activeList.activeSDXName,{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
		
	end
	
end
function 推大死斗1任务(activeList)
	
	if 是否进入主页(1)     then
		writeLogFile("*******开始处理任务（推大死斗1）")
		
		--扫荡活动("bsn不死鸟眼泪","bsn梦魇异境","hdstager5",15)
		--推活动本("hd王冠之重","hd暴乱之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd王冠之重","hd暴乱之章","hdstager5",15)
		--推活动本("hd桃源奇遇","hd死战之章1",{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		推活动本(activeList.activeName,activeList.activeSD1Name,
		{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		
	end
	
end

function 推大死斗2任务(activeList)
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推大死斗2）")
		
		--扫荡活动("bsn不死鸟眼泪","bsn梦魇异境","hdstager5",15)
		--推活动本("hd王冠之重","hd暴乱之章",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--扫荡活动("hd王冠之重","hd暴乱之章","hdstager5",15)
		--swipe(266,323,266,523,1000)
		推活动本大(activeList.activeName,activeList.activeSD2Name,
		{"hd-d-EX1VeryHard","hd-d-EX2VeryHard","hd-d-EX3VeryHard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
	end
	
end

function 刷金币本任务()
	
	if  是否进入主页(1)    then
		writeLogFile("*******开始处理任务13（刷金币本）")
		
		扫荡资源("zy淘金富途",{"zy第一层","zy第二层","zy第三层","zy淘金4层","zy淘金5层"},15)
		
	end
	
end

function 刷破阵本任务()
	
	if 是否进入主页(1) and 是否周几({"1","3","5","7"})  then
		writeLogFile("*******开始处理任务（刷破阵本）")
		
		扫荡资源("zy破阵决心",{"zy第一层","zy第二层","zy第三层","zy第四层"},10)
		
	end
	
end

function 刷坚壁本任务()
	
	if 是否进入主页(1) and 是否周几({"1","4","6"})  then
		writeLogFile("*******开始处理任务（刷坚壁本）")
		
		扫荡资源("zy坚壁意志",{"zy第一层","zy第二层","zy第三层","zy第四层"},10)
		
	end
	
end

function 刷每日商店任务()
	
	if 是否进入主页(1)    then
		writeLogFile("*******开始处理任务（刷每日商店）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷周期商店("每日商店",{"sd-zq-每日上古之石","sd-zq-每日神启药水","sd-zq-每日上古碑石","sd-zq-每日神启秘药","sd-zq-每日圣愈徽记"},10)
	end
	
end

function 升级角色任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（角色升级）")
		return 升级角色(5)
		--扫荡活动("异界狂想曲","布魔之章")
	end
	return false
end

function 强化装备任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（强化装备）")
		
		return 强化装备(5)
	end
	return false
end

function 领武斗会任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（领武斗会）")
		领取武斗会奖励(5)
	end
	
end

function 刷武斗会特殊任务()
	
	if 是否进入主页(1)    then
		writeLogFile("*******开始处理任务（刷武斗会特殊）")
		return 刷武斗会特殊(5)
	end
	return false
end

function 领取特殊武斗会奖励任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（领取特殊武斗会奖励）")
		领取特殊武斗会奖励(5)
		--刷武斗会(5)
	end
	
end

function 领取每日任务奖励任务()
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务（领取每日任务奖励）")
		领取每日任务奖励()
	end
	
end

function 领取新手任务奖励任务(activeList,userList)
	
	if 是否进入主页(1)   then
		writeLogFile("*******开始处理任务19（领取每日任务奖励）")
		领取新手任务奖励(userList)
		--扫荡活动("异界狂想曲","布魔之章")
	end
	
end

function 新手任务7第一章任务()
	
	if 是否有活动章节(3)==false  then
		writeLogFile("*******开始处理任务21（新手任务7第一章）")
		
		新手任务7第一章(10,"zx1-3","zx第一章")
		新手任务7第一章(10,"zx1-4","zx第一章")
		新手任务7第一章(10,"zx1-5","zx第一章")
		--推主线本(5,"zxjq1-1","zx第一章")新手任务7第一章 推主线第一章  推主线第二章
		
	end
	
end

function 推主线第一章任务()
	
	if 是否进入主页(1) and 是否有活动章节(3)==false  then
		writeLogFile("*******开始处理任务22（推主线第一章）")
		推主线本("zx第一章",{"zx1-3","zx1-4","zx1-5","zxjq1-1","zx1-6","zx1-7","zxjq1-2","zx1-8","zxjq1-3"},10)
	end
end

function 新手任务8第二章任务()
	
	if 是否进入主页(1) and 是否有活动章节(3)==false then
		
		writeLogFile("*******开始处理任务23（新手任务8第二章）")
		推单章节("zx第二章","zxjq2-1",10)
		推单章节("zx第二章","zx2-1",10)
		推单章节("zx第二章","zxjq2-2",10)
		推单章节("zx第二章","zxjq2-3",10)
		新手任务8解锁信箱("zx第二章","zx2-2",10)
		推单章节("zx第二章","zx2-3",10)
		推单章节("zx第二章","zxjq2-4",10)
		推单章节("zx第二章","zx2-4",10)
		推单章节("zx第二章","zx2-5",10)
		
	end
end

function 推主线第二章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务24（推主线第二章）")
		推主线本("zx第二章",{"zxjq2-1","zx2-1","zxjq2-2","zxjq2-3","zx2-2","zx2-3","zxjq2-4","zx2-4","zx2-5","zxjq2-5","zx2-6","zx2-7","zxjq2-6","zxjq2-7","zx2-8","zx2-9","zxjq2-8","zxjq2-9","zxjq2-10","zxjq2-11","zxjq2-12"},5)
	end
end

function 推主线第三章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推主线第三章）")
		推主线本文字("zx第三章",{"zxjq3-1","zx3-1","zx3-2","zx3-3","zxjq3-2","zx3-4","zx3-5","zxjq3-3","zxjq3-4","zx3-6","zx3-7","zxjq3-6","zxjq3-7"},5,0,"3")
	end
end
function 推主线第四章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推主线第四章）")
		推主线本文字("zx第四章",{"zxjq4-1","4-1","4-2","4-3","4-4","4-5","4-6","4-7","4-8","4-9","4-10","4-11","4-12"},5,0,"4")
	end
end

function 推主线第五章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推主线第四章）")
		推主线本文字("zx第五章",{"zxjq5-1","zx5-1","zx5-2","zx5-3","zx5-4","zx5-5","zxjq3-3","zxjq3-4"},5,0,"5")
	end
end

function 推主线第六章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推主线第四章）")
		推主线本文字("zx第六章",{"zxjq6-1","zx6-1","zx6-2","zx6-3","zx6-4","zx6-5","zx6-6","zxjq3-3","zxjq3-4"},5,0,"6")
	end
end

function 推困难第一章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推困难第一章）")
		
		推主线本("zx第一章",{"zxkn1-1","zxkn1-2","zxkn1-3","zxkn1-4","zxkn1-5","zxkn1-6","zxkn1-7","zxkn1-8"},5,1)
		
	end
end

function 推困难第二章任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务（推困难第二章）")
		
		推主线本("zx第二章",{"zxkn2-1","zxkn2-2","zxkn2-3","zxkn2-4","zxkn2-5","zxkn2-6","zxkn2-7","zxkn2-8","zxkn2-9","zxkn2-10","zxkn2-11","zxkn2-12"},5,1)
		
	end
end

function 强化神器任务()
	
	if 是否进入主页(1) and 是否周几({"5"}) then
		writeLogFile("*******开始处理任务（强化神器）")
		强化神器(5)
	end
end


function 新手升级角色任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务25（新手升级角色）")
		新手升级角色(3)
	end
end

function 升星任务()
	
	if 是否进入主页(1) and 是否周几({"1"})  then
		writeLogFile("*******开始处理任务25（升星任务）")
		return 升星角色(5)
	end
    return false
end

function 刷2_12任务()
	
	if 是否进入主页(1) and 是否有活动章节(3) then
		writeLogFile("*******开始处理任务24（刷2-12）")
		扫荡主线("zx第二章","zx2-12",10)
	end
end

function 刷2_5任务()
	
	if 是否进入主页(1) and 是否有活动章节(3) then
		writeLogFile("*******开始处理任务24（刷2-5）")
		扫荡主线("zx第二章","zx2-5",10)
	end
end

function 刷活动最近一章任务(activeList)
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务24（刷活动最近一章）")
		扫荡活动最近一章(activeList.activeName,activeList.activeJQName,{"hdstager7","hdstager6","hdstager5","hdstager4","hdstager3","hdstager2","hdstager1"},10)
		
		扫荡活动最近一章(activeList.activeName,activeList.activeJFName,
		{"hdstager12","hdstager11",
		"hdstager10","hdstager9","hdstager8",
		"hdstager7","hdstager6","hdstager5",
		"hdstager4","hdstager3","hdstager2",
		"hdstager1"},10)
	end
end


function 刷活动商店任务(activeList)
	
	if 是否进入主页(1) and 是否周几({"1","5"}) then
		writeLogFile("*******开始处理任务25（刷活动商店）")
		刷活动商店("MAX",activeList.activeName,1,10)
	end
end

function 刷活动商店优惠任务(activeList)
	
	if 是否进入主页(1) and 是否周几({"1","6"}) then
		writeLogFile("*******开始处理任务25（刷活动商店优惠）")
		刷活动商店("MAX",activeList.activeName,2,10)
	end
end

function 刷复刻活动商店任务(activeList)
	
	if 是否进入主页(1) and 是否周几({"0","1","6"}) then
		writeLogFile("*******开始处理任务25（刷复刻活动商店任务）")
		return 刷活动商店("FK",activeList.activeFKName,1,10)
	end
	return false
end

function 刷武斗会商店任务()
	
	if 是否进入主页(1) and 是否周几({"1","0"})  then
		writeLogFile("*******开始处理任务（刷武斗会商店）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷商店("-般竞技场商店",{"sd传说兑换币","sd-wdh-金币"},3)
		刷商店("特殊竞技场商店",{"sd传说兑换币","sd-wdh-金币"},3)
		
	end
	
end

function 刷神力商店任务()
	
	if 是否进入主页(1)  and 是否周几({"1","0"})  then
		writeLogFile("*******开始处理任务（刷神力商店）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷商店("神力殊死战",{"sd传说兑换币"},4)
	end
	
end
function 刷神力任务()
	
	if 是否进入主页(1)  and 是否周几({"2"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(70,10)
	end
	if 是否进入主页(1)  and 是否周几({"5","1","7"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(65,10)
	end
	if 是否进入主页(1)  and 是否周几({"4","3","6","0"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(60,10)
	end
	
end

function 刷神力65任务()
	
	if 是否进入主页(1)  and 是否周几({"3","4","5","0"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(65,10)
	end
	
end
function 刷神力60任务()
	
	if 是否进入主页(1)  and 是否周几({"3","4","5","0"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(50,10)
	end
	
end

function 刷神力50任务()
	
	if 是否进入主页(1)  and 是否周几({"3","4","5","0"})  then
		writeLogFile("*******开始处理任务（刷神力）")
		--刷每日商店(5)
		--扫荡活动("异界狂想曲","布魔之章")
		刷神力殊死战(50,10)
	end
	
end

function 自动编队任务()
	
	if 是否进入主页(1)  then
		writeLogFile("*******开始处理任务26（自动编队）")
		自动编队(5)
	end
end

function 购买扫荡券任务()
	
	if 是否进入主页(1) and 是否周几({"7","5","3","1"}) then
		writeLogFile("*******开始处理任务（刷每日商店）")
		刷周期商店("每月商店",{"sd-zq-每月扫荡券"},10)
	end
end

function 推断空塔任务()
	
	if 是否进入主页(1) and 是否周几({"1","6"})then
		writeLogFile("*******开始处理任务（推断空塔）")
		推断空塔("ts断空塔",1,5)
	end
end

function 推断空禁界任务()
	
	if 是否进入主页(1) and 是否周几({"1","6"}) then
		writeLogFile("*******开始处理任务（推断空禁界）")
		推断空塔("ts断空禁界",1,5)
	end
end

function 推断空禁界2任务()
	
	if 是否进入主页(1) and 是否周几({"4","6"}) then
		writeLogFile("*******开始处理任务（推断空禁界）")
		推断空塔("ts断空禁界",2,5)
	end
end

function 强化角色装备任务()
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务（推断空塔）")
		推断空塔(5)
	end
end

function 新手召唤任务()
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务（新手召唤任务）")
		召唤("女神召唤新手","zh新手召唤")
	end
end

function 购买体力药任务()
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务（刷每日商店）")
		刷周期商店("每月商店",{"sd-zq-每月大体力药"},10)
	end
end

function 购买黄券任务()
	
	if 是否进入主页(1) and 是否周几({"1","6"}) then
		writeLogFile("*******开始处理任务（刷每月商店）")
		刷周期商店("每月商店",{"sd-zq-每月羁绊契约"},10)
	end
end

function 活动抽奖任务(activeList)
	
	if 是否进入主页(1) and 是否周几({"3","6"}) then
		writeLogFile("*******开始处理任务（活动抽奖任务）")
		活动抽奖(activeList.activeName,"hd抽奖箱",10)
	end
end

function 自动刷章节任务(activeList)
	
	if 是否进入主页(1) then
		writeLogFile("*******开始处理任务（活动抽奖任务）")
		活动抽奖("hd桃源奇遇","hd抽奖箱",10)
	end
end
