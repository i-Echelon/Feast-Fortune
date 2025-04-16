-- This file is for you to create your own menu, for advanced users or if you do not wish to modify the original (House) Recipe Book
-- If the table is valid it will load as default Recipe Book, if invalid auto fallbacks to the House Recipe Book
-- check House-Recipes_template and readme in DOCS folder for complete instructions

--[[EXAMPLE 

return {
    {
        Order = 100,
        Ingredients = { "BREAD", "MEAT" },
        Category = "good" --make sure you have a tag that is being enabled and loaded in top of menu.helper.lua else trouble
    },
	--AND OR (dont forget to use commas where necessary)
    {
        Order = 101,
        Ingredients = { MEAT = 3, "FISH", COMMON_WARES = 1 },
		Output = { MEAL = 2 },
        Category = { "great", "yourTag" } --make sure you have a tag that is being enabled and loaded in top of menu.helper.lua else trouble
    },

}

--]]


--[[

return {

-- your recipes here

}

--]]