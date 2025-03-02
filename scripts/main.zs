// Create: Food's mixing recipes interfere with Create: Broken Bad ones.
// This script simply removes the Create heated mixing recipe for <water> = <salt>.

import mods.create.MixingManager;

<recipetype:create:mixing>.remove(<item:createfood:salt>);

// CBC's cast iron ingot's recipe interferes with Create Deco's industrial iron ingot's one.
// This script removes the compacting recipe for the cast iron ingot, and replaces it with a mixing one.

<recipetype:create:compacting>.remove(<item:createbigcannons:cast_iron_ingot>);

<recipetype:create:mixing>.addRecipe(
	"cast_iron_ingot",
	<constant:create:heat_condition:heated>,
	[<item:createbigcannons:cast_iron_ingot>],
	[<item:minecraft:iron_ingot>]
);
