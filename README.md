# Feast-Fortune

Enhance your medieval settlement with currently 45 delicious new recipes for a new expanded Tavern Kitchen. {Unlockable via progression}  
From simple meals for commoners to divine feasts fit for royalty, this mod adds variety and flavor to your villager's dining experience.
By default, the mod enables the Chef's Personal Picks. You can also Create your own recipes and share with other users. 
What's your favorite recipe?

                                                    Recipe Menu 
Poor Meals   5% Boost
Poor Man's Meal - Bread, Berries
Peasant's Broth - Water, Vegetables
Decent Meals   10% Boost
Boar & Cheese Platter - Boar, Cheese
Fisherman's Delight - Fish, Bread
Berrywater Blend - Water, Berries, Honey
Good Meals    15%
Seafarer's Stew - Fish, Vegetables
Hunter's Harvest - Meat, Vegetables
Cheesy Delight - Cheese, Bread
Vintner's Supper - Wine, Bread, Cheese
Fisher's Vineyard Plate - Fish, Grapes
Herbal Soup - Water, Herbs, Bread
Hearty Meals  20%
Hearty Breadboard Trio - Bread, Cheese, Meat
Tavern Special Stew - Meat, Berries, Herbs
Fisherman's Pie - Fish, Flour, Vegetables
Boar & Bean Feast - Boar, Flour, Honey (Produces 2 meals)
Savory Herb-Crusted Roast - Meat, Herbs
Boar & Brie Platter - Boar, Hop, Cheese
Hunter's Harvest - Boar, Fish, Vegetables, Beer
Hearty Boar Stew - Water, Boar, Vegetables
Festival Stew - Water, Wheat, Fish, Grapes
Warden's Rest - Water, Boar, Meat, Herbs
Drunkard's Stew - Water, Beer, Meat, Vegetables
Great Meals  35%
Forest Fruit Medley - Berries, Grapes, Herbs
Sweetherb Pastry - Flour, Honey, Herbs
Glazed Boar Bites - Boar, Honey
Creamy Grain Porridge - Wheat (x2), Milk
Wheat Porridge - Wheat, Milk, Honey
Sweetbread Delight - Bread, Honey
Berry Brew Breakfast - Berry Brew, Bread, Milk
Dawnfield Breakfast - Wheat, Milk, Cheese, Berries
Fisherman's Stew Supreme - Water, Fish, Vegetables, Herbs, Common Wares (x2)
Dawnshire Porridge - Water, Milk, Honey, Wheat
Abbey Cauldron Stew - Water, Fish, Vegetables, Milk
Witch's Brew - Water, Herbs, Grapes, Cheese
Boiled Bounty - Water, Wheat, Cheese, Honey
Splendid Meals  45%
Beer-Battered Fish - Fish, Beer, Flour
Sweet Cheese Platter - Cheese, Honey, Grapes
Wild Game Roast - Boar, Herbs, Vegetables (Produces 2 meals)
Festival Platter - Cheese, Grapes, Wine
Forager's Feast - Berry Brew, Vegetables, Bread
Golden Hearth Platter - Bread, Flour, Meat, Honey, Grapes
Stone Pot Feast - Water, Meat, Herbs, Bread, Common Wares (x2)
Seer's Simmerpot - Water, Flour, Herbs, Cheese, Common Wares (x2)
Divine Meals  60% Boost
King's Table Special - Meat (x2), Cheese (x2), Bread (x2), Wine (x2), Common Wares (x3)
Grand Banquet - Boar, Fish, Vegetables, Wine, Herbs, Cheese, Common Wares (x5) (Produces 2 meals)
Divine Cauldron - Water, Fish, Meat, Cheese, Vegetables, Herbs, Common Wares (x5) (Produces 2 meals)

Special Collections

Author's Collection  (default menu)

Poor Man's Meal
Peasant's Broth
Fisherman's Delight
Hunter's Harvest
Creamy Grain Porridge
Berry Brew Breakfast
King's Table Special
Golden Hearth Platter
Herbal Soup
Stone Pot Feast
Witch's Brew
Drunkard's Stew
Buffet Meals
Wild Game Roast
Grand Banquet
Divine Cauldron
-French, Spanish, Russian, & German Menus included.
Note* Some Recipes output 2 meals!
-You can enable more, all or less meals by quality or tag in the Mod-Config.lua

Some Features:
Now unlocked via Progression. Tier 4 Labour Estate. Standard cost to unlock.


Add your own tags like "yourName" or "eventOnly" and assign recipes to them.

Happiness Boost % and Decay Rate is based on Meal Quality. (Both Configurable in Mod-Config.lua)

Output defaults to category-based resources, e.g. HEARTY MEAL for a meal tagged "hearty"

Common Wares are injected automatically as an ingredient unless manually specified per assignable(configurable)

Pre-Bundled with a user.recipes.lua for overriding default menu and defining your recipes.
Custom output resources per meal tier (MEAL, MEAL2, RESOURCE, ...)
New happiness factors per meal type, with decay, and morale scaling
Cups & Bowls support (automatic or manual, with quantity control)
Flexible input formats for recipe ingredients and outputs
Buffet-style recipes for special events like the King’s Visit
Localization-ready names and descriptions
Languages currently supported: English, German, French, Russian, Spanish . more if requested of feel free to submit.

Customizing the Mod = Mod-Config Preview 

Mod is fully tweakable via Mod-Config.lua
DOCS folder has much detailed information and a template for you just fill in. If it has a single recipe, the mod will load that instead of default.
This option is disabled by default. You must enable UserRecipes = true in bin/help_recipes.lua

You can add recipes directly to House-Recipes.lua. Entries should be structured as so:



{ Order = 555, Ingredients = { "FISH", COMMON_WARES = 2 }, Category = { "good" } }

Further Customization - you can enable, disable and define tags
For instance you can have only the meals tagged with Good, or Great added to the game.
You can add soft tags to each recipe and then make sure it's in the list with a boolean.

Enable/disable categories tags using:

local EnabledCategories = {
    poor
    decent               -- slightly less boost than vanilla meal
    good = true,       --close to vanilla difficulty
    great = true,
    hearty  = false, 
    splendid = false, 
     divine = false,
    -- etc.
}



Recommemed Mod(s): Needy Villagers, Storage+, Meaningful Trade, Bread Overhaul
❗Warning:❗
It is not safe to disable a recipe in the config that you have a kitchen currently producing.
Change function/recipe first and then remove the recipe & reload. There is no other workaround by game design.
No known conflicts, or bugs.
Report feedback on balance.

UPCOMING FEATURES

I'm listening... Also accepting all criticism and suggestions how to improve this mod! 
Credits: @Mino Tech Support, @Tazmanyak  Quality Assurance. 
