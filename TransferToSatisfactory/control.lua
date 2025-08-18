mfu = require('__mfulib__/core')

local object = {
    name = "iron-plate",
    amount = 100,
    type = "item",
}

script.on_event(defines.events.on_tick, function(event)
    --mfu.object_to_file("fac.txt", object, true, '|')
    if event.tick % 60 == 0 then
        for _, surface in pairs(game.surfaces) do
            process_surface(surface)
        end
    end
end)


function process_surface(surface)
    entities = surface.find_entities_filtered({type = "container", name = "tts-landfill"})

    for _, entity in pairs(entities) do
        local inventory = entity.get_inventory(defines.inventory.chest)
        if inventory and inventory.is_empty() == false then
            local items = {}
            for i = 1, #inventory do
                local item = inventory[i]
                if item.valid_for_read then
                    table = {name = item.name, count = item.count}
                    mfu.object_to_file("fac.txt", table, true, '|')
                end
            end
            inventory.clear()
        end
    end
end

commands.add_command("mfulib", "Prints the mfu table to the console", function(command)
    if game.player then
        game.player.print(serpent.block(mfu))
    else
        print(serpent.block(mfu))
    end
end)

