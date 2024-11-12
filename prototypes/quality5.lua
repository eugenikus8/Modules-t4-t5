local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["quality-module-4"])
item.name = "quality-module-5"
item.icon = "__modules-t4-t5__/graphics/icons/quality-module-5.png"
item.order = "d[quality]-d[quality-module-5]"
item.tier = 5
item.effect = {
	quality = settings.startup["t5-modules-quality-item-effect-quality"].value,
	speed = settings.startup["t5-modules-quality-item-effect-speed"].value
}

table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        type = "recipe",
        name = "quality-module-5",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "quality-module-4", amount = 5},
            {type = "item", name = "processing-unit", amount = 10}
        },
        results = {
            {type = "item", name = "quality-module-5", amount = 1}
        },
        -- ingredients не указаны, значения будут унаследованы от quality-module-3
    }
})

-- [Technology] --
local technology = table.deepcopy(data.raw["technology"]["quality-module-4"])
technology.name = "quality-module-5"
technology.icon = "__modules-t4-t5__/graphics/technology/quality-module-5.png"
technology.icon_size = 256
technology.order = "i-e-d"
technology.prerequisites = {"quality-module-4"}
technology.effects = {{type = "unlock-recipe", recipe = "quality-module-5"}}
technology.upgrade = true

data:extend({technology})
