--ǩ������
function ǩ������()
	if  �Ƿ������ҳ(1) == false  then
		
		writeLogFile("*******��ʼ��������ǩ����")
		
		ǩ��(10)
		sleep(10000)
		--������ҳ(5)
	end
end

--ȥ�����
function ȥ���������()
	
	if �Ƿ������ҳ(1)==false  then
		writeLogFile("*******��ʼ��������ȥ����棩")
		������ҳ(3)
		ȥ�����(10)
		sleep(5000)
		������ҳ(3)
		
	end
end

function ��Դͳ������(userName,flag,success_action,fail_action)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ����������Դͳ�ƿ�ʼ��")
		--��Դͳ��(userName,10,"��ʼ")
		local strst = ��Դͳ��(userName,10,flag,success_action,fail_action)
		return strst
	end
	return ""
end

function ��Ʒ��ͼ����(userName)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ�������񣨳�Ʒ��ͼ����ʼ��")
		--��Դͳ��(userName,10,"��ʼ")
		��Ʒ��ͼ(userName,6)
		
	end
	
end

function ��һ�������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","2","3","6","0","7"})  then
		writeLogFile("*******��ʼ����������һ��룩")
		��һ���()
	end
end
function ��ع�������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ����������ع��룩")
		return ��ع���()
	end
	return false
end

function ˢ�䶷������()
	
	if �Ƿ������ҳ(1)    then
		writeLogFile("*******��ʼ��������ˢ�䶷�ᣩ")
		return ˢ�䶷��(5)
	end
	return false
end

function ��ȡ�ʼ�����()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ����������ȡ�ʼ���")
		���ʼ�(5)
	end
end

function ̽������()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ��������̽����")
		̽��(5)
	end
end

function ����ֿ�����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","2","3","4","5","6"})   then
		writeLogFile("*******��ʼ������������ֿ⣩")
		����ֿ�(5)
	end
end



function ������ҩ����()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������񣨳�����ҩ��")
		������ҩ(10,4,5)
	end
end

