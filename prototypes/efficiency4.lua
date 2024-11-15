local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["efficiency-module-3"])
item.name = "efficiency-module-4"
item.icon = "__modules-t4-t5__/graphics/icons/efficiency-module-4.png"
item.order = "c[efficiency]-d[efficiency-module-4]"
item.tier = 4
item.effect =
   {
      consumption = settings.startup["t4-modules-efficiency-item-effect-consumption"].value
   }
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipe = {
   type = "recipe",
   name = "efficiency-module-4",
   enabled = false,
   energy_required = 60,
   ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 4 },
   },
   results = {
      { type = "item", name = "efficiency-module-4", amount = 1 }
   }
}
data:extend({recipe})

-- [Technology] --
local technology = {
   type = "technology",
   name = "efficiency-module-4",
   icon = "__modules-t4-t5__/graphics/technology/efficiency-module-4.png",
   icon_size = 256,
   order = "i-g-d",
   prerequisites = {"efficiency-module-3"},
   effects = {
      { type = "unlock-recipe", recipe = "efficiency-module-4" }
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
   table.insert(recipe.ingredients, {type = "item", name = "spoilage", amount = 5})

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
