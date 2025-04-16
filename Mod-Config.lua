--------------------------------------------------
-- Feast & Fortune Mod - CONFIGURATION FILE
--------------------------------------------------
-- Edit this file to customize your kitchen recipes, books, and settings.
-- This is the ONLY file you need to modify for basic configuration.
--
-- IMPORTANT SETTINGS:
-- UserRecipeBook: 		Set to true to use your custom Your-Recipes.lua file
--                 		Set to false to use the default House-Recipes.lua (false by default)
--
-- Soups & Stews DLC:   Set to true to enable the additional Soups & Stews Recipe Book
--                 		Set to false to disable these recipes (true by default)
--
-- EnabledCategories: 
--    					Set ALL = true to enable ALL recipes regardless of tags 
--						(will load all from whatever Recipe Books are enabled.)
--    					Or selectively enable specific recipe categories

-- Config for debugging & Log Level:
--							0 = none → No logs
--							1 = critical only → Show only the most important messages
--							2 = normal → Default messages (e.g. successful loads)
--							3 = verbose → Debugging info (e.g. how many recipes skipped)
--------------------------------------------------

local config = { --! Main Recipe Book Config !

    UserRecipeBook = false,   -- Set to true to load User's Custom Recipe Book: (Your-Recipes.lua), false or error will load mod's Base Recipe Book: (House-Recipes.lua)
    SoupStewsBook  = true,     -- Enable Soups & Stews Recipe Book (Soups-Stews.lua)
	
	EnableLogging  = true,     -- Set to false to disable most logging
	LogLevel = 2,  		 	  -- 0=none, 1=critical only, 2=normal, 3=verbose	  
}

-- Recipe Category Tags Config -- Set to true to enable any meals with these tags (if hearty category is true and all are false, then only meals with hearty tag get registered. Can mix & match)
config.EnabledCategories = {  -- you can use tags across all the Recipe Books that exist
	ALL      = false, 	 -- will load all recipes from enabled Recipe Books above
    poor     = false,
    decent   = false,	     -- slightly less than Tavern meal quality
    good     = false,      -- close to vanilla difficulty for ingredients
    great    = false,
    hearty   = false,
    splendid = false,
    divine   = false,
    buffet   = false,		-- t7 (soft tag, event-style)
    rustic   = false,		--soft
    refined  = false,		--soft
    yourTag  = false,		-- curated
    default  = false,		-- or whatever
    Echelon  = true,		-- Author's Choice (1-3 recipes of per quality) :default set true to for House Recipe Book starting recipes
}

