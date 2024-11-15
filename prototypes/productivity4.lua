local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["productivity-module-3"])
item.name = "productivity-module-4"
item.icon = "__modules-t4-t5__/graphics/icons/productivity-module-4.png"
item.order = "c[productivity]-d[productivity-module-4]"
item.tier = 4
item.effect =
   {
      productivity = settings.startup["t4-modules-productivity-item-effect-productivity"].value,
      consumption = settings.startup["t4-modules-productivity-item-effect-consumption"].value,
      pollution = settings.startup["t4-modules-productivity-item-effect-pollution"].value,
      speed = settings.startup["t4-modules-productivity-item-effect-speed"].value
   }
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipe = {
   type = "recipe",
   name = "productivity-module-4",
   enabled = false,
   energy_required = 60,
   ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-3", amount = 4 },
   },
   results = {
      { type = "item", name = "productivity-module-4", amount = 1 }
   }
}
data:extend({recipe})

-- [Technology] --
local technology = {
   type = "technology",
   name = "productivity-module-4",
   icon = "__modules-t4-t5__/graphics/technology/productivity-module-4.png",
   icon_size = 256,
   order = "i-e-d",
   prerequisites = {"productivity-module-3"},
   effects = {
      { type = "unlock-recipe", recipe = "productivity-module-4" }
   },
   unit = {
      count = 500,
      ingredients = {
         {"automation-science-pack", 1},
         {"logistic-science-pack", 1},
         {"chemical-science-pack", 1},
         {"production-science-pack", 1},
         {"utility-science-pack", 1},
      },
      time = 60
   },
   upgrade = true
}
data:extend({technology})


if mods["space-age"] then
   table.insert(recipe.ingredients, {type = "item", name = "biter-egg", amount = 1})

   technology.unit.count = 500
   technology.unit.ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"space-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"metallurgic-science-pack", 1},
   }
end


-- {"agricultural-science-pack", 1},
-- {"metallurgic-science-pack", 1},
-- {"electromagnetic-science-pack", 1},
-- {"cryogenic-science-pack", 1},
-- {"promethium-science-pack", 1},
