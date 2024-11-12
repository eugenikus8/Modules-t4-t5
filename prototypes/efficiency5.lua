local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["efficiency-module-3"])
item.effect =
	{
		consumption = settings.startup["t5-modules-efficiency-item-effect-consumption"].value
	}

item.icon = "__modules-t4-t5__/graphics/icons/efficiency-module-5.png"
item.name = "efficiency-module-5"
item.order = "c[efficiency]-e[efficiency-module-5]"
item.tier = 5
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "efficiency-module-4", amount = 5}, 
            {type = "item", name = "processing-unit", amount = 20}
        },
        name = "efficiency-module-5",
        results = {
            {type = "item", name = "efficiency-module-5", amount = 1}
        },
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "efficiency-module-5"}},
        icon = "__modules-t4-t5__/graphics/technology/efficiency-module-5.png",
        icon_size = 256,
        name = "efficiency-module-5",
        order = "i-g-d",
        prerequisites = {"efficiency-module-4"},
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