function �ƻ���鱾����(activeList)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ���������ƻ���鱾��")
		--�ƻ��("bsn����������","bsn�����о���",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		--�ƻ��("hdˮ������","hd��������",{"bsn-EX1","hdEX2","hdEX3"},10)
		--�ƻ��("hd��ʥǰҹ","hd���ϵĴ�˵",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("bsn����������","bsn�����о���",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("hdˮ������","hdˮ��������",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--�ƻ��("hd�ɿ����ι���","hd����",{"hd-qkl-jq1","hd-qkl-jq2","hdstager1","hdstager2","hd-qkl-jq3","hdstager3","hdstager4","hd-qkl-jq4","hdstager5","hdstager6","hd-qkl-jq5","hdstager7","hdstager8","hd-qkl-jq6","hdstager9","hdstager10","hd-qkl-jq7","hd-qkl-jq8"},10)
		--�ƻ��("hd��֮ʥҹ","hd�ĵķ���",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		--�ƻ��("hd����Ѳ��","hdʥ�����",{"hd-syxl-jq1","hd-syxl-jq2","hdstager1","hdstager2","hd-syxl-jq3","hd-syxl-jq4","hd-syxl-jq5","hd-syxl-jq6","hdstager3","hdstager4","hd-syxl-jq7","hdstager5","hd-syxl-jq8"},10)
		--�ƻ��("hd��֮���ּ�","hd���˵Ļ���",{"hd-yyj-jq1","hd-yyj-jq2","hd-yyj-jq3","hdstager1","hd-yyj-jq4","hd-yyj-jq5","hdstager2","hd-yyj-jq6"},10)
		�ƻ��(activeList.activeName,activeList.activeJQName,{"hd-sw-jq1","hdstager1","hd-sw-jq2","hd-sw-jq3","hd-sw-jq4","hd-sw-jq5","hd-sw-jq6","hdstager2","hd-sw-jq7","hd-sw-jq8","hd-sw-jq9","hd-sw-jq10","hd-sw-jq11",},10)
		
	end
end

function �Ƹ��̻���鱾����(activeList)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ���������Ƹ��̻���鱾��")
		--�ƻ��("bsn����������","bsn�����о���",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		--�ƻ��("hdˮ������","hd��������",{"bsn-EX1","hdEX2","hdEX3"},10)
		--�ƻ��("hd��ʥǰҹ","hd���ϵĴ�˵",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("bsn����������","bsn�����о���",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("hdˮ������","hdˮ��������",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--�ƻ��("hd�ɿ����ι���","hd����",{"hd-qkl-jq1","hd-qkl-jq2","hdstager1","hdstager2","hd-qkl-jq3","hdstager3","hdstager4","hd-qkl-jq4","hdstager5","hdstager6","hd-qkl-jq5","hdstager7","hdstager8","hd-qkl-jq6","hdstager9","hdstager10","hd-qkl-jq7","hd-qkl-jq8"},10)
		--�ƻ��("hd��֮ʥҹ","hd�ĵķ���",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		--�ƻ��("hd����Ѳ��","hdʥ�����",{"hd-syxl-jq1","hd-syxl-jq2","hdstager1","hdstager2","hd-syxl-jq3","hd-syxl-jq4","hd-syxl-jq5","hd-syxl-jq6","hdstager3","hdstager4","hd-syxl-jq7","hdstager5","hd-syxl-jq8"},10)
		--�ƻ��("hd��֮���ּ�","hd���˵Ļ���",{"hd-yyj-jq1","hd-yyj-jq2","hd-yyj-jq3","hdstager1","hd-yyj-jq4","hd-yyj-jq5","hdstager2","hd-yyj-jq6"},10)
		�ƻ��(activeList.activeFKName,activeList.activeFKJQName,
		{"hd-htzc-jq1","hdstager1","hd-htzc-jq2","hd-htzc-jq3","hd-htzc-jq4","hd-htzc-jq5","hd-htzc-jq6","hdstager2","hd-htzc-jq7","hd-htzc-jq8"},10)
		
	end
end

function �Ƹ��̻��������(activeList)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ���������Ƹ��̻��������")
		--�ƻ��("bsn����������","bsn�����о���",{"bsn-jq1","hdstager1","bsn-jq2","bsn-jq3","hdstager2","hdstager3","hdstager4","hdstager5","bsn-jq4","bsn-jq5","hdstager6","bsn-jq6","bsn-jq7","bsn-jq8"},10)
		�ƻ��STR(activeList.activeFKName,activeList.activeFKSDName,{"EX1","EX2","EX3"},10)
		--�ƻ��("hd��ʥǰҹ","hd���ϵĴ�˵",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("bsn����������","bsn�����о���",{"ws-jq1","ws-jq2","hdstager1","ws-jq3","ws-jq4","ws-jq5","hdstager2","ws-jq6"},10)
		--�ƻ��("hdˮ������","hdˮ��������",{"sa-jq1","sa-jq2","sa-jq3","hdstager1","sa-jq4","sa-jq5","hdstager2","sa-jq6","sa-jq7","sa-jq8","sa-jq9",},10)
		--�ƻ��("hd��Դ����","hd��Դ֮��",{"hd-ty-jq0","hdstager1","hdstager2","hd-ty-jq1","hdstager3","hdstager4","hd-ty-jq2","hdstager5","hdstager6","hd-ty-jq3","hdstager7","hdstager8","hd-ty-jq4","hdstager9","hdstager10","hdstager11","hd-ty-jq5","hdstager12","hd-ty-jq6"},10)
		--�ƻ��("hd��֮ʥҹ","hd�ĵķ���",{"hd-bzsy-jq1","hd-bzsy-jq2","hd-bzsy-jq3","hdstager1","hd-bzsy-jq4","hd-bzsy-jq5","hd-bzsy-jq6","hdstager2","hd-bzsy-jq7"},10)
		
		
		
	end
end

function �ƻ���ֱ�����(activeList)
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ���������ƻ���ֱ���")
		--�ƻ��("hdˮ������","hd������Ը",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hdˮ������","hd������Ը",{"hdbt1","hdbt2","hdbt3"},10)
		--�ƻ��("hd��Դ����","hd�ɾ�֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd����֮��","hd����֮��","hdstager5",15)
		--�ƻ��("hd��֮ʥҹ","hd���׵���Ϯ",{"hdbt1","hdbt2","hdbt3"},10)
		--�ƻ��("hdŮ����ջ��","hd�Ƹ�����",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hdŮ����ջ��","hd��������",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hd�ɿ����ι���","hd֪�����",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hd����Ѳ��","hdʥ�����",{"bsn-EX1","hdEX2","hdEX3"},10)
		�ƻ��(activeList.activeName,activeList.activeJFName,{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5","hdstager6","hdstager7"},10)
		
	end
end

function �Ƹ��̻���ֱ�����(activeList)
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ���������Ƹ��̻���ֱ���")
		--�ƻ��("hdˮ������","hd������Ը",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hdˮ������","hd������Ը",{"hdbt1","hdbt2","hdbt3"},10)
		--�ƻ��("hd��Դ����","hd�ɾ�֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd����֮��","hd����֮��","hdstager5",15)
		--�ƻ��("hd��֮ʥҹ","hd���׵���Ϯ",{"hdbt1","hdbt2","hdbt3"},10)
		--�ƻ��("hdŮ����ջ��","hd�Ƹ�����",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hdŮ����ջ��","hd��������",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hd�ɿ����ι���","hd֪�����",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--�ƻ��("hd����Ѳ��","hdʥ�����",{"bsn-EX1","hdEX2","hdEX3"},10)
		�ƻ��(activeList.activeFKName,activeList.activeFKJFName,{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5","hdstager6","hdstager7"},10)
		
	end
end

function ɨ�����̻����(activeList)
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ��������ɨ�����̻��")
		
		--ɨ�����̻("hdŮ����ջ��","hd�Ƹ�����","hdstager1",10)
		--ɨ�����̻("hdŮ����ջ��","hd�Ƹ�����","hdstager2",10)
		--ɨ�����̻("hdŮ����ջ��","hd�Ƹ�����","hdstager3",10)
		--ɨ�����̻("hdŮ����ջ��","hd��������","hdstager1",10)
		--ɨ�����̻("hdŮ����ջ��","hd��������","hdstager2",10)
		--ɨ�����̻("hdŮ����ջ��","hd��������","hdstager3",10)
		ɨ�����̻�ع�(activeList.activeFKName,activeList.activeFKJFName,"Battle1",10)
		ɨ�����̻�ع�(activeList.activeFKName,activeList.activeFKJFName,"Battle2",10)
		ɨ�����̻�ع�(activeList.activeFKName,activeList.activeFKJFName,"Battle3",10)
	end
end

function ˢ����ֱ�����(activeList)
	
	if �Ƿ������ҳ(1)     then
		writeLogFile("*******��ʼ��������ˢ����ֱ���")
		
		--ɨ���("bsn����������","bsn�����쾳","hdstager5",15)
		--�ƻ��("hd����֮��","hd����֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd�ɿ����ι���","hd֪�����","hdstager5",15)
		ɨ���(activeList.activeName,activeList.activeJFName,"hdstager7",15)
	end
	
end

function ��С��������(activeList)
	
	if �Ƿ������ҳ(1)     then
		writeLogFile("*******��ʼ����������С������")
		
		--ɨ���("bsn����������","bsn�����쾳","hdstager5",15)
		--�ƻ��("hd����֮��","hd����֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd����֮��","hd����֮��","hdstager5",15)
		--�ƻ��("hd��Դ����","hd��ս֮��1","hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		--�ƻ��("hd�ɿ����ι���","hd����",{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
		�ƻ��(activeList.activeName,activeList.activeSDXName,{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
		
	end
	
end
function �ƴ�����1����(activeList)
	
	if �Ƿ������ҳ(1)     then
		writeLogFile("*******��ʼ���������ƴ�����1��")
		
		--ɨ���("bsn����������","bsn�����쾳","hdstager5",15)
		--�ƻ��("hd����֮��","hd����֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd����֮��","hd����֮��","hdstager5",15)
		--�ƻ��("hd��Դ����","hd��ս֮��1",{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		�ƻ��(activeList.activeName,activeList.activeSD1Name,
		{"hd-d-EX1","hd-d-EX2","hd-d-EX3","hd-d-EX1Hard","hd-d-EX2Hard","hd-d-EX3Hard"},10)
		
	end
	
end

function �ƴ�����2����(activeList)
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ���������ƴ�����2��")
		
		--ɨ���("bsn����������","bsn�����쾳","hdstager5",15)
		--�ƻ��("hd����֮��","hd����֮��",{"hdstager1","hdstager2","hdstager3","hdstager4","hdstager5"},10)
		--ɨ���("hd����֮��","hd����֮��","hdstager5",15)
		--swipe(266,323,266,523,1000)
		�ƻ����(activeList.activeName,activeList.activeSD2Name,
		{"hd-d-EX1VeryHard","hd-d-EX2VeryHard","hd-d-EX3VeryHard","hd-d-EX1Nightmare","hd-d-EX2Nightmare","hd-d-EX3Nightmare"},10)
	end
	
end

function ˢ��ұ�����()
	
	if  �Ƿ������ҳ(1)    then
		writeLogFile("*******��ʼ��������13��ˢ��ұ���")
		
		ɨ����Դ("zy�Խ�;",{"zy��һ��","zy�ڶ���","zy������","zy�Խ�4��","zy�Խ�5��"},15)
		
	end
	
end

function ˢ��������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","3","5","7"})  then
		writeLogFile("*******��ʼ��������ˢ���󱾣�")
		
		ɨ����Դ("zy�������",{"zy��һ��","zy�ڶ���","zy������","zy���Ĳ�"},10)
		
	end
	
end

function ˢ��ڱ�����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","4","6"})  then
		writeLogFile("*******��ʼ��������ˢ��ڱ���")
		
		ɨ����Դ("zy�����־",{"zy��һ��","zy�ڶ���","zy������","zy���Ĳ�"},10)
		
	end
	
end

function ˢÿ���̵�����()
	
	if �Ƿ������ҳ(1)    then
		writeLogFile("*******��ʼ��������ˢÿ���̵꣩")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ�����̵�("ÿ���̵�",{"sd-zq-ÿ���Ϲ�֮ʯ","sd-zq-ÿ������ҩˮ","sd-zq-ÿ���Ϲű�ʯ","sd-zq-ÿ��������ҩ","sd-zq-ÿ��ʥ���ռ�"},10)
	end
	
end

function ������ɫ����()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������񣨽�ɫ������")
		return ������ɫ(5)
		--ɨ���("��������","��ħ֮��")
	end
	return false
end

function ǿ��װ������()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ��������ǿ��װ����")
		
		return ǿ��װ��(5)
	end
	return false
end

function ���䶷������()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ�����������䶷�ᣩ")
		��ȡ�䶷�ά��(5)
	end
	
end

function ˢ�䶷����������()
	
	if �Ƿ������ҳ(1)    then
		writeLogFile("*******��ʼ��������ˢ�䶷�����⣩")
		return ˢ�䶷������(5)
	end
	return false
end

function ��ȡ�����䶷�ά������()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ����������ȡ�����䶷�ά����")
		��ȡ�����䶷�ά��(5)
		--ˢ�䶷��(5)
	end
	
end

function ��ȡÿ������������()
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ����������ȡÿ����������")
		��ȡÿ��������()
	end
	
end

function ��ȡ��������������(activeList,userList)
	
	if �Ƿ������ҳ(1)   then
		writeLogFile("*******��ʼ��������19����ȡÿ����������")
		��ȡ����������(userList)
		--ɨ���("��������","��ħ֮��")
	end
	
end

function ��������7��һ������()
	
	if �Ƿ��л�½�(3)==false  then
		writeLogFile("*******��ʼ��������21����������7��һ�£�")
		
		��������7��һ��(10,"zx1-3","zx��һ��")
		��������7��һ��(10,"zx1-4","zx��һ��")
		��������7��һ��(10,"zx1-5","zx��һ��")
		--�����߱�(5,"zxjq1-1","zx��һ��")��������7��һ�� �����ߵ�һ��  �����ߵڶ���
		
	end
	
end

function �����ߵ�һ������()
	
	if �Ƿ������ҳ(1) and �Ƿ��л�½�(3)==false  then
		writeLogFile("*******��ʼ��������22�������ߵ�һ�£�")
		�����߱�("zx��һ��",{"zx1-3","zx1-4","zx1-5","zxjq1-1","zx1-6","zx1-7","zxjq1-2","zx1-8","zxjq1-3"},10)
	end
end

function ��������8�ڶ�������()
	
	if �Ƿ������ҳ(1) and �Ƿ��л�½�(3)==false then
		
		writeLogFile("*******��ʼ��������23����������8�ڶ��£�")
		�Ƶ��½�("zx�ڶ���","zxjq2-1",10)
		�Ƶ��½�("zx�ڶ���","zx2-1",10)
		�Ƶ��½�("zx�ڶ���","zxjq2-2",10)
		�Ƶ��½�("zx�ڶ���","zxjq2-3",10)
		��������8��������("zx�ڶ���","zx2-2",10)
		�Ƶ��½�("zx�ڶ���","zx2-3",10)
		�Ƶ��½�("zx�ڶ���","zxjq2-4",10)
		�Ƶ��½�("zx�ڶ���","zx2-4",10)
		�Ƶ��½�("zx�ڶ���","zx2-5",10)
		
	end
end

function �����ߵڶ�������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ��������24�������ߵڶ��£�")
		�����߱�("zx�ڶ���",{"zxjq2-1","zx2-1","zxjq2-2","zxjq2-3","zx2-2","zx2-3","zxjq2-4","zx2-4","zx2-5","zxjq2-5","zx2-6","zx2-7","zxjq2-6","zxjq2-7","zx2-8","zx2-9","zxjq2-8","zxjq2-9","zxjq2-10","zxjq2-11","zxjq2-12"},5)
	end
end

function �����ߵ���������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ߵ����£�")
		�����߱�����("zx������",{"zxjq3-1","zx3-1","zx3-2","zx3-3","zxjq3-2","zx3-4","zx3-5","zxjq3-3","zxjq3-4","zx3-6","zx3-7","zxjq3-6","zxjq3-7"},5,0,"3")
	end
end
function �����ߵ���������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ߵ����£�")
		�����߱�����("zx������",{"zxjq4-1","4-1","4-2","4-3","4-4","4-5","4-6","4-7","4-8","4-9","4-10","4-11","4-12"},5,0,"4")
	end
end

function �����ߵ���������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ߵ����£�")
		�����߱�����("zx������",{"zxjq5-1","zx5-1","zx5-2","zx5-3","zx5-4","zx5-5","zxjq3-3","zxjq3-4"},5,0,"5")
	end
end

function �����ߵ���������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ߵ����£�")
		�����߱�����("zx������",{"zxjq6-1","zx6-1","zx6-2","zx6-3","zx6-4","zx6-5","zx6-6","zxjq3-3","zxjq3-4"},5,0,"6")
	end
end

function �����ѵ�һ������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ѵ�һ�£�")
		
		�����߱�("zx��һ��",{"zxkn1-1","zxkn1-2","zxkn1-3","zxkn1-4","zxkn1-5","zxkn1-6","zxkn1-7","zxkn1-8"},5,1)
		
	end
end

function �����ѵڶ�������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ�������������ѵڶ��£�")
		
		�����߱�("zx�ڶ���",{"zxkn2-1","zxkn2-2","zxkn2-3","zxkn2-4","zxkn2-5","zxkn2-6","zxkn2-7","zxkn2-8","zxkn2-9","zxkn2-10","zxkn2-11","zxkn2-12"},5,1)
		
	end
end

function ǿ����������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"5"}) then
		writeLogFile("*******��ʼ��������ǿ��������")
		ǿ������(5)
	end
end


function ����������ɫ����()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ��������25������������ɫ��")
		����������ɫ(3)
	end
end

function ��������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1"})  then
		writeLogFile("*******��ʼ��������25����������")
		return ���ǽ�ɫ(5)
	end
    return false
end

function ˢ2_12����()
	
	if �Ƿ������ҳ(1) and �Ƿ��л�½�(3) then
		writeLogFile("*******��ʼ��������24��ˢ2-12��")
		ɨ������("zx�ڶ���","zx2-12",10)
	end
end

function ˢ2_5����()
	
	if �Ƿ������ҳ(1) and �Ƿ��л�½�(3) then
		writeLogFile("*******��ʼ��������24��ˢ2-5��")
		ɨ������("zx�ڶ���","zx2-5",10)
	end
end

function ˢ����һ������(activeList)
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ��������24��ˢ����һ�£�")
		ɨ������һ��(activeList.activeName,activeList.activeJQName,{"hdstager7","hdstager6","hdstager5","hdstager4","hdstager3","hdstager2","hdstager1"},10)
		
		ɨ������һ��(activeList.activeName,activeList.activeJFName,
		{"hdstager12","hdstager11",
		"hdstager10","hdstager9","hdstager8",
		"hdstager7","hdstager6","hdstager5",
		"hdstager4","hdstager3","hdstager2",
		"hdstager1"},10)
	end
end


function ˢ��̵�����(activeList)
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","5"}) then
		writeLogFile("*******��ʼ��������25��ˢ��̵꣩")
		ˢ��̵�("MAX",activeList.activeName,1,10)
	end
end

function ˢ��̵��Ż�����(activeList)
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","6"}) then
		writeLogFile("*******��ʼ��������25��ˢ��̵��Żݣ�")
		ˢ��̵�("MAX",activeList.activeName,2,10)
	end
end

function ˢ���̻�̵�����(activeList)
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"0","1","6"}) then
		writeLogFile("*******��ʼ��������25��ˢ���̻�̵�����")
		return ˢ��̵�("FK",activeList.activeFKName,1,10)
	end
	return false
end

function ˢ�䶷���̵�����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","0"})  then
		writeLogFile("*******��ʼ��������ˢ�䶷���̵꣩")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ�̵�("-�㾺�����̵�",{"sd��˵�һ���","sd-wdh-���"},3)
		ˢ�̵�("���⾺�����̵�",{"sd��˵�һ���","sd-wdh-���"},3)
		
	end
	
end

function ˢ�����̵�����()
	
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"1","0"})  then
		writeLogFile("*******��ʼ��������ˢ�����̵꣩")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ�̵�("��������ս",{"sd��˵�һ���"},4)
	end
	
end
function ˢ��������()
	
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"2"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(70,10)
	end
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"5","1","7"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(65,10)
	end
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"4","3","6","0"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(60,10)
	end
	
end

function ˢ����65����()
	
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"3","4","5","0"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(65,10)
	end
	
end
function ˢ����60����()
	
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"3","4","5","0"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(50,10)
	end
	
end

function ˢ����50����()
	
	if �Ƿ������ҳ(1)  and �Ƿ��ܼ�({"3","4","5","0"})  then
		writeLogFile("*******��ʼ��������ˢ������")
		--ˢÿ���̵�(5)
		--ɨ���("��������","��ħ֮��")
		ˢ��������ս(50,10)
	end
	
end

function �Զ��������()
	
	if �Ƿ������ҳ(1)  then
		writeLogFile("*******��ʼ��������26���Զ���ӣ�")
		�Զ����(5)
	end
end

function ����ɨ��ȯ����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"7","5","3","1"}) then
		writeLogFile("*******��ʼ��������ˢÿ���̵꣩")
		ˢ�����̵�("ÿ���̵�",{"sd-zq-ÿ��ɨ��ȯ"},10)
	end
end

function �ƶϿ�������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","6"})then
		writeLogFile("*******��ʼ���������ƶϿ�����")
		�ƶϿ���("ts�Ͽ���",1,5)
	end
end

function �ƶϿս�������()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","6"}) then
		writeLogFile("*******��ʼ���������ƶϿս��磩")
		�ƶϿ���("ts�Ͽս���",1,5)
	end
end

function �ƶϿս���2����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"4","6"}) then
		writeLogFile("*******��ʼ���������ƶϿս��磩")
		�ƶϿ���("ts�Ͽս���",2,5)
	end
end

function ǿ����ɫװ������()
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ���������ƶϿ�����")
		�ƶϿ���(5)
	end
end

function �����ٻ�����()
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ�������������ٻ�����")
		�ٻ�("Ů���ٻ�����","zh�����ٻ�")
	end
end

function ��������ҩ����()
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ��������ˢÿ���̵꣩")
		ˢ�����̵�("ÿ���̵�",{"sd-zq-ÿ�´�����ҩ"},10)
	end
end

function �����ȯ����()
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"1","6"}) then
		writeLogFile("*******��ʼ��������ˢÿ���̵꣩")
		ˢ�����̵�("ÿ���̵�",{"sd-zq-ÿ�����Լ"},10)
	end
end

function ��齱����(activeList)
	
	if �Ƿ������ҳ(1) and �Ƿ��ܼ�({"3","6"}) then
		writeLogFile("*******��ʼ�������񣨻�齱����")
		��齱(activeList.activeName,"hd�齱��",10)
	end
end

function �Զ�ˢ�½�����(activeList)
	
	if �Ƿ������ҳ(1) then
		writeLogFile("*******��ʼ�������񣨻�齱����")
		��齱("hd��Դ����","hd�齱��",10)
	end
end
