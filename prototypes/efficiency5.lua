local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["efficiency-module-3"])
item.name = "efficiency-module-5"
item.icon = "__modules-t4-t5__/graphics/icons/efficiency-module-5.png"
item.order = "c[efficiency]-d[efficiency-module-5]"
item.tier = 5
item.effect =
   {
      consumption = settings.startup["t5-modules-efficiency-item-effect-consumption"].value
   }
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipe = {
   type = "recipe",
   name = "efficiency-module-5",
   enabled = false,
   energy_required = 60,
   ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-4", amount = 4 },
   },
   results = {
      { type = "item", name = "efficiency-module-5", amount = 1 }
   }
}
data:extend({recipe})

-- [Technology] --
local technology = {
   type = "technology",
   name = "efficiency-module-5",
   icon = "__modules-t4-t5__/graphics/technology/efficiency-module-5.png",
   icon_size = 256,
   order = "i-g-d",
   prerequisites = {"efficiency-module-4"},
   effects = {
      { type = "unlock-recipe", recipe = "efficiency-module-5" }
   },
   unit = {
      count = 750,
      ingredients = {
         {"automation-science-pack", 1},
         {"logistic-science-pack", 1},
         {"chemical-science-pack", 1},
         {"production-science-pack", 1},
         {"utility-science-pack", 1},
         {"space-science-pack", 1},
      },
      time = 60
   },
   upgrade = true
}
data:extend({technology})

if mods["space-age"] and mods["SpaceAgeWithoutSpace"] then
   table.insert(recipe.ingredients, {type = "item", name = "spoilage", amount = 5})

   technology.unit.count = 750
   technology.unit.ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"electromagnetic-science-pack", 1},
   }
end

if mods["space-age"] and not mods["SpaceAgeWithoutSpace"] then
   table.insert(recipe.ingredients, {type = "item", name = "spoilage", amount = 5})

   technology.unit.count = 750
   technology.unit.ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"space-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"electromagnetic-science-pack", 1},
   }
end


-- {"agricultural-science-pack", 1},
-- {"metallurgic-science-pack", 1},
-- {"electromagnetic-science-pack", 1},
-- {"cryogenic-science-pack", 1},
-- {"promethium-science-pack", 1},
