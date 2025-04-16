------------------------------------ SOUPS & STEWS DLC: Feast & Fortune
return {

	{ --Peasant’s Broth
	Order = 32,
	Ingredients = { "WATER", "VEGETABLES" },
	Output = { MEAL_POOR = 2, },
	Category = { "poor", "Echelon" }
	},

	{ --Herbal Soup
	Order = 33,
	Ingredients = { "WATER", "HERBS", "BREAD" },
	Category = { "good", "Echelon" }
	},

	{ --Fisherman’s Stew Supreme
	Order = 34,
	Ingredients = { "WATER", "FISH", "VEGETABLES", "HERBS", ["COMMON_WARES"] = 2 },
	Output = { MEAL_GREAT = 2, },
	Category = "great"
	},

	{ --Hearty Boar Stew
	Order = 35,
	Ingredients = { "WATER", "BOAR", "VEGETABLES" },
	Category = "hearty"
	},

	{ --Stone Pot Feast
	Order = 36,
	Ingredients = { "WATER", "MEAT", "HERBS", "BREAD", ["COMMON_WARES"] = 2 },
	Output = { MEAL_SPLENDID = 2, },
	Category = { "splendid", "Echelon" }
	},

	{ --Festival Stew
	Order = 37,
	Ingredients = { "WATER", "WHEAT", "FISH", "GRAPES" },
	Category = "hearty"
	},

	{ --Dawnshire Porridge
	Order = 38,
	Ingredients = { "WATER", "MILK", "HONEY", "WHEAT" },
	Category = "great"
	},

	{ --Berrywater Blend
	Order = 39,
	Ingredients = { "WATER", "BERRIES", "HONEY" },
	IncludeCommonWares = false,
	Category = "decent"
	},

	{ --Warden’s Rest
	Order = 40,
	Ingredients = { "WATER", "BOAR", "MEAT", "HERBS" },
	Output = { MEAL_HEARTY = 2, },
	Category = "hearty"
	},

	{ --Seer’s Simmerpot
	Order = 41,
	Ingredients = { "WATER", "FLOUR", "HERBS", "CHEESE", ["COMMON_WARES"] = 2 },
	Output = { MEAL_SPLENDID = 2, },
	Category = "splendid"
	},

	{ --Abbey Cauldron Stew
	Order = 42,
	Ingredients = { "WATER", "FISH", "VEGETABLES", "MILK" },
	Category = "great"
	},

	{ --Witch’s Brew
	Order = 43,
	Ingredients = { "WATER", "HERBS", "GRAPES", "CHEESE" },
	Category = { "great", "Echelon" }
	},

	{ --Divine Cauldron
	Order = 44,
	Ingredients = { "WATER", "FISH", "MEAT", "CHEESE", "VEGETABLES", "HERBS", ["COMMON_WARES"] = 5 },
	Output = { MEAL_DIVINE = 2 },
	Category = { "divine", "buffet" }
	},

	{ --Boiled Bounty
	Order = 45,
	Ingredients = { "WATER", "WHEAT", "CHEESE", "HONEY" },
	Category = "great"
	},

	{ --Drunkard's Stew
	Order = 46,
	Ingredients = { "WATER", "BEER", "MEAT", "VEGETABLES" },
	Category = { "hearty", "Echelon" }
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