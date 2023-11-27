-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local ox_inventory = exports.ox_inventory

local combhook = ox_inventory:registerHook('swapItems', function(payload)
    if payload.fromInventory == payload.source and payload.fromSlot ~= nil and type(payload.toSlot) == "table" and Config.Combinations[payload.fromSlot.name] ~= nil then
        local combination = Config.Combinations[payload.fromSlot.name]
        local neededItem = combination.needs.item
        local neededAmount = combination.needs.amount
        
        if payload.toSlot.name == neededItem then
            local itemCount = exports.ox_inventory:GetItemCount(payload.source, neededItem, nil, true)

            if itemCount >= neededAmount then
                TriggerClientEvent('ox_inventory:closeInventory', payload.source)
                TriggerClientEvent('amg_combinator:combinatorprog', payload.source)
                Wait(2000)
                if combination.firstcombiremove then
                    ox_inventory:RemoveItem(payload.source, payload.fromSlot.name, 1)
                end
                if combination.needcombiremove then
                    ox_inventory:RemoveItem(payload.source, neededItem, neededAmount)
                end
                for k,v in pairs(combination.result) do
                    ox_inventory:AddItem(payload.source, v.name, v.amount)
                end
                return false
            else
                print('HATTE NICHT GENÜGEND ODER KEINE ITEMS UM ZU KOMBINIEREN!!!')
            end
        end
    end
end, {})
