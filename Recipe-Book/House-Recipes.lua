--                  House Recipe Book Menu by @Bugatti_Echelon                                     ==
--           Define your modular kitchen recipes here.                                             ==
-- The first recipe MUST override the default recipe, and its Id stays "BUILDING_FUNCTION_KITCHEN" ==
--===================================================================================================

return {

	{ --Boar & Cheese Platter
	Order = 1,                        --1st index (Original Recipe) is overridAsset , else registerAsset
	Ingredients = { "BOAR", "CHEESE" },
	Category = "decent",
	IncludeCommonWares = false,
	},

	{ --Fisherman's Delight
	Order = 2,
	Ingredients = { "FISH", "BREAD" },
	IncludeCommonWares = false,
	Category = { "decent", "Echelon"}
	},

	{ --Hearty Breadboard Trio
	Order = 3,
	Ingredients = { "BREAD", "CHEESE", "MEAT" },
	IncludeCommonWares = false,
	Category = "hearty"
	},

	{ --Seafarer's Stew
	Order = 4,
	Ingredients = { "FISH", "VEGETABLES" },
	Category = "good"
	},

	{ --Hunter's Harvest
	Order = 5,
	Ingredients = { "MEAT", "VEGETABLES" },
	Category = { "good", "Echelon" }
	},

	{ --Forest Fruit Medley
	Order = 6,
	Ingredients = { "BERRIES", "GRAPES", "HERBS" },
	Category = "great"
	},

	{--Sweetherb Pastry
	Order = 7, 
	Ingredients = { "FLOUR", "HONEY", "HERBS" },
	IncludeCommonWares = false,
	Category = "great"
	},

	{ --Glazed Boar Bites
	Order = 8,
	Ingredients = { "BOAR", "HONEY" },
	Category = "great"
	},

	{ --Creamy Grain Porridge
	Order = 9,
	Ingredients = { ["WHEAT"] = 2, "MILK" },
	Category = { "great", "Echelon" }
	},

	{ --"Beer-Battered Fish
	Order = 10,
	Ingredients = { "FISH", "BEER", "FLOUR" },
	Output = { MEAL_SPLENDID = 2, },
	Category = "splendid"
	},

	{ --Sweet Cheese Platter
	Order = 11,
	Ingredients = { "CHEESE", "HONEY", "GRAPES" },
	Category = "splendid"
	},

	{--Wild Game Roast
	Order = 12, 
	Ingredients = { "BOAR", "HERBS", "VEGETABLES" },
	Output = { MEAL_SPLENDID = 2, },
	Category = { "splendid", "buffet" } 
	},

	{--Wheat Porridge
	Order = 13, 
	Ingredients = { "WHEAT", "MILK", "HONEY" },
	Category = "great"
	},

	{--Tavern Special Stew
	Order = 14, 
	Ingredients = { "MEAT", "BERRIES", "HERBS" },
	Category = "hearty"
	},

	{--Festival Platter
	Order = 15, 
	Ingredients = { "CHEESE", "GRAPES", "WINE" },
	Category = "splendid"
	},

	{ --Berry Brew Breakfast
	Order = 16,
	Ingredients = { "BERRY_BREW", "BREAD", "MILK" },
	Output = { MEAL_HEARTY = 2, },
	Category = { "hearty", "Echelon" }
	},

	{ -- Cheesy Delight
	Order = 17,
	Ingredients = { "CHEESE", "BREAD" },
	IncludeCommonWares = false,
	Category = "good"
	},

	{ --Fisherman’s Pie
	Order = 18,
	Ingredients = { "FISH", "FLOUR", "VEGETABLES" },
	Category = "hearty"
	},

	{ --Boar & Bean Feast
	Order = 19,
	Ingredients = { "BOAR", "FLOUR", "HONEY" },
	Output = { MEAL_HEARTY = 2, },
	Category = "hearty"
	},

	{ --Vintner’s Supper
	Order = 20,
	Ingredients = { "WINE", "BREAD", "CHEESE" },
	Category = "good"
	},

	{ --Sweetbread Delight
	Order = 21,
	Ingredients = { "BREAD", "HONEY" },
	Happiness = "HAPPINESS_FACTOR_MEAL_GREAT",
	Category = "great"
	},

	{ --Savory Herb-Crusted Roast
	Order = 22,
	Ingredients = { "MEAT", "HERBS" },
	Category = "hearty"
	},

	{ --Fisher’s Vineyard Plate
	Order = 23,
	Ingredients = { "FISH", "GRAPES" },
	Category = "good"
	},

	{ --Boar & Brie Platter
	Order = 24,
	Ingredients = { "BOAR", "HOP", "CHEESE" },
	Category = "hearty"
	},

	{ --Forager’s Feast
	Order = 25,
	Ingredients = { "BERRY_BREW", "VEGETABLES", "BREAD" },
	Category = "splendid"
	},

	{ --King’s Table Special
	Order = 26,
	Ingredients = {MEAT = 2, CHEESE = 2, BREAD = 2, WINE = 2, ["COMMON_WARES"] = 3},
	Output = { MEAL_DIVINE = 2, },
	Category = { "divine", "Echelon"}
	},

	{ --Hunter’s Harvest
	Order = 27,
	Ingredients = { "BOAR", "FISH", "VEGETABLES", "BEER" },
	Output = { MEAL = 2, },
	Category = "hearty"
	},

	{ --Dawnfield Breakfast
	Order = 28,
	Ingredients = { "WHEAT", "MILK", "CHEESE", "BERRIES" },
	Category = "great"
	},

	{ --Golden Hearth Platter
	Order = 29,
	Ingredients = { "BREAD", "FLOUR", "MEAT", "HONEY", "GRAPES", ["COMMON_WARES"] = 2 },
	Output = { MEAL_SPLENDID = 2, },
	Category = { "splendid", "Echelon" }
	},

	{ --Grand Banquet
	Order = 30,
	Ingredients = { "BOAR", "FISH", "VEGETABLES", "WINE", "HERBS", "CHEESE", ["COMMON_WARES"] = 5 },
	Output = { MEAL_DIVINE = 2, },
	Category = { "divine", "buffet" }
	},

	{ --Poor Man's Meal
	Order = 31,
	Ingredients = {BREAD = 1, BERRIES = 1}, --example of key usage
	Output = { MEAL_POOR = 2, },
	Category = { "poor", "Echelon" },
		IncludeCommonWares = false
	},
}

-- Ingredients/Consumables
--[[
BEER
BERRIES
BERRY_BREW
BOAR
BREAD
CHEESE
COMMON_WARES
FISH
FLOUR
GRAPES
HERBS
HONEY
HOP
MEAL
MEAT
MILK
VEGETABLES
WHEAT
WINE
WATER
WAR_RATION
MONASTIC_SIMPLE_STEW
MONASTIC_GARNISHED_GREENS
MONASTIC_GOLDEN_GRUEL
MONASTIC_ROBUST_ROAST
--]]
