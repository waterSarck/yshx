function ��ȡ�䶷�ά��(cycCount)
	while true do
		if findPicAndClick("�䶷��",true,10,5) then
			sleep(3000)
			if findPicAndClick("һ�㾺����",true,10,10) then
				sleep(3000)
				�ر�����ҳ(5)
				if findPicAndClick("wdh�ۻ�����",true,5,5) then
					sleep(3000)
					if findPicAndClick("wdh��ȡ����",true,5,5) then
						sleep(3000)
						if findPicAndClick("wdhok",true,5,5) or findPicAndClick("wdhȷ��",true,5,5) then
							writeLogFile("��ȡ�����ɹ�")
							sleep(3000)
							������ҳ(1)
							break
							sleep(6000)
						end
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("��ȡʧ��")
			sleep(3000)
			������ҳ(1)
			return false
		end
		sleep(2000)
	end
end

function ��ȡ�����䶷�ά��(cycCount)
	while true do
		if findPicAndClick("�䶷��",true,10,5) then
			sleep(3000)
			if findPicAndClick("wdh���⾺����",true,10,10) then
				sleep(3000)
				�ر�����ҳ(5)
				if findPicAndClick("wdh�ۻ�����",true,5,5) then
					sleep(3000)
					if findPicAndClick("wdh��ȡ����",true,5,5) then
						sleep(3000)
						if findPicAndClick("wdhok",true,5,5) or findPicAndClick("wdhȷ��",true,5,5) then
							writeLogFile("��ȡ�����ɹ�")
							sleep(3000)
							������ҳ(1)
							break
							sleep(6000)
						end
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("��ȡʧ��")
			sleep(3000)
			������ҳ(1)
			return false
		end
		sleep(2000)
	end
end
function ˢ�䶷��(cycCount)
	local actionFlag = false
	while true do
		---�䶷��
		---һ�㾺����
		---�ر�ָ��
		---��ս
		---��ս2
		---loading
		---����ս��
		---�뿪
		---loading
		---������ҳ
		
		if findPicAndClick("�䶷��",true,5,5) then
			sleep(3000)
			if findPicAndClick("һ�㾺����",true) then
				sleep(3000)
				�ر�����ҳ(5)
				sleep(3000)
				while findpic("wdhһ�㾺������ս",true) or findpic("wdhһ�㾺������ս��",true)do
					sleep(3000)
					if findpic("wdhһ�㾺������ս2",true) then
						sleep(3000)
						if findpic("wdh����") then
							while findpic("wdhȷ��",true) do
								sleep(2000)
								writeLogFile("����")
							end
						end
						if findpic("wdh����") then
							while findpic("wdh��",true) do
								sleep(2000)
								writeLogFile("δ��Ӵ���")
								
							end
							if findstr("�Զ����",true) then
								sleep(2000)
								writeLogFile("�Զ����")
							end
							findpic("wdhһ�㾺������ս2",true)
						end
						loading(3)
						sleep(6000)
						local counttmp = 10
						while findpic("�뿪")==false do
							findpic("����ս��",true)
							sleep(3000)
							writeLogFile("����ս��")
						end
						loading(5)
						while findpic("ok",true) do
							sleep(2000)
							writeLogFile("ok")
						end
						while findpic("�뿪",true) do
							sleep(2000)
							writeLogFile("�뿪")
						end
						loading(5)
					end
					if findPicAndClick("wdh��ս��������") then
						sleep(1000)
						
						if findpic("wdh��",true) then
							sleep(3000)
							������ҳ(2)
							writeLogFile("��ս��������")
							return true
						end
						������ҳ(2)
						return true
					end
				end
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("�䶷��ʧ��")
			return false
		end
		sleep(2000)
	end
end

function ˢ�䶷������(cycCount)
	while true do
		---�䶷��
		---һ�㾺����
		---�ر�ָ��
		---��ս
		---��ս2
		---loading
		---����ս��
		---�뿪
		---loading
		---������ҳ
		
		if findPicAndClick("�䶷��",true,5,5) then
			sleep(3000)
			if findPicAndClick("wdh���⾺����",true) then
				sleep(3000)
				�ر�����ҳ(5)
				sleep(3000)
				findpic("wdhȷ��",true)
				sleep(3000)
				if findstr("�༭���ض���",true) or findstr("�༭���ض���",true) then
					sleep(3000)
					if findstr("�Զ����",true) then
						sleep(2000)
						writeLogFile("�Զ��༭���ض���")
						if findstr("�������",true) then
							sleep(2000)
							writeLogFile("�洢���ض���")
						end
					end
					������һ��(3)
					sleep(2000)
				end
				while findpic("wdhһ�㾺������ս",true) or findpic("wdhһ�㾺������ս��",true)do
					sleep(3000)
					
					if findpic("wdhһ�㾺������ս2",true) then
						sleep(3000)
						if findpic("wdh����") then
							while findpic("wdhȷ��",true) do
								sleep(2000)
								writeLogFile("����")
							end
						end
						if findpic("wdh����") then
							while findpic("wdh��",true) do
								sleep(2000)
								writeLogFile("δ��Ӵ���")
								
							end
							if findstr("�Զ����",true) then
								sleep(2000)
								writeLogFile("�Զ����")
							end
							findpic("wdhһ�㾺������ս2",true)
						end
						loading(3)
						sleep(6000)
						local counttmp = 10
						while findpic("�뿪")==false and findpic("ok")==false do
							findpic("����ս��",true)
							sleep(3000)
							findstr("��һ��",true)
							sleep(3000)
							writeLogFile("����ս��")
						end
						loading(5)
						while findpic("ok",true) do
							writeLogFile("ok")
							sleep(2000)
						end
						while findpic("�뿪",true) do
							writeLogFile("�뿪")
							sleep(2000)
						end
						loading(5)
					end
					if findPicAndClick("wdh��ս��������",true) then
						sleep(1000)
						if findpic("wdh��",true) then
							sleep(3000)
							������ҳ(2)
							writeLogFile("��ս��������")
							return true
						end
						������ҳ(2)
						return true
						
					end
				end
				--������ҳ(3)
			end
		end
		cycCount = cycCount -1
		if cycCount == 0 then
			writeLogFile("�䶷��ʧ��")
			������ҳ(3)
			return false
		end
		sleep(2000)
	end
end
