-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local ox_inventory = exports.ox_inventory

local combhook = ox_inventory:registerHook('swapItems', function(payload)
    if payload.fromInventory == payload.source and payload.fromSlot ~= nil and type(payload.toSlot) == "table" and Config.Combinations[payload.fromSlot.name] ~= nil then
        local combination = Config.Combinations[payload.fromSlot.name]
        local neededItems = combination.needs

        local hasAllItems = true

        for _, neededItem in ipairs(neededItems) do
            local neededItemName = neededItem.item
            local neededAmount = neededItem.amount
            local itemCount = exports.ox_inventory:GetItemCount(payload.source, neededItemName, nil, true)

            if itemCount < neededAmount then
                hasAllItems = false
                break
            end
        end

        if hasAllItems then
            TriggerClientEvent('ox_inventory:closeInventory', payload.source)
            TriggerClientEvent('amg_combinator:combinatorprog', payload.source)
            Wait(2000)
            
            if combination.firstcombiremove then
                ox_inventory:RemoveItem(payload.source, payload.fromSlot.name, 1)
            end
            
            for _, neededItem in ipairs(neededItems) do
                if combination.needcombiremove then
                    ox_inventory:RemoveItem(payload.source, neededItem.item, neededItem.amount)
                end
            end
            
            for _, resultItem in pairs(combination.result) do
                ox_inventory:AddItem(payload.source, resultItem.name, resultItem.amount)
            end
            return false
        else
            print('Nicht genügend oder keine Gegenstände, um zu kombinieren!')
        end
    end
end, {})
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------