local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["quality-module-3"])
item.name = "quality-module-4"
item.icon = "__modules-t4-t5__/graphics/icons/quality-module-4.png"
item.order = "d[quality]-d[quality-module-4]"
item.tier = 4
item.effect =
   {
   quality = settings.startup["t4-modules-quality-item-effect-quality"].value,
   speed = settings.startup["t4-modules-quality-item-effect-speed"].value
   }
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipe = {
   type = "recipe",
   name = "quality-module-4",
   enabled = false,
   energy_required = 60,
   ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "superconductor", amount = 1 },
      { type = "item", name = "quality-module-3", amount = 4 },
   },
   results = {
      { type = "item", name = "quality-module-4", amount = 1 }
   }
}
data:extend({recipe})

-- [Technology] --
local technology = {
   type = "technology",
   name = "quality-module-4",
   icon = "__modules-t4-t5__/graphics/technology/quality-module-4.png",
   icon_size = 256,
   order = "i-e-d",
   prerequisites = {"quality-module-3"},
   effects = {
      { type = "unlock-recipe", recipe = "quality-module-4" }
   },
   unit = {
      count = 2000,
      ingredients = {
         {"automation-science-pack", 1},
         {"logistic-science-pack", 1},
         {"chemical-science-pack", 1},
         {"space-science-pack", 1},
         {"electromagnetic-science-pack", 1},
         {"cryogenic-science-pack", 1},
      },
      time = 60
   },
   upgrade = true
}
data:extend({technology})


-- {"agricultural-science-pack", 1},
-- {"metallurgic-science-pack", 1},
-- {"electromagnetic-science-pack", 1},
-- {"cryogenic-science-pack", 1},
-- {"promethium-science-pack", 1},
