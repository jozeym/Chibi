--creating frames for each of the images
mainFrame = CreateFrame("Frame", "mainFrame", UIParent);
mainFrame:SetSize(256, 256);
mainFrame:SetPoint("CENTER");

secondFrame = CreateFrame("Frame", "secondFrame", UIParent);
secondFrame:SetSize(256, 256);
secondFrame:SetPoint("TOPLEFT");

thirdFrame = CreateFrame("Frame", "thirdFrame", UIParent);
thirdFrame:SetSize(256, 256);
thirdFrame:SetPoint("TOPRIGHT");

fourthFrame = CreateFrame("Frame", "fourthFrame", UIParent);
fourthFrame:SetSize(256, 256);
fourthFrame:SetPoint("BOTTOMLEFT");

fifthFrame = CreateFrame("Frame", "fifthFrame", UIParent);
fifthFrame:SetSize(256, 256);
fifthFrame:SetPoint("BOTTOMRIGHT");

self:RegisterEvent("CHAT_MSG_GUILD"); --register guild chat
local f = CreateFrame("Frame")
	--matching name to chat
	f:SetScript("OnEvent", function(self,event,...)
	local arg1 = select(1,...)
	if arg1 then
		local name,msg = arg1:match("[^.*%Ràvvi] has come online.")
		if name then	
			--creating images in frame and display on screen
			mainFrame:SetBackdrop( { 
				bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
				insets = { left = 0, right = 0, top = 0, bottom = 0 }
			});
			secondFrame:SetBackdrop( { 
				bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
				insets = { left = 0, right = 0, top = 0, bottom = 0 }
			});
			thirdFrame:SetBackdrop( { 
				bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
				insets = { left = 0, right = 0, top = 0, bottom = 0 }
			});
			fourthFrame:SetBackdrop( { 
				bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
				insets = { left = 0, right = 0, top = 0, bottom = 0 }
			});
			fifthFrame:SetBackdrop( { 
				bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
				insets = { left = 0, right = 0, top = 0, bottom = 0 }
			});
			StopMusic() --stop game music
			PlayMusic("Interface\\AddOns\\Chibi\\Media\\song.mp3") --play chosen music
			C_Timer.After(27.8, function() Sound_GameSystem_RestartSoundSystem() end) --after music has ended restart game music
			--hide images
			mainFrame:Hide()
			secondFrame:Hide()
			thirdFrame:Hide()
			fourthFrame:Hide()
			fifthFrame:Hide()
		end
	end
end

--setting up slash command
SLASH_CHIBI1 = "/chibi"
SlashCmdList["CHIBI"] = function(msg)
	mainFrame:SetBackdrop( { 
		bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga",
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	});
		secondFrame:SetBackdrop( { 
		bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	});
	thirdFrame:SetBackdrop( { 
		bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	});
	fourthFrame:SetBackdrop( { 
		bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	});
	fifthFrame:SetBackdrop( { 
		bgFile = "Interface\\AddOns\\Chibi\\Img\\testcopy.tga", 
		insets = { left = 0, right = 0, top = 0, bottom = 0 }
	});
	StopMusic()
	PlayMusic("Interface\\AddOns\\Chibi\\Media\\song.mp3")
	C_Timer.After(27.8, function() Sound_GameSystem_RestartSoundSystem() end)
	mainFrame:Hide()
	secondFrame:Hide()
	thirdFrame:Hide()
	fourthFrame:Hide()
	fifthFrame:Hide()
end