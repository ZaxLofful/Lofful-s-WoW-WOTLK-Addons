--- Dialog window template
-- @module StoryTellerDialogTemplate

--- OnLoad
--
function StoryTellerDialogTemplate_OnLoad(self)
	self:RegisterForDrag("LeftButton")

	-- Slightly rescale the close button on Retail
	if LE_EXPANSION_LEVEL_CURRENT >= 9 then
		self.close:SetScale(.75)
		self.close:SetPoint("CENTER", self, "TOPRIGHT", -10, -10)
	end
end

--- OnDragStart
--
function StoryTellerDialogTemplate_OnDragStart(self)
	self:StartMoving()
end

--- OnDragStop
--
function StoryTellerDialogTemplate_OnDragStop(self)
	self:StopMovingOrSizing()
end

--- OnKeyDown
--
function StoryTellerDialogTemplate_OnKeyDown(self, key)
	if self:IsShown() and key == "ESCAPE" and not self.noEscape then
		self:SetPropagateKeyboardInput(false)
		self:Hide()
	else
		self:SetPropagateKeyboardInput(true)
	end
end

--- OnShow
--
function StoryTellerDialogTemplate_OnShow(self)
	PlaySound(SOUNDKIT.IG_QUEST_LIST_OPEN)
end

--- OnHide
--
function StoryTellerDialogTemplate_OnHide(self)
	PlaySound(SOUNDKIT.IG_QUEST_LIST_CLOSE)
end
