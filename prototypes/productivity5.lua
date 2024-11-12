local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["productivity-module-3"])
item.effect =
	{
	productivity = settings.startup["t5-modules-productivity-item-effect-productivity"].value,
	consumption = settings.startup["t5-modules-productivity-item-effect-consumption"].value,
	pollution = settings.startup["t5-modules-productivity-item-effect-pollution"].value,
	speed = settings.startup["t5-modules-productivity-item-effect-speed"].value
	}

item.icon = "__modules-t4-t5__/graphics/icons/productivity-module-5.png"
item.name = "productivity-module-5"
item.order = "c[productivity]-d[productivity-module-5]"
item.tier = 5
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "productivity-module-4", amount = 5}, 
            {type = "item", name = "processing-unit", amount = 25}
        },
        name = "productivity-module-5",
        results = {
            {type = "item", name = "productivity-module-5", amount = 1}
        },
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "productivity-module-5"}},
        icon = "__modules-t4-t5__/graphics/technology/productivity-module-5.png",
        icon_size = 256,
        name = "productivity-module-5",
        order = "i-e-d",
        prerequisites = {"productivity-module-4"},
        type = "technology",
        unit = {
            count = 750,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        upgrade = true
    }
})