-- Default Resource Settings  		--(these are fallback settins if a recipe doesnt define a custom one.
	config.DEFAULT_STORAGE = 30 										-- input storage (of each ingredient) in every kitchen.
	config.DEFAULT_OUTPUT_RESOURCE = "MEAL" 							-- default meal if not defined is vanilla tavern meal(decent Quality)
	config.DEFAULT_OUTPUT_QUANTITY = 1									-- the output amount of a single cycle.
	config.DEFAULT_HAPPINESS = "HAPPINESS_FACTOR_TAVERN_MEAL"   		-- the vanilla factor boost and duration of 20% and 120 seconds.
	config.DEFAULT_WORKER_RATIO = 0.2 									--worker capacity is 30% of building's total size.
	config.DEFAULT_STORAGE_RATIO = 5.0 									--output storage capacity = StorageRatioFromCapacity x Building Size.
	config.COMMON_WARES = {Resource = "COMMON_WARES", Quantity = 1}  	--each recipe will require 1 common wares unless "IncludeCommonWares = false"..
																        -- ..is set in the recipe or a custom amount is given.
-- Meal Quality Definitions
config.mealQuality = { --for advanced users; don't touch unless you know what you're doing.
    { id = "MEAL_POOR", name = "MEAL_POOR_NAME" }, 
    { id = "MEAL_DECENT", name = "MEAL_DECENT_NAME" }, 
    { id = "MEAL_GOOD", name = "MEAL_GOOD_NAME" }, 
    { id = "MEAL_GREAT", name = "MEAL_GREAT_NAME" },
    { id = "MEAL_HEARTY", name = "MEAL_HEARTY_NAME" },
    { id = "MEAL_SPLENDID", name = "MEAL_SPLENDID_NAME" },
    { id = "MEAL_DIVINE", name = "MEAL_DIVINE_NAME" }
--  { id = "MEAL_XXX", name = "MEAL_XXX_NAME", icon = "ICON_XXX_MEAL" } -- (no custom icons yet, need artist)
}

-- Define Output by Meal Quality
config.OutputByCategory = { -- auto determines the ouput quality of the meal, when a recipe has their (mandatory) matching tag
    poor   = "MEAL_POOR",
    decent   = "MEAL_DECENT",
    good     = "MEAL_GOOD",
    great    = "MEAL_GREAT",
    hearty   = "MEAL_HEARTY",
    splendid   = "MEAL_SPLENDID",
    divine   = "MEAL_DIVINE",
    --default  =  "MEAL_BLAH", 
}

-- Associate Meal Quality to Happiness Factor
config.HappinessByCategory = {  --these determine the happiness factor the villager recieves after eating that type of meal.
    poor = "HAPPINESS_FACTOR_POOR_MEAL",
    decent = "HAPPINESS_FACTOR_DECENT_MEAL",
    good = "HAPPINESS_FACTOR_GOOD_MEAL",
    hearty = "HAPPINESS_FACTOR_HEARTY_MEAL", 
    great = "HAPPINESS_FACTOR_GREAT_MEAL",
    splendid = "HAPPINESS_FACTOR_SPLENDID_MEAL",
    divine = "HAPPINESS_FACTOR_DIVINE_MEAL"
}
-- Happiness Factor Settings (customizable)
config.HappinessFactors = {
		{-- Poor Meal
	id = "HAPPINESS_FACTOR_POOR_MEAL", 
	name = "HAPPINESS_FACTOR_POOR_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_POOR_MEAL_DESC",
	boostPercent = 5, 
	boostDuration = 100.0, 
	decayRate = 10.0,
	icon = "ICON_RESOURCE_MEAL"
	},
	{--Decent Meal (base equivalent to vanilla Tavern Meal)
	id = "HAPPINESS_FACTOR_DECENT_MEAL", 				--id of the meal(quality) :baseline
	name = "HAPPINESS_FACTOR_DECENT_MEAL_NAME", 		--localized name for meal(quality)
	desc = "HAPPINESS_FACTOR_DECENT_MEAL_DESC",			--localized description of the meal
	boostPercent = 10, 									--the happiness % recieved after eating the meal
	boostDuration = 120.0, 								--happiness boost duration before decay starts
	decayRate = 9.0,									--speed of the decaying rate
	icon = "ICON_RESOURCE_MEAL"							--vanilla's tavern meal icon
	},
	{-- Good Meal
	id = "HAPPINESS_FACTOR_GOOD_MEAL", 
	name = "HAPPINESS_FACTOR_GOOD_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_GOOD_MEAL_DESC",
	boostPercent = 15, 
	boostDuration = 135.0, 
	decayRate = 8.0,
	icon = "ICON_RESOURCE_MEAL"
	},
	{-- Great Meal
	id = "HAPPINESS_FACTOR_GREAT_MEAL", 
	name = "HAPPINESS_FACTOR_GREAT_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_GREAT_MEAL_DESC",
	boostPercent = 20, 
	boostDuration = 150.0, 
	decayRate = 7.0,
	icon = "ICON_RESOURCE_MEAL"
	},
	{-- Hearty Meal
	id = "HAPPINESS_FACTOR_HEARTY_MEAL", 
	name = "HAPPINESS_FACTOR_HEARTY_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_HEARTY_MEAL_DESC",
	boostPercent = 30, 
	boostDuration = 165.0, 
	decayRate = 6.0,
	icon = "ICON_RESOURCE_MEAL"
	},
	{-- Splendid Meal
	id = "HAPPINESS_FACTOR_SPLENDID_MEAL", 
	name = "HAPPINESS_FACTOR_SPLENDID_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_SPLENDID_MEAL_DESC",
	boostPercent = 45, 
	boostDuration = 180.0, 
	decayRate = 5.0,
	icon = "ICON_RESOURCE_MEAL"
	},
	{-- Divine Meal
	id = "HAPPINESS_FACTOR_DIVINE_MEAL", 
	name = "HAPPINESS_FACTOR_DIVINE_MEAL_NAME", 
	desc = "HAPPINESS_FACTOR_DIVINE_MEAL_DESC",
	boostPercent = 60, 
	boostDuration = 195.0, 
	decayRate = 4.0,
	icon = "ICON_RESOURCE_MEAL"
	}
}

return config