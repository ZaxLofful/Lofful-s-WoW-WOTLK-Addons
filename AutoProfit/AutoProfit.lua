----------------------------------------------------------------
--  AutoProfit v4.0.0 (August 2022)
--  Original by Jason Allen.
--  Rewritten by kebabstorm.
----------------------------------------------------------------

autoProfit_Exceptions = {}
autoProfit_AutoSell = false
autoProfit_Silent = false
autoProfit_Processing = false

AUTOPROFIT_VERSION = "v4.0.0 August 4th, 2022"

function SellJunk()
    if (not MerchantFrame:IsShown()) then
        return
    end

    autoProfit_Processing = true
    local numOfSales = 0
    local totalProfit = 0

    for bag = 0, 4 do
        local numSlots = GetContainerNumSlots(bag)
        if (numSlots > 0) then
            for slot = 0, numSlots do
                local itemLink, itemSellPrice, itemCount = AutoProfit_CheckContainerItem(bag, slot)
                if (itemLink) then
                    if (not autoProfit_Silent) then 
                        DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Sold " .. itemLink .. ((itemCount > 1) and ("x" .. itemCount .. ".") or "."), 0.0, .8, 1)
                    end
                    --PickupContainerItem(bag, slot)
                    --PickupMerchantItem(0)
                    UseContainerItem(bag, slot)
                    numOfSales = numOfSales + itemCount
                    totalProfit = totalProfit + (itemSellPrice * itemCount)
                end
            end
        end
    end

    if (numOfSales > 0) then
        DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Sold " .. numOfSales .. ((numOfSales == 1) and " item" or " items") .. " for " .. GetCoinTextureString(totalProfit) .. ".", 0.0, .8, 1)
    end

    autoProfit_sellButton:SetEnabled(false)
    autoProfit_Processing = false
end

function AutoProfit_CheckContainerItem(bag, slot)
    local texture, itemCount, _, quality, _, _, itemLink, _, noValue, itemID = GetContainerItemInfo(bag, slot)
    if (texture and quality < 2 and not noValue) then
        -- This prevents Dark Moon Faire items from being sold to the vendor.
        -- "Small Furry Paw", "Torn Bear Pelt", "Soft Bushy Tail", "Vibrant Plume", "Evil Bat Eye", "Glowing Scorpid Blood"
        if (itemID == 5134 or itemID == 11407 or itemID == 4582 or itemID == 5117 or itemID == 11404 or itemID == 19933) then
            return nil
        end

        local itemSellPrice = select(11, GetItemInfo(itemID))
        if (not itemSellPrice or itemSellPrice == 0) then
            return nil
        end

        if (quality == 0) then -- Trash
            for i=1,table.getn(autoProfit_Exceptions) do
                local _, _, s =string.find(autoProfit_Exceptions[i],"(item:%d+)")
                if (s and itemID == tonumber(string.sub(s, 6))) then
                    return nil
                end
            end
            return itemLink, itemSellPrice, itemCount
        end

        if (quality == 1) then -- Common
            for i=1,table.getn(autoProfit_Exceptions) do
                local _, _, s =string.find(autoProfit_Exceptions[i],"(item:%d+)")
                if (s and itemID == tonumber(string.sub(s, 6))) then
                    return itemLink, itemSellPrice, itemCount
                end
            end
            return nil
        end
    end
    return nil
end

function AutoProfit_CheckJunk()
    for bag = 0, 4 do
        local numSlots = GetContainerNumSlots(bag)
        if (numSlots > 0) then
            for slot = 0, numSlots do
                if (AutoProfit_CheckContainerItem(bag, slot)) then
                    return true
                end
            end
        end
    end
    return false
end

