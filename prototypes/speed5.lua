local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["speed-module-3"])
item.name = "speed-module-5"
item.icon = "__modules-t4-t5__/graphics/icons/speed-module-5.png"
item.order = "a[speed]-d[speed-module-5]"
item.tier = 5
item.effect =
   {
      speed = settings.startup["t5-modules-speed-item-effect-speed"].value,
      consumption = settings.startup["t5-modules-speed-item-effect-consumption"].value,
      quality = settings.startup["t5-modules-speed-item-effect-quality"].value
   }
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipe = {
   type = "recipe",
   name = "speed-module-5",
   enabled = false,
   energy_required = 60,
   ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "speed-module-4", amount = 4 },
   },
   results = {
      { type = "item", name = "speed-module-5", amount = 1 }
   }
}
data:extend({recipe})

-- [Technology] --
local technology = {
   type = "technology",
   name = "speed-module-5",
   icon = "__modules-t4-t5__/graphics/technology/speed-module-5.png",
   icon_size = 256,
   order = "i-c-d",
   prerequisites = {"speed-module-4"},
   effects = {
      { type = "unlock-recipe", recipe = "speed-module-5" }
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
   table.insert(recipe.ingredients, {type = "item", name = "tungsten-carbide", amount = 1})

   technology.unit.count = 2000
   technology.unit.ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"electromagnetic-science-pack", 1},
      {"cryogenic-science-pack", 1},
   }
end

if mods["space-age"] and not mods["SpaceAgeWithoutSpace"] then
   table.insert(recipe.ingredients, {type = "item", name = "tungsten-carbide", amount = 1})

   technology.unit.count = 2000
   technology.unit.ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"space-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"electromagnetic-science-pack", 1},
      {"cryogenic-science-pack", 1},
   }
end


-- {"agricultural-science-pack", 1},
-- {"metallurgic-science-pack", 1},
-- {"electromagnetic-science-pack", 1},
-- {"cryogenic-science-pack", 1},
-- {"promethium-science-pack", 1},
