local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["quality-module-3"])
item.name = "quality-module-4"
item.icon = "__modules-t4-t5__/graphics/icons/quality-module-4.png"
item.order = "d[quality]-d[quality-module-4]"
item.tier = 4
item.effect = {
	quality = settings.startup["t4-modules-quality-item-effect-quality"].value,
	speed = settings.startup["t4-modules-quality-item-effect-speed"].value
}

table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        type = "recipe",
        name = "quality-module-4",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "quality-module-3", amount = 5},
            {type = "item", name = "processing-unit", amount = 10}
        },
        results = {
            {type = "item", name = "quality-module-4", amount = 1}
        }
    }
})

-- [Technology] --
local technology = table.deepcopy(data.raw["technology"]["quality-module-3"])
technology.name = "quality-module-4"
technology.icon = "__modules-t4-t5__/graphics/technology/quality-module-4.png"
technology.icon_size = 256
technology.order = "i-e-d"
technology.prerequisites = {"quality-module-3"}
technology.effects = {{type = "unlock-recipe", recipe = "quality-module-4"}}
technology.upgrade = true

data:extend({technology})