function AutoProfit_SlashCmd(msg)
    if (msg == "purge") then
        autoProfit_Exceptions = { }
        DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Deleted all exceptions.", 0.0, .80, 1)
        return
    end

    if (msg == "auto") then
        autoProfit_AutoSell = not autoProfit_AutoSell
        if (autoProfit_AutoSell) then
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Automatic selling on.", 0.0, .80, 1)
        else
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Automatic selling off.", 0.0, .80, 1)
        end
        return
    end

    if (msg == "silent") then
        autoProfit_Silent = not autoProfit_Silent
        if (autoProfit_Silent) then
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Sale reporting off.", 0.0, .80, 1)
        else
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Sale reporting on.", 0.0, .80, 1)
        end
        return
    end

    if (msg == "list") then
        if (table.getn(autoProfit_Exceptions) > 0) then
            DEFAULT_CHAT_FRAME:AddMessage("AutoProfit Exceptions: ", 0.0, .80, 1)
            for i=1,table.getn(autoProfit_Exceptions) do
                DEFAULT_CHAT_FRAME:AddMessage("[|c00bfffff" .. i .. "|r] " .. autoProfit_Exceptions[i], 0.0, .80, 1)
            end
        else
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Your exceptions list is empty.", 0.0, .80, 1)
        end
        return
    end

    if (string.len(msg) < 6 and tonumber(msg)) then
        if (tonumber(msg) > table.getn(autoProfit_Exceptions)) then
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Exception number " .. tonumber(msg) .. " was not found.", 0.0, .8, 1)
            return
        else
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Removed " .. autoProfit_Exceptions[tonumber(msg)] .. " from exceptions list.", 0.0, .8, 1)
            table.remove(autoProfit_Exceptions, tonumber(msg))
            if (MerchantFrame:IsShown()) then
                if (AutoProfit_CheckJunk()) then
                    autoProfit_sellButton:SetEnabled(true)
                else
                    autoProfit_sellButton:SetEnabled(false)
                end
            end
            return
        end
    end

    if (string.find(msg, "Hitem:")) then
        local removed = false
    
        if (table.getn(autoProfit_Exceptions) > 0) then    
            for i=1,table.getn(autoProfit_Exceptions) do
                if (msg == autoProfit_Exceptions[i]) then
                    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Removed " .. autoProfit_Exceptions[i] .. " from exceptions list.", 0.0, .8, 1)
                    table.remove(autoProfit_Exceptions, i)
                    removed = true
                end
            end
        end
    
        if (not removed) then
            table.insert(autoProfit_Exceptions, msg)
            DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r: Added " .. msg .. " to exceptions list.", 0.0, .8, 1)
        end
        
        if (MerchantFrame:IsShown()) then
            if (AutoProfit_CheckJunk()) then
                autoProfit_sellButton:SetEnabled(true)
            else
                autoProfit_sellButton:SetEnabled(false)
            end
        end        
        return
    end

    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffffAutoProfit|r " .. AUTOPROFIT_VERSION .. " by kebabstorm & Jason Allen.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit [item link]|r: Add or remove an item to the exception list.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit list|r: List all items on your exception list.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit [number]|r: Remove item at that location in your exception list.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit purge|r: Remove all items from your exception list.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit silent|r: Toggles sale reporting on and off.", 0.0, .80, 1)
    DEFAULT_CHAT_FRAME:AddMessage("|c00bfffff/autoprofit auto|r: Toggles automatic selling on and off.", 0.0, .80, 1)
end

---------------------------------------------------
do
    local f = CreateFrame("Frame")
    f:RegisterEvent("MERCHANT_SHOW")
    f:RegisterEvent("MERCHANT_CLOSED")
    f:SetScript("OnEvent", function(self, event)
        if (event == "MERCHANT_SHOW") then
            if (autoProfit_AutoSell) then 
                --autoProfit_sellButton:Hide()
                autoProfit_sellButton:SetEnabled(false)
                SellJunk()
            else
                --autoProfit_sellButton:Show()
                if (AutoProfit_CheckJunk()) then
                    autoProfit_sellButton:SetEnabled(true)
                else
                    autoProfit_sellButton:SetEnabled(false)
                end
            end
            f:RegisterEvent("BAG_UPDATE")
        elseif (event == "MERCHANT_CLOSED") then
            f:UnregisterEvent("BAG_UPDATE")
        else -- BAG_UPDATE
            if (MerchantFrame:IsShown()) then
                if (not autoProfit_Processing) then
                    if (AutoProfit_CheckJunk()) then
                        autoProfit_sellButton:SetEnabled(true)
                    else
                        autoProfit_sellButton:SetEnabled(false)
                    end
                end
            else
                f:UnregisterEvent("BAG_UPDATE")
            end
        end
    end)

    autoProfit_sellButton = CreateFrame("Button", nil, MerchantFrame, "OptionsButtonTemplate")
    autoProfit_sellButton:SetPoint("TOPRIGHT", -12, -32)
    autoProfit_sellButton:SetPoint("CENTER")
    autoProfit_sellButton:SetText("Sell Junk")
    autoProfit_sellButton:SetScript("OnClick", function() SellJunk() end)
    autoProfit_sellButton:Show()
end
---------------------------------------------------

SLASH_AUTOPROFIT1 = "/autoprofit"
SLASH_AUTOPROFIT2 = "/ap"
SlashCmdList["AUTOPROFIT"] = AutoProfit_SlashCmd
