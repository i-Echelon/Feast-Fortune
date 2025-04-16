# 🍽️ Feast & Fortune: - Quick Modding Guide

This mod lets you expand your Tavern with tiered meals, custom outputs, new happiness factors, and a smart recipe framework.

## 📦 File Structure

```
Feast & Fortune/
├── mod.lua		                 #(main init)
│
├── localization/
│	└──lang      	     		 #(localization files)
│
├── Mod-Config.lua               #(config file)
├── Recipe Book/
│   ├── House_recipes.lua        #(default recipes)
│   ├── Your_Recipes.lua         #(optional user recipes)
│   └── DLC/
│       └── Soups & Stews.lua    #(optional DLC Recipe books)
├── DOCS/
│   ├── recipes_template.lua     #(sample documented recipe)
│   └── Meal_Tiers.md            #(meal tier reference table)
│
└── MODULES						 #(mod logic - advance users only)
	
```

## ✨ Features

- Tiered meals: Standard → Divine
- Custom outputs: MEAL, MEAL2, ..., MEAL7
- Dynamic happiness boosts
- Auto-decay with customizable durations
- Multiple ways to define ingredients and output
- Categories for toggling recipe groups
- Fully modular, fully documented

## 🧰 Adding a Recipe (Quick Start)

1. Open `Recipe-Book/House-Recipes.lua`
2. Refer to the template from `DOCS/Recipe-Book_template.lua`
3. Update the fields:

```lua
{
    Order = 21,
    Ingredients = {
        "BREAD",
        HONEY = 1,
        COMMON_WARES = 2
    },
    Output = { MEAL2 = 2 },
    Category = { "good", "default" }
}
```

4. Reload your mod. If the category is enabled to true in `Mod-Config.lua`, and the recipe has the [category-tag], the new recipe will appear in the Tavern.

## 🧠 Tips

- `Order` must be unique for each recipe. try to use numbers in the high hundreds as 1 - 200 is reserved. you can also use strings like Order = "A1"
- Output and happiness will fallback based on category if not defined.
- COMMON_WARES is added by default unless disabled or manually added.
- You can tag a recipe with multiple categories (e.g. `"divine", "default", "yourTag"`).

## 🛠 Customization

In `Config.lua`, you can:

- Change default input storage
- Map categories to output resources and happiness factors
- Enable/disable entire recipe groups


---

## 🧩 Custom Recipe Overrides (Your-Recipes.lua) can be toggled on in the Config.lua; disabled by default

You can create your own recipe set without editing the mod’s defaults.

1. Create a file at: (one is already bundled and preloaded)
```
../Recipe-Book/Your-Recipes.lua
```

2. Copy the format from:
```
DOCS/recipes_template.lua
```

3. Your file should return a list of recipe tables:
```lua
return {
    {
        Order = 555,
        Ingredients = { "MEAT", COMMON_WARES = 2 },
        Category = { "great" }
    }
}
```
set "UseUserRecipes = true" in the top of bin/help_recipe.lua
If `Your-Recipes.lua` exists and is valid, it will override the default recipes from `Recipe-Book/House-Recipes.lua`.

To restore the original recipes, just set "UseUserRecipes = false" in the top of the Config.lua

**If you toggle off a recipe that you kitchen is currently producing, you will not be able to click the kitchen until you load the save with the recipe enabled, and then change the kitchen function/recipe or delete the kitchen.**
**If you toggle off a recipe that you kitchen is currently producing, you will not be able to click the kitchen until you load the save with the recipe enabled, and then change the kitchen function/recipe or delete the kitchen.**
