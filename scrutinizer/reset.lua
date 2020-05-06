local scrutinizer = scrutinizer

local tostring = tostring

local function ResetMenu(this)
	local info = {}
	if UIDROPDOWNMENU_MENU_LEVEL == 1 then
		info = {}
		info.text = OBJ_RESET
		info.isTitle = true
		info.notCheckable = 1
		info.value = 1
		UIDropDownMenu_AddButton(info, 1)	

		info = {}
		info.text = " All"
		info.notCheckable = 1
		info.value = 2
		info.func = function()
				scrutinizer:ShowSubmitButton()
		end
		UIDropDownMenu_AddButton(info, 1)		
		
		info = {}
		info.text = " Boss"
		info.notCheckable = 1
		info.value = 3
		info.func = function()
				scrutinizer:ResetBoss()
		end		
		UIDropDownMenu_AddButton(info, 1)	
		
	end
end

function scrutinizer:ResetOnLoad(this)
	UIDropDownMenu_Initialize(this, ResetMenu, "MENU")
end