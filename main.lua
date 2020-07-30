FFLU = {};
FFLU.panel = CreateFrame( "Frame", "FFLUOPTIONS", UIParent );
FFLU.panel.name = "Final Fantasy Level Up!";
InterfaceOptions_AddCategory(FFLU.panel);
 

FFLU.childpanel = CreateFrame( "Frame", "FFLUOTHEROPTIONS", FFLU.panel);
FFLU.childpanel.name = "OTHER OPTIONS";
FFLU.childpanel.parent = FFLU.panel.name;
InterfaceOptions_AddCategory(FFLU.childpanel);

local a = CreateFrame("Frame")
a:RegisterEvent("PLAYER_LEVEL_UP")
a:SetFrameStrata("BACKGROUND");
a:SetClampedToScreen(true)
a:SetAllPoints(UIParent)
a:Hide();

a:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\FFLU\\FFLU.ogg", "Master")
		end)