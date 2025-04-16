-- By  @Echelon
-- Example Tavern Meal Recipe Template
-- Append to in Recipe-Book/my_recipes.lua or ur_recipes.lua and modify as needed


{			--Documented Recipe with mandatory & optional properties

	-- Required: order number for recipe ID generation and sorting
	Order = 1, --avoid using number already used START AT 200 or can be string "A1"

	-- Optional: localized display name
	-- If omitted, auto-generates key: "KITCHEN_RECIPE_<Order>_NAME"
	Name = "KITCHEN_RECIPE_1_NAME",

	-- Ingredients support 3 styles:
	Ingredients = {
		"FISH",                                 -- Simple string (Quantity = 1, Storage = 30)
		{ Id = "VEGETABLES", Quantity = 2 },    -- Full format with quantity
		HERBS = 3,                              -- Shorthand format: RESOURCE = Quantity
		COMMON_WARES = 2                        -- Will disable default common wares
},

	-- Optional: set to false to avoid adding 1 COMMON_WARES automatically
	IncludeCommonWares = false,

	-- Optional: output in shorthand
	Output = { MEAL3 = 2 },

	-- OR use full output format:
	-- Output = {
	--     { Id = "MEAL3", Quantity = 2 },
	--     { Id = "WINE", Quantity = 1 } -- Multiple outputs supported
	-- },

	-- Optional: override happiness factor directly (else uses Category default)
	HappinessFactor = "HAPPINESS_FACTOR_GREAT_MEAL",

	-- Required: one or more category tags
	-- First tag determines default Output + Happiness if not overridden
	Category = { "great", "yourTag" }
}


{				-- Detailed Example Recipe
	Order = 98,
	Name = "KITCHEN_RECIPE_1_NAME",
	Ingredients = {
		"FISH",
		{ Id = "VEGETABLES", Quantity = 2 },
		HERBS = 3,
		COMMON_WARES = 2
	},
	IncludeCommonWares = false,
	Output = { MEAL3 = 2 },
	HappinessFactor = "HAPPINESS_FACTOR_GREAT_MEAL",
	Category = { "great", "defaultSelection" }
}

				-- Minimal Example Recipe
{ Order = 555, Ingredients = { "FISH", COMMON_WARES = 2 }, Category = { "good" } }