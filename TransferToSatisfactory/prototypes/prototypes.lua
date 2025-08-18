data:extend({
    {
        type = "item",
        name = "tts-landfill",
        icon = "__TransferToSatisfactory__/graphics/tts-landfill-icon.png",
    	icon_size = 32,
        subgroup = "storage",
        order = "a[landfill]",
        place_result = "tts-landfill",
        stack_size = 1
    },
    {
        type = "recipe",
        name = "tts-landfill",
        ingredients = {
            {
                type = "item",
                name = "stone-brick",
                amount = 289
            },
            {
                type = "item",
                name = "stone-wall",
                amount = 120
            },
            {
                type = "item",
                name = "steel-plate",
                amount = 150
            }
        },
        results = {
            {
                type = "item",
                name = "tts-landfill",
                amount = 1
            }
        },
        enabled = false
    },
    {
        type = "container",
        name = "tts-landfill",
        icon = "__TransferToSatisfactory__/graphics/tts-landfill.png",
    	icon_size = 32,
        flags = {
            "placeable-neutral",
            "player-creation"
        },
        minable = {
            mining_time = 1,
            result = "tts-landfill"
        },
        max_health = 2000,
        open_sound = {
            filename = "__base__/sound/metallic-chest-open.ogg",
            volume=0.65
        },
        close_sound = {
            filename = "__base__/sound/metallic-chest-close.ogg",
            volume = 0.7
        },
        resistances = {
            {
                type = "fire",
                percent = 100
            }
        },
        collision_box = {{-8.4, -8.4}, {8.4, 8.4}},
        selection_box = {{-8.5, -8.5}, {8.5, 8.5}},
        fast_replaceable_group = "container",
        inventory_size = 5,
        vehicle_impact_sound =  {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        picture = {
            filename = "__TransferToSatisfactory__/graphics/tts-landfill.png",
            priority = "extra-high",
            width = 637,
            height = 637,
            shift = {-0, 0}
        },
    },
    {
        type = "technology",
        name = "transfer-to-satisfactory",
        icon = "__TransferToSatisfactory__/graphics/tts-landfill.png",
    	icon_size = 636,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "tts-landfill"
            }
        },
        prerequisites = {
            "steel-processing",
            "stone-wall"
        },
        unit = {
            count = 100,
            time = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            }
        }
    }
})