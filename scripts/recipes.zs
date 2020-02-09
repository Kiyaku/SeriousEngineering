import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.magneticraft.CrushingTable;
import mods.magneticraft.SluiceBox;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.DieselHandler;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Blueprint;
import mods.orestages.OreStages;
import mods.ItemStages;
import mods.recipestages.Recipes;
import moretweaker.railcraft.RollingMachine;
import mods.techguns.OreCluster;
import mods.techguns.ChemLab;
import mods.thaumcraft.ArcaneWorkbench;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import mods.techguns.GunStats;
import mods.techguns.ArmorStats;
import mods.chisel.Carving;



// ------------ MINECRAFT -----------------------------
furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<cttinycoal:tiny_charcoal> * 4, <ore:logWood>);
recipes.remove(<minecraft:brewing_stand>);
recipes.addShapeless(<minecraft:torch>, [<ore:stickWood>, <cttinycoal:tiny_coal>, <cttinycoal:tiny_coal>]);
recipes.addShapeless(<minecraft:torch>, [<ore:stickWood>, <cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>]);



// ------------ GEOLOSYS ------------------------------
furnace.remove(<minecraft:iron_ingot>, <geolosys:cluster:0>);				// Iron
furnace.remove(<minecraft:gold_ingot>, <geolosys:cluster:1>);				// Gold
furnace.remove(<immersiveengineering:metal:0>, <geolosys:cluster:2>);		// Copper
furnace.remove(<forestry:ingot_tin>, <geolosys:cluster:3>);					// Tin
furnace.remove(<immersiveengineering:metal:3>, <geolosys:cluster:4>);		// Silver
furnace.remove(<immersiveengineering:metal:2>, <geolosys:cluster:5>);		// Lead
furnace.remove(<immersiveengineering:metal:1>, <geolosys:cluster:6>); 		// Aluminum
furnace.remove(<immersiveengineering:metal:4>, <geolosys:cluster:7>);		// Nickel
furnace.remove(<immersiveengineering:metal:5>, <geolosys:cluster:9>);		// Uranium
furnace.remove(<magneticraft:ingots:14>, <geolosys:cluster:10>);			// Zinc

furnace.addRecipe(<immersiveengineering:metal:29> * 3, <geolosys:cluster:0>, 1);
furnace.addRecipe(<minecraft:gold_nugget> * 3, <geolosys:cluster:1>, 1);
furnace.addRecipe(<immersiveengineering:metal:20> * 3, <geolosys:cluster:2>, 1);
furnace.addRecipe(<magneticraft:nuggets:13> * 3, <geolosys:cluster:3>, 1);
furnace.addRecipe(<immersiveengineering:metal:23> * 3, <geolosys:cluster:4>, 1);
furnace.addRecipe(<immersiveengineering:metal:22> * 3, <geolosys:cluster:5>, 1);
furnace.addRecipe(<immersiveengineering:metal:21> * 3, <geolosys:cluster:6>, 1);
furnace.addRecipe(<immersiveengineering:metal:24> * 3, <geolosys:cluster:7>, 1);
furnace.addRecipe(<immersiveengineering:metal:25> * 3, <geolosys:cluster:9>, 1);
furnace.addRecipe(<magneticraft:nuggets:14> * 3, <geolosys:cluster:10>, 1);



// ------------ RAILCRAFT -----------------------------
JEI.removeAndHide(<railcraft:coke_oven>);
JEI.removeAndHide(<railcraft:coke_oven_red>);
JEI.removeAndHide(<railcraft:blast_furnace>);
JEI.removeAndHide(<railcraft:rock_crusher>);
JEI.removeAndHide(<railcraft:borehead_bronze>);
JEI.removeAndHide(<railcraft:borehead_iron>);
JEI.removeAndHide(<railcraft:borehead_steel>);
JEI.removeAndHide(<railcraft:borehead_diamond>);
JEI.removeAndHide(<railcraft:bore>);
JEI.removeAndHide(<railcraft:steam_turbine>);
JEI.removeAndHide(<railcraft:steam_oven>);
JEI.removeAndHide(<railcraft:boiler_tank_pressure_high>);
JEI.removeAndHide(<railcraft:boiler_tank_pressure_low>);

RollingMachine.remove(<railcraft:plate:0>);
RollingMachine.remove(<railcraft:plate:1>);
RollingMachine.remove(<railcraft:plate:2>);
RollingMachine.remove(<railcraft:plate:3>);
RollingMachine.remove(<railcraft:plate:4>);
RollingMachine.remove(<railcraft:plate:5>);
RollingMachine.remove(<railcraft:plate:6>);
RollingMachine.remove(<railcraft:plate:7>);
RollingMachine.remove(<railcraft:plate:8>);
RollingMachine.remove(<railcraft:plate:9>);
RollingMachine.remove(<railcraft:plate:10>);
RollingMachine.remove(<railcraft:plate:11>);



// ------------ FORESTRY ------------------------------
recipes.removeByRecipeName("forestry:bronze_ingot");
JEI.removeAndHide(<forestry:miner_bag>);
JEI.removeAndHide(<forestry:digger_bag>);
JEI.removeAndHide(<forestry:forester_bag>);
JEI.removeAndHide(<forestry:hunter_bag>);
JEI.removeAndHide(<forestry:adventurer_bag>);
JEI.removeAndHide(<forestry:builder_bag>);
JEI.removeAndHide(<railcraft:backpack_iceman_t1>);
JEI.removeAndHide(<railcraft:backpack_trackman_t1>);
JEI.removeAndHide(<railcraft:backpack_signalman_t1>);
JEI.removeAndHide(<magicbees:backpack_thaumaturge_t1>);
JEI.removeAndHide(<magicbees:backpack_thaumaturge_t1>);

// binnies metal grains

val grainsToMetal = {
    <minecraft:iron_ingot> : <extrabees:misc:6>,
    <minecraft:gold_ingot> : <extrabees:misc:7>,
    <immersiveengineering:metal:3> : <extrabees:misc:8>,
    <immersiveengineering:metal:0> : <extrabees:misc:10>,
    <forestry:ingot_tin> : <extrabees:misc:11>,
    <immersiveengineering:metal:4> : <extrabees:misc:12>,
    <immersiveengineering:metal:2> : <extrabees:misc:13>,
    <magneticraft:ingots:14> : <extrabees:misc:14>
} as IItemStack[IItemStack];


val grainsCounter = 0 as int;

for ingot in grainsToMetal {
	recipes.addShaped(ingot, [
		[grainsToMetal[ingot], grainsToMetal[ingot], grainsToMetal[ingot]], 
		[grainsToMetal[ingot], grainsToMetal[ingot], grainsToMetal[ingot]], 
		[grainsToMetal[ingot], grainsToMetal[ingot], grainsToMetal[ingot]]
	]);
}



// ------------ CRAYFISH FURNITURE --------------------
JEI.removeAndHide(<cfm:crate>);
JEI.removeAndHide(<cfm:crate_spruce>);
JEI.removeAndHide(<cfm:crate_birch>);
JEI.removeAndHide(<cfm:crate_jungle>);
JEI.removeAndHide(<cfm:crate_acacia>);
JEI.removeAndHide(<cfm:crate_dark_oak>);



// ------------ MAGNETICRAFT --------------------------
JEI.removeAndHide(<magneticraft:box>);
JEI.removeAndHide(<magneticraft:water_generator>);
JEI.removeAndHide(<magneticraft:sieve>);
JEI.removeAndHide(<magneticraft:big_combustion_chamber>);
JEI.removeAndHide(<magneticraft:big_electric_furnace>);
JEI.removeAndHide(<magneticraft:hydraulic_press>);
JEI.removeAndHide(<magneticraft:solar_mirror>);
JEI.removeAndHide(<magneticraft:solar_tower>);
JEI.removeAndHide(<magneticraft:grinder>);
JEI.removeAndHide(<magneticraft:steam_turbine>);
JEI.removeAndHide(<magneticraft:solar_panel>);
JEI.removeAndHide(<magneticraft:pumpjack>);
JEI.removeAndHide(<magneticraft:oil_heater>);
JEI.removeAndHide(<magneticraft:refinery>);
JEI.removeAndHide(<magneticraft:big_steam_boiler>);
JEI.removeAndHide(<magneticraft:steam_engine>);
JEI.removeAndHide(<magneticraft:combustion_chamber>);


CrushingTable.removeRecipe(<minecraft:iron_ore>);
CrushingTable.removeRecipe(<minecraft:gold_ore>);
CrushingTable.removeRecipe(<forestry:resources:1>);
CrushingTable.removeRecipe(<forestry:resources:2>);

CrushingTable.addRecipe(<geolosys:cluster:0>, <magneticraft:rocky_chunks:0>, true);
CrushingTable.addRecipe(<geolosys:cluster:1>, <magneticraft:rocky_chunks:1>, true);
CrushingTable.addRecipe(<geolosys:cluster:2>, <magneticraft:rocky_chunks:2>, true);
CrushingTable.addRecipe(<geolosys:cluster:3>, <magneticraft:rocky_chunks:13>, true);
CrushingTable.addRecipe(<geolosys:cluster:4>, <magneticraft:rocky_chunks:12>, true);
CrushingTable.addRecipe(<geolosys:cluster:5>, <magneticraft:rocky_chunks:3>, true);
CrushingTable.addRecipe(<geolosys:cluster:6>, <magneticraft:rocky_chunks:7>, true);
CrushingTable.addRecipe(<geolosys:cluster:7>, <magneticraft:rocky_chunks:10>, true);

CrushingTable.addRecipe(<thaumcraft:stone_porous>, <thaumcraft:crystal_essence>, false);

CrushingTable.addRecipe(<contenttweaker:geode_aer>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), false);
CrushingTable.addRecipe(<contenttweaker:geode_aqua>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), false);
CrushingTable.addRecipe(<contenttweaker:geode_ignis>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), false);
CrushingTable.addRecipe(<contenttweaker:geode_terra>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), false);
CrushingTable.addRecipe(<contenttweaker:geode_ordo>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), false);
CrushingTable.addRecipe(<contenttweaker:geode_perditio>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), false);

furnace.remove(<minecraft:iron_ingot>, <magneticraft:rocky_chunks:0>);
furnace.remove(<minecraft:gold_ingot>, <magneticraft:rocky_chunks:1>);
furnace.remove(<immersiveengineering:metal>, <magneticraft:rocky_chunks:2>);
furnace.remove(<immersiveengineering:metal:2>, <magneticraft:rocky_chunks:3>);
furnace.remove(<magneticraft:ingots:7>, <magneticraft:rocky_chunks:7>);
furnace.remove(<immersiveengineering:metal:4>, <magneticraft:rocky_chunks:10>);
furnace.remove(<immersiveengineering:metal:3>, <magneticraft:rocky_chunks:12>);
furnace.remove(<forestry:ingot_tin>, <magneticraft:rocky_chunks:13>);
furnace.remove(<magneticraft:ingots:2>, <magneticraft:rocky_chunks:2>);
furnace.remove(<magneticraft:ingots:3>, <magneticraft:rocky_chunks:3>);
furnace.remove(<magneticraft:ingots:10>, <magneticraft:rocky_chunks:10>);
furnace.remove(<magneticraft:ingots:12>, <magneticraft:rocky_chunks:12>);
furnace.remove(<magneticraft:ingots:13>, <magneticraft:rocky_chunks:13>);
furnace.remove(<magneticraft:ingots:14>, <magneticraft:rocky_chunks:14>);

furnace.remove(<minecraft:iron_ingot> * 2, <magneticraft:chunks>);
furnace.remove(<minecraft:gold_ingot> * 2, <magneticraft:chunks:1>);
furnace.remove(<immersiveengineering:metal> * 2, <magneticraft:chunks:2>);
furnace.remove(<immersiveengineering:metal:2> * 2, <magneticraft:chunks:3>);
furnace.remove(<magneticraft:ingots:7> * 2, <magneticraft:chunks:7>);
furnace.remove(<immersiveengineering:metal:4> * 2, <magneticraft:chunks:10>);
furnace.remove(<immersiveengineering:metal:3> * 2, <magneticraft:chunks:12>);
furnace.remove(<forestry:ingot_tin> * 2, <magneticraft:chunks:13>);
furnace.remove(<magneticraft:ingots:2> * 2, <magneticraft:chunks:2>);
furnace.remove(<magneticraft:ingots:3> * 2, <magneticraft:chunks:3>);
furnace.remove(<magneticraft:ingots:10> * 2, <magneticraft:chunks:10>);
furnace.remove(<magneticraft:ingots:12> * 2, <magneticraft:chunks:12>);
furnace.remove(<magneticraft:ingots:13> * 2, <magneticraft:chunks:13>);
furnace.remove(<magneticraft:ingots:14> * 2, <magneticraft:chunks:14>);

furnace.addRecipe(<immersiveengineering:metal:29> * 6, <magneticraft:rocky_chunks:0>);
furnace.addRecipe(<minecraft:gold_nugget> 		  * 6, <magneticraft:rocky_chunks:1>);
furnace.addRecipe(<immersiveengineering:metal:20> * 6, <magneticraft:rocky_chunks:2>);
furnace.addRecipe(<immersiveengineering:metal:22> * 6, <magneticraft:rocky_chunks:3>);
furnace.addRecipe(<immersiveengineering:metal:21> * 6, <magneticraft:rocky_chunks:7>);
furnace.addRecipe(<immersiveengineering:metal:24> * 6, <magneticraft:rocky_chunks:10>);
furnace.addRecipe(<immersiveengineering:metal:23> * 6, <magneticraft:rocky_chunks:12>);
furnace.addRecipe(<magneticraft:nuggets:13> 	  * 6, <magneticraft:rocky_chunks:13>);
furnace.addRecipe(<magneticraft:nuggets:14> 	  * 6, <magneticraft:rocky_chunks:14>);

furnace.addRecipe(<minecraft:iron_ingot>, <magneticraft:chunks:0>);
furnace.addRecipe(<minecraft:gold_ingot>, <magneticraft:chunks:1>);
furnace.addRecipe(<immersiveengineering:metal:0>, <magneticraft:chunks:2>);
furnace.addRecipe(<immersiveengineering:metal:2>, <magneticraft:chunks:3>);
furnace.addRecipe(<immersiveengineering:metal:1>, <magneticraft:chunks:7>);
furnace.addRecipe(<immersiveengineering:metal:4>, <magneticraft:chunks:10>);
furnace.addRecipe(<immersiveengineering:metal:3>, <magneticraft:chunks:12>);
furnace.addRecipe(<forestry:ingot_tin>, <magneticraft:chunks:13>);
furnace.addRecipe(<magneticraft:ingots:14>, <magneticraft:chunks:14>);

SluiceBox.removeRecipe(<magneticraft:rocky_chunks:0>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
//SluiceBox.removeRecipe(<magneticraft:rocky_chunks:6>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);



// ------------ ENGINEER'S DECOR ----------------------
JEI.removeAndHide(<engineersdecor:small_tree_cutter>);
JEI.removeAndHide(<engineersdecor:small_block_breaker>);

recipes.removeByRecipeName("engineersdecor:dependent/thin_steel_pole_recipe");
recipes.addShaped("thin_steel_pole_recipe", <engineersdecor:thin_steel_pole> * 12, [
	[<ore:ingotSteel>], 
	[<ore:ingotSteel>], 
	[<ore:ingotSteel>]
]);




// ------------ IMMERSIVE ENGINEERING -----------------
// grit
recipes.remove(<immersiveengineering:metal:9>);
recipes.remove(<immersiveengineering:metal:10>);
recipes.remove(<immersiveengineering:metal:11>);
recipes.remove(<immersiveengineering:metal:12>);
recipes.remove(<immersiveengineering:metal:13>);
recipes.remove(<immersiveengineering:metal:14>);
recipes.remove(<immersiveengineering:metal:15>);
recipes.remove(<immersiveengineering:metal:16>);
recipes.remove(<immersiveengineering:metal:17>);
recipes.remove(<immersiveengineering:metal:18>);
recipes.remove(<immersiveengineering:metal:19>);
recipes.remove(<magneticraft:dusts:13>);
recipes.remove(<magneticraft:dusts:14>);

recipes.removeByRecipeName("unidict:plateiron_x3_shape.aaa      ");

// more expensive plate crafting
recipes.removeByRecipeName("immersiveengineering:material/plate_copper");
recipes.removeByRecipeName("immersiveengineering:material/plate_aluminum");
recipes.removeByRecipeName("immersiveengineering:material/plate_lead");
recipes.removeByRecipeName("immersiveengineering:material/plate_silver");
recipes.removeByRecipeName("immersiveengineering:material/plate_nickel");
recipes.removeByRecipeName("immersiveengineering:material/plate_uranium");
recipes.removeByRecipeName("immersiveengineering:material/plate_constantan");
recipes.removeByRecipeName("immersiveengineering:material/plate_electrum");
recipes.removeByRecipeName("immersiveengineering:material/plate_steel");
recipes.removeByRecipeName("immersiveengineering:material/plate_iron");
recipes.removeByRecipeName("immersiveengineering:material/plate_gold");

recipes.addShapeless("ie_plate_copper", <immersiveengineering:metal:30>, [<ore:ingotCopper>, <ore:ingotCopper>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_aluminum", <immersiveengineering:metal:31>, [<ore:ingotAluminum>, <ore:ingotAluminum>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_lead", <immersiveengineering:metal:32>, [<ore:ingotLead>, <ore:ingotLead>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_silver", <immersiveengineering:metal:33>, [<ore:ingotSilver>, <ore:ingotSilver>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_nickel", <immersiveengineering:metal:34>, [<ore:ingotNickel>, <ore:ingotNickel>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_uranium", <immersiveengineering:metal:35>, [<ore:ingotUranium>, <ore:ingotUranium>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_constantan", <immersiveengineering:metal:36>, [<ore:ingotConstantan>, <ore:ingotConstantan>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_electrum", <immersiveengineering:metal:37>, [<ore:ingotElectrum>, <ore:ingotElectrum>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_steel", <immersiveengineering:metal:38>, [<ore:ingotSteel>, <ore:ingotSteel>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_iron", <immersiveengineering:metal:39>, [<ore:ingotIron>, <ore:ingotIron>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_gold", <immersiveengineering:metal:40>, [<ore:ingotGold>, <ore:ingotGold>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_tin", <railcraft:plate:2>, [<ore:ingotTin>, <ore:ingotTin>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_bronze", <railcraft:plate:6>, [<ore:ingotBronze>, <ore:ingotBronze>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_zinc", <railcraft:plate:10>, [<ore:ingotZinc>, <ore:ingotZinc>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_brass", <thaumcraft:plate:0>, [<ore:ingotBrass>, <ore:ingotBrass>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_thaumium", <thaumcraft:plate:2>, [<ore:ingotThaumium>, <ore:ingotThaumium>, <immersiveengineering:tool>.transformDamage()]);
recipes.addShapeless("ie_plate_void", <thaumcraft:plate:3>, [<ore:ingotVoid>, <ore:ingotVoid>, <immersiveengineering:tool>.transformDamage()]);

recipes.addShaped("blueprints/tool_molds", <immersiveengineering:blueprint>.withTag({blueprint: "Tool Molds"}), [
	[<ore:plateSteel>, <toolbox:schematic>, <ore:plateSteel>], 
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);


recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped("metal_devices/garden_cloche", <immersiveengineering:metal_device1:13>, [
	[<sereneseasons:greenhouse_glass>, <thaumcraft:lamp_arcane>, <sereneseasons:greenhouse_glass>], 
	[<sereneseasons:greenhouse_glass>, null, <sereneseasons:greenhouse_glass>], 
	[<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]
]);


// make rods more expensive
val rodsAndIngots = {
    <immersiveengineering:material:1> : <ore:ingotIron>,
	<immersiveengineering:material:2> : <ore:ingotSteel>,
	<immersiveengineering:material:3> : <ore:ingotAluminum>,
	<immersiveposts:metal_rods> : <ore:ingotGold>,
	<immersiveposts:metal_rods:1> : <ore:ingotCopper>,
	<immersiveposts:metal_rods:2> : <ore:ingotLead>,
	<immersiveposts:metal_rods:3> : <ore:ingotSilver>,
	<immersiveposts:metal_rods:4> : <ore:ingotNickel>,
	<immersiveposts:metal_rods:5> : <ore:ingotConstantan>,
	<immersiveposts:metal_rods:6> : <ore:ingotElectrum>,
	<immersiveposts:metal_rods:7> : <ore:ingotUranium>
} as IOreDictEntry[IItemStack];

for key in rodsAndIngots {
	recipes.remove(key);
    recipes.addShapedMirrored(key, [[null, null, rodsAndIngots[key]], [null, rodsAndIngots[key], null], [rodsAndIngots[key], null, null]]);
}


Excavator.removeMineral("Iron");
Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Uranium");
Excavator.removeMineral("Cinnabar");

<ore:geodeAqua>.add(<contenttweaker:geode_aqua>);
<ore:geodeIgnis>.add(<contenttweaker:geode_ignis>);
<ore:geodeTerra>.add(<contenttweaker:geode_terra>);
<ore:geodeAer>.add(<contenttweaker:geode_aer>);
<ore:geodeOrdo>.add(<contenttweaker:geode_ordo>);
<ore:geodePerditio>.add(<contenttweaker:geode_perditio>);

Excavator.addMineral("Cobble & Dirt", 10, 0.005, ["minecraft:dirt", "minecraft:cobblestone"], [0.5, 0.5], [0]);
Excavator.addMineral("Crystal Geodes", 10, 0.5, ["contenttweaker:geode_aqua", "contenttweaker:geode_aer", "contenttweaker:geode_ordo", "contenttweaker:geode_terra", "contenttweaker:geode_perditio", "contenttweaker:geode_ignis"], [0.16, 0.16, 0.16, 0.16, 0.16, 0.16], [7]);

var crystalGeodes = Excavator.getMineral("Crystal Geodes");
crystalGeodes.addOre("geodeAqua", 0.16);
crystalGeodes.addOre("geodeIgnis", 0.16);
crystalGeodes.addOre("geodeTerra", 0.16);
crystalGeodes.addOre("geodeAer", 0.16);
crystalGeodes.addOre("geodeOrdo", 0.16);
crystalGeodes.addOre("geodePerditio", 0.16);

var dirtCobble = Excavator.getMineral("Cobble & Dirt");
dirtCobble.addOre("cobblestone", 0.5);
dirtCobble.addOre("dirt", 0.5);


Crusher.addRecipe(<railcraft:dust:6>, <minecraft:ender_pearl>, 3600);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 3, <contenttweaker:geode_aer>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), 0.25);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 3, <contenttweaker:geode_aqua>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 0.25);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 3, <contenttweaker:geode_ignis>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), 0.25);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 3, <contenttweaker:geode_terra>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 0.25);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 3, <contenttweaker:geode_ordo>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 0.25);
Crusher.addRecipe(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 3, <contenttweaker:geode_perditio>, 256, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 0.25);

Crusher.removeRecipesForInput(<geolosys:cluster:0>);
Crusher.removeRecipesForInput(<geolosys:cluster:1>);
Crusher.removeRecipesForInput(<geolosys:cluster:2>);
Crusher.removeRecipesForInput(<geolosys:cluster:5>);
Crusher.removeRecipesForInput(<geolosys:cluster:6>);
Crusher.removeRecipesForInput(<geolosys:cluster:7>);
Crusher.removeRecipesForInput(<geolosys:cluster:4>);
Crusher.removeRecipesForInput(<geolosys:cluster:3>);
Crusher.removeRecipesForInput(<geolosys:cluster:10>);

Crusher.addRecipe(<railcraft:dust:6>, <minecraft:ender_pearl>, 3600);

Crusher.addRecipe(<magneticraft:chunks:0>, <geolosys:cluster:0>, 3600, <magneticraft:chunks:10>, 0.1);
Crusher.addRecipe(<magneticraft:chunks:1>, <geolosys:cluster:1>, 3600);
Crusher.addRecipe(<magneticraft:chunks:2>, <geolosys:cluster:2>, 3600, <magneticraft:chunks:1>, 0.1);
Crusher.addRecipe(<magneticraft:chunks:3>, <geolosys:cluster:5>, 3600);
Crusher.addRecipe(<magneticraft:chunks:7>, <geolosys:cluster:6>, 3600);
Crusher.addRecipe(<magneticraft:chunks:10>, <geolosys:cluster:7>, 3600);
Crusher.addRecipe(<magneticraft:chunks:12>, <geolosys:cluster:4>, 3600, <magneticraft:chunks:3>, 0.1);
Crusher.addRecipe(<magneticraft:chunks:13>, <geolosys:cluster:3>, 3600);
Crusher.addRecipe(<magneticraft:chunks:14>, <geolosys:cluster:10>, 3600);

Crusher.addRecipe(<magneticraft:chunks:0>, <magneticraft:rocky_chunks:0>, 3600);
Crusher.addRecipe(<magneticraft:chunks:1>, <magneticraft:rocky_chunks:1>, 3600);
Crusher.addRecipe(<magneticraft:chunks:2>, <magneticraft:rocky_chunks:2>, 3600);
Crusher.addRecipe(<magneticraft:chunks:3>, <magneticraft:rocky_chunks:3>, 3600);
Crusher.addRecipe(<magneticraft:chunks:7>, <magneticraft:rocky_chunks:7>, 3600);
Crusher.addRecipe(<magneticraft:chunks:10>, <magneticraft:rocky_chunks:10>, 3600);
Crusher.addRecipe(<magneticraft:chunks:12>, <magneticraft:rocky_chunks:12>, 3600);
Crusher.addRecipe(<magneticraft:chunks:13>, <magneticraft:rocky_chunks:13>, 3600);
Crusher.addRecipe(<magneticraft:chunks:14>, <magneticraft:rocky_chunks:14>, 3600);

ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
ArcFurnace.removeRecipe(<immersiveengineering:metal>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
ArcFurnace.removeRecipe(<forestry:ingot_tin>);
ArcFurnace.removeRecipe(<magneticraft:ingots:14>);

ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <magneticraft:chunks:0>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<minecraft:gold_ingot> * 2, <magneticraft:chunks:1>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<immersiveengineering:metal> * 2, <magneticraft:chunks:2>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<immersiveengineering:metal:2> * 2, <magneticraft:chunks:3>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<immersiveengineering:metal:1> * 2, <magneticraft:chunks:7>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<immersiveengineering:metal:4> * 2, <magneticraft:chunks:10>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<immersiveengineering:metal:3> * 2, <magneticraft:chunks:12>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<forestry:ingot_tin> * 2, <magneticraft:chunks:13>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<magneticraft:ingots:14> * 2, <magneticraft:chunks:14>, <immersiveengineering:material:7>, 200, 512);

MetalPress.addRecipe(<pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:ingot_iron_compressed>, <immersiveengineering:mold:1>, 240, 4);
MetalPress.addRecipe(<magneticraft:light_plates:0>, <immersiveengineering:metal:39>, <immersiveengineering:mold:0>, 240, 2);
MetalPress.addRecipe(<magneticraft:light_plates:1>, <immersiveengineering:metal:40>, <immersiveengineering:mold:0>, 240, 2);
MetalPress.addRecipe(<magneticraft:light_plates:2>, <immersiveengineering:metal:30>, <immersiveengineering:mold:0>, 240, 2);
MetalPress.addRecipe(<magneticraft:light_plates:3>, <immersiveengineering:metal:32>, <immersiveengineering:mold:0>, 240, 2);

val atToolParts = [
	<toolbox:hoe_head>,
	<toolbox:hammer_head>,
	<toolbox:pickaxe_head>,
	<toolbox:axe_head>,
	<toolbox:sword_blade>,
	<toolbox:sword_crossguard>,
	<toolbox:dagger_blade>,
	<toolbox:handpick_head>,
	<toolbox:shovel_head>,
	<toolbox:mace_head>
] as IItemStack[];

val atMolds = [
	<contenttweaker:mold_hoe>,
	<contenttweaker:mold_hammer>,
	<contenttweaker:mold_pickaxe>,
	<contenttweaker:mold_axe>,
	<contenttweaker:mold_sword_blade>,
	<contenttweaker:mold_cross_guard>,
	<contenttweaker:mold_dagger>,
	<contenttweaker:mold_handpick>,
	<contenttweaker:mold_shovel>,
	<contenttweaker:mold_mace>
] as IItemStack[];

val atMaterialCount = [
	1,
	4,
	2,
	2,
	1,
	1,
	1,
	1,
	1,
	2
] as int[];

val atMetaArray = [
	0,
	1,
	3,
	5,
	7,
	10,
	11,
	13,
	17,
	18,
	19,
	20,
	22,
	23,
	24,
	26,
	28,
	29,
	32,
	33
] as int[];

val atMaterialList = [
	<ore:ingotSteel>,
	<ore:ingotMithril>,
	<ore:ingotCobalt>,
	<ore:ingotAluminum>,
	<ore:ingotGold>,
	<ore:ingotTin>,
	<ore:ingotCopper>,
	<ore:plankWood>,
	<ore:ingotZinc>,
	<ore:ingotNickel>,
	<ore:ingotElectrum>,
	<ore:ingotVoid>,
	<ore:ingotThaumium>,
	<ore:ingotBrass>,
	<ore:ingotConstantan>,
	<ore:ingotLead>,
	<ore:cobblestone>,
	<ore:ingotBronze>,
	<ore:ingotIron>,
	<ore:ingotSilver>
] as IOreDictEntry[];


for index, mold in atMolds {
	val toolPart = atToolParts[index];
	val itemDef = toolPart.definition;

	for i, meta in atMetaArray {
		MetalPress.addRecipe(itemDef.makeStack(meta), 
		atMaterialList[i], 
		mold, 240, atMaterialCount[index]);
	}
}


DieselHandler.addFuel(<liquid:steam>, 64);

BottlingMachine.addRecipe(<techguns:itemshared:23>, <techguns:itemshared:24>, <liquid:steam> * 1000);

AlloySmelter.addRecipe(<techguns:itemshared:84>, <ore:obsidian>, <ore:ingotSteel>, 2000);
AlloySmelter.addRecipe(<sereneseasons:greenhouse_glass>, <minecraft:sand> * 4, <immersiveengineering:metal:2>, 2000);

Squeezer.addRecipe(null, <liquid:oliveoil> * 250, <ore:cropOlive>, 6400);
Squeezer.addRecipe(null, <liquid:ironberryjuice> * 250, <ore:cropIronBerry>, 6400);
Squeezer.addRecipe(<minecraft:sugar> * 2, <liquid:ironberryjuice> * 250, <ore:sugarcane>, 6400);
Squeezer.addRecipe(null, <liquid:wildberryjuice> * 250, <ore:cropWildberry>, 6400);
Squeezer.addRecipe(null, <liquid:grapejuice> * 250, <ore:cropGrape>, 6400);
Squeezer.addRecipe(<rustic:apple_seeds>, <liquid:applejuice> * 250, <ore:cropApple>, 6400);
Squeezer.addRecipe(null, <liquid:honey> * 250, <rustic:honeycomb>, 6400);
Squeezer.addRecipe(null, <liquid:cinderfire_wort> * 125, <rusticthaumaturgy:cindermote>, 6400);
Squeezer.addRecipe(null, <liquid:cinderfire_wort> * 250, <thaumcraft:cinderpearl>, 6400);
Squeezer.addRecipe(null, <liquid:shimmerdew_wort> * 125, <rusticthaumaturgy:shimmerpetal>, 6400);
Squeezer.addRecipe(null, <liquid:shimmerdew_wort> * 250, <thaumcraft:shimmerleaf>, 6400);
Squeezer.addRecipe(null, <liquid:viscous_wort> * 125, <rusticthaumaturgy:viscap>, 6400);
Squeezer.addRecipe(null, <liquid:viscous_wort> * 250, <thaumcraft:vishroom>, 6400);

Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_hoe>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_hammer>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_pickaxe>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_axe>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_sword_blade>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_cross_guard>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_dagger>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_handpick>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_shovel>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Tool Molds", <contenttweaker:mold_mace>, [<immersiveengineering:metal:38> * 5, <immersiveengineering:tool:1>]);



// ------------ PROJECT RED ---------------------------
recipes.remove(<projectred-core:resource_item:103>);
JEI.removeAndHide(<projectred-core:resource_item:104>);



// ------------ HARVESTCRAFT --------------------------
JEI.removeAndHide(<harvestcraft:well>);
JEI.removeAndHide(<harvestcraft:market>);
JEI.removeAndHide(<harvestcraft:shippingbin>);



// ------------ MYSTICAL WORLD ------------------------
JEI.removeAndHide(<mysticalworld:silver_knife>);
JEI.removeAndHide(<mysticalworld:iron_dust>);
JEI.removeAndHide(<mysticalworld:iron_dust_tiny>);
JEI.removeAndHide(<mysticalworld:gold_dust>);
JEI.removeAndHide(<mysticalworld:gold_dust_tiny>);
JEI.removeAndHide(<mysticalworld:copper_ingot>);
JEI.removeAndHide(<mysticalworld:copper_nugget>);
JEI.removeAndHide(<mysticalworld:copper_dust>);
JEI.removeAndHide(<mysticalworld:copper_dust_tiny>);
JEI.removeAndHide(<mysticalworld:silver_ingot>);
JEI.removeAndHide(<mysticalworld:silver_nugget>);
JEI.removeAndHide(<mysticalworld:silver_dust>);
JEI.removeAndHide(<mysticalworld:silver_dust_tiny>);
JEI.removeAndHide(<mysticalworld:copper_axe>);
JEI.removeAndHide(<mysticalworld:copper_hoe>);
JEI.removeAndHide(<mysticalworld:copper_pickaxe>);
JEI.removeAndHide(<mysticalworld:silver_block>);
JEI.removeAndHide(<mysticalworld:amethyst_knife>);
JEI.removeAndHide(<mysticalworld:copper_knife>);
JEI.removeAndHide(<mysticalworld:silver_sword>);
JEI.removeAndHide(<mysticalworld:silver_shovel>);
JEI.removeAndHide(<mysticalworld:silver_pickaxe>);
JEI.removeAndHide(<mysticalworld:silver_hoe>);
JEI.removeAndHide(<mysticalworld:silver_axe>);
JEI.removeAndHide(<mysticalworld:copper_sword>);
JEI.removeAndHide(<mysticalworld:copper_shovel>);
JEI.removeAndHide(<mysticalworld:amethyst_pickaxe>);
JEI.removeAndHide(<mysticalworld:amethyst_axe>);
JEI.removeAndHide(<mysticalworld:amethyst_hoe>);
JEI.removeAndHide(<mysticalworld:amethyst_pickaxe>);
JEI.removeAndHide(<mysticalworld:amethyst_shovel>);
JEI.removeAndHide(<mysticalworld:amethyst_sword>);
JEI.removeAndHide(<mysticalworld:stuffed_aubergine>);
JEI.removeAndHide(<mysticalworld:cooked_aubergine>);
furnace.remove(<mysticalworld:cooked_aubergine>);

recipes.addShapeless(<mysticalworld:copper_block> * 2, [<immersiveengineering:storage:0>, <immersiveengineering:storage:0>]);
recipes.addShapeless(<immersiveengineering:storage:0>, [<mysticalworld:copper_block>]);
recipes.addShapeless(<mysticalworld:silver_block> * 2, [<immersiveengineering:storage:3>, <immersiveengineering:storage:3>]);
recipes.addShapeless(<immersiveengineering:storage:3>, [<mysticalworld:silver_block>]);



// ------------ TECHGUNS ------------------------------
/*
	COAL(0,1f),
	COMMON_METAL(0,1f),
	RARE_METAL(1,0.8f),
	SHINY_METAL(2,0.5f),
	URANIUM(3,0.1f),
	COMMON_GEM(1,0.8f),
	SHINY_GEM(3,0.1f),
	NETHER_CRYSTAL(2,0.5f),
	OIL(2,0.5f)
*/

OreCluster.removeOre("COAL", <minecraft:coal_ore>);
OreCluster.addOre("COAL", <minecraft:coal>, 99);

OreCluster.removeOre("COMMON_METAL", <minecraft:iron_ore>); 
OreCluster.removeOre("COMMON_METAL", <techguns:basicore:0>);
OreCluster.removeOre("COMMON_METAL", <techguns:basicore:1>);
OreCluster.addOre("COMMON_METAL", <geolosys:cluster:0>, 45);
OreCluster.addOre("COMMON_METAL", <geolosys:cluster:2>, 30);
OreCluster.addOre("COMMON_METAL", <geolosys:cluster:3>, 15);
OreCluster.addOre("COMMON_METAL", <geolosys:cluster:6>, 10);

OreCluster.removeOre("RARE_METAL", <techguns:basicore:2>);
OreCluster.removeOre("RARE_METAL", <geolosys:cluster:12>);
OreCluster.addOre("RARE_METAL", <geolosys:cluster:5>, 50); // lead
OreCluster.addOre("RARE_METAL", <geolosys:cluster:7>, 30); // nickel
OreCluster.addOre("RARE_METAL", <geolosys:cluster:10>, 20); // zinc

OreCluster.removeOre("SHINY_METAL", <techguns:basicore:3>);
OreCluster.removeOre("SHINY_METAL", <minecraft:gold_ore>);
OreCluster.removeOre("SHINY_METAL", <techguns:basicore:3>);
OreCluster.addOre("SHINY_METAL", <geolosys:cluster:1>, 40); // gold
OreCluster.addOre("SHINY_METAL", <thaumcraft:ore_cinnabar>, 10); // cinnabar
OreCluster.addOre("SHINY_METAL", <thaumcraft:ore_amber>, 8); // Amber

OreCluster.removeOre("URANIUM", <techguns:basicore:4>);
OreCluster.addOre("URANIUM", <geolosys:cluster:9>, 50); // uranium
OreCluster.addOre("URANIUM", <sgcraft:naquadah>, 50); // naquadah

OreCluster.removeOre("COMMON_GEM", <minecraft:redstone_ore>);
OreCluster.removeOre("COMMON_GEM", <minecraft:lapis_ore>);
OreCluster.addOre("COMMON_GEM", <minecraft:redstone> * 5, 55);
OreCluster.addOre("COMMON_GEM", <minecraft:dye:4> * 5, 30);
OreCluster.addOre("COMMON_GEM", <minecraft:quartz> * 3, 15);

OreCluster.removeOre("SHINY_GEM", <minecraft:diamond_ore>);
OreCluster.removeOre("SHINY_GEM", <minecraft:emerald_ore>);
OreCluster.addOre("SHINY_GEM", <minecraft:diamond>, 65);
OreCluster.addOre("SHINY_GEM", <minecraft:emerald>, 35);


val techgunsItemsToRemove = [
	<techguns:goldenrevolver>,
	<techguns:ak47>,
	<techguns:m4>,
	<techguns:m4_infiltrator>,
	<techguns:pistol>,
	<techguns:mac10>,
	<techguns:flamethrower>,
	<techguns:grimreaper>,
	<techguns:grenadelauncher>,
	<techguns:aug>,
	<techguns:netherblaster>,
	<techguns:biogun>,
	<techguns:lmg>,
	<techguns:minigun>,
	<techguns:as50>,
	<techguns:vector>,
	<techguns:scar>,
	<techguns:lasergun>,
	<techguns:blasterrifle>,
	<techguns:scatterbeamrifle>,
	<techguns:sonicshotgun>,
	<techguns:pdw>,
	<techguns:pulserifle>,
	<techguns:mibgun>,
	<techguns:alienblaster>,
	<techguns:powerhammer>,
	<techguns:nucleardeathray>,
	<techguns:gaussrifle>,
	<techguns:guidedmissilelauncher>,
	<techguns:tfg>,
	<techguns:jetpack>,
	<techguns:gasmask>,
	<techguns:tacticalmask>,
	<techguns:hazmat_helmet>,
	<techguns:hazmat_chestplate>,
	<techguns:hazmat_leggings>,
	<techguns:hazmat_boots>,
	<techguns:t3_combat_helmet>,
	<techguns:t3_combat_chestplate>,
	<techguns:t3_combat_leggings>,
	<techguns:t3_combat_boots>,
	<techguns:t3_power_helmet>,
	<techguns:t3_power_chestplate>,
	<techguns:t3_power_leggings>,
	<techguns:t3_power_boots>,
	<techguns:t3_exo_helmet>,
	<techguns:t3_exo_chestplate>,
	<techguns:t3_exo_leggings>,
	<techguns:t3_exo_boots>,
	<techguns:t4_praetor_helmet>,
	<techguns:t4_praetor_chestplate>,
	<techguns:t4_praetor_leggings>,
	<techguns:t4_praetor_boots>,
	<techguns:t4_power_helmet>,
	<techguns:t4_power_chestplate>,
	<techguns:t4_power_leggings>,
	<techguns:t4_power_boots>,
	<techguns:riot_shield>,
	<techguns:ballistic_shield>,
	<techguns:advanced_shield>,
	<techguns:antigravpack>,
	<techguns:simplemachine:10>,
	<techguns:itemshared:62>,
	<techguns:itemshared:63>,
	<techguns:itemshared:72>,
	<techguns:itemshared:82>,
	<techguns:itemshared:83>
] as IItemStack[];


val techgunsRecipeNames = [
	"techguns:goldenrevolver",
	"techguns:ak47",
	"techguns:m4",
	"techguns:m4_infiltrator",
	"techguns:pistol",
	"techguns:mac10",
	"techguns:flamethrower",
	"techguns:grimreaper",
	"techguns:grenadelauncher",
	"techguns:aug",
	"techguns:netherblaster",
	"techguns:biogun",
	"techguns:lmg",
	"techguns:minigun",
	"techguns:as50",
	"techguns:vector",
	"techguns:scar",
	"techguns:lasergun",
	"techguns:blasterrifle",
	"techguns:scatterbeamrifle",
	"techguns:sonicshotgun",
	"techguns:pdw",
	"techguns:pulserifle",
	"techguns:mibgun",
	"techguns:alienblaster",
	"techguns:powerhammer",
	"techguns:nucleardeathray",
	"techguns:gaussrifle",
	"techguns:guidedmissilelauncher",
	"techguns:tfg",
	"techguns:jetpack",
	"techguns:gasmask",
	"techguns:tacticalmask",
	"techguns:hazmat_helmet",
	"techguns:hazmat_chestplate",
	"techguns:hazmat_leggings",
	"techguns:hazmat_boots",
	"techguns:t3_combat_helmet",
	"techguns:t3_combat_chestplate",
	"techguns:t3_combat_leggings",
	"techguns:t3_combat_boots",
	"techguns:t3_power_helmet",
	"techguns:t3_power_chestplate",
	"techguns:t3_power_leggings",
	"techguns:t3_power_boots",
	"techguns:t3_exo_helmet",
	"techguns:t3_exo_chestplate",
	"techguns:t3_exo_leggings",
	"techguns:t3_exo_boots",
	"techguns:t4_praetor_helmet",
	"techguns:t4_praetor_chestplate",
	"techguns:t4_praetor_leggings",
	"techguns:t4_praetor_boots",
	"techguns:t4_power_helmet",
	"techguns:t4_power_chestplate",
	"techguns:t4_power_leggings",
	"techguns:t4_power_boots",
	"techguns:riot_shield",
	"techguns:ballistic_shield",
	"techguns:advanced_shield",
	"techguns:antigravpack",
	"techguns:simplemachine",
	"techguns:itemshared",
	"techguns:itemshared",
	"techguns:nightvisiongoggles"
] as string[];

val weaponsKeepButNoRecipe = [
	<techguns:revolver>,
	<techguns:thompson>,
	<techguns:boltaction>,
	<techguns:combatshotgun>,
	<techguns:rocketlauncher>
] as IItemStack[];


for item in weaponsKeepButNoRecipe {
	recipes.remove(item);
	recipes.remove(item.withTag({camo: 0 as byte}));
	recipes.remove(item.withTag({ammo: 0 as short, ammovariant: "default", camo: 0 as byte}));
}

for item in techgunsRecipeNames {
	recipes.removeByRecipeName(item);
	mods.ltt.LootTable.removeGlobalItem(item);
	recipes.removeByRecipeName(item ~ "_alt");
}

for item in techgunsItemsToRemove {
	recipes.remove(item);
	recipes.remove(item.withTag({camo: 0 as byte}));
	recipes.remove(item.withTag({ammo: 0 as short, ammovariant: "default", camo: 0 as byte}));
	ItemStages.addItemStage("removed", item);
}

recipes.removeByRecipeName("techguns:itemshared_79_ingotcopper");
recipes.removeByRecipeName("techguns:itemshared_82_ingotlead");


recipes.remove(<techguns:t1_combat_helmet>);
recipes.remove(<techguns:t1_combat_chestplate>);
recipes.remove(<techguns:t1_combat_leggings>);
recipes.remove(<techguns:t1_combat_boots>);
recipes.remove(<techguns:t1_scout_helmet>);
recipes.remove(<techguns:t1_scout_chestplate>);
recipes.remove(<techguns:t1_scout_leggings>);
recipes.remove(<techguns:t1_scout_boots>);
recipes.remove(<techguns:t1_miner_helmet>);
recipes.remove(<techguns:t1_miner_chestplate>);
recipes.remove(<techguns:t1_miner_leggings>);
recipes.remove(<techguns:t1_miner_boots>);
recipes.remove(<techguns:t2_combat_helmet>);
recipes.remove(<techguns:t2_combat_chestplate>);
recipes.remove(<techguns:t2_combat_leggings>);
recipes.remove(<techguns:t2_combat_boots>);
recipes.remove(<techguns:t2_commando_helmet>);
recipes.remove(<techguns:t2_commando_chestplate>);
recipes.remove(<techguns:t2_commando_leggings>);
recipes.remove(<techguns:t2_commando_boots>);
recipes.remove(<techguns:t2_riot_helmet>);
recipes.remove(<techguns:t2_riot_chestplate>);
recipes.remove(<techguns:t2_riot_leggings>);
recipes.remove(<techguns:t2_riot_boots>);
recipes.remove(<techguns:t3_miner_helmet>);
recipes.remove(<techguns:t3_miner_chestplate>);
recipes.remove(<techguns:t3_miner_leggings>);
recipes.remove(<techguns:t3_miner_boots>);
recipes.remove(<techguns:itemshared:62>);
recipes.remove(<techguns:itemshared:63>);
recipes.remove(<techguns:simplemachine2:8>);
recipes.remove(<techguns:itemshared:7>);


recipes.remove(<techguns:itemshared:65>);
recipes.addShaped("itemshared_65_circuitboard", <techguns:itemshared:65>, [[<ore:wireCopper>, <ore:dyeGreen>, <ore:wireCopper>], [<ore:dustRedstone>, <ore:plateIron>, <ore:dustRedstone>], [<ore:wireCopper>, <ore:dyeGreen>, <ore:wireCopper>]]);


recipes.addShaped("carbon_drill", <techguns:itemshared:136>, [
	[<techguns:itemshared:64>, <techguns:itemshared:64>, <techguns:itemshared:64>],
	[<techguns:itemshared:64>, <techguns:itemshared:135>, <techguns:itemshared:64>],
	[<techguns:itemshared:64>, <techguns:itemshared:64>, <techguns:itemshared:64>]
]);

recipes.addShaped("custom_miningdrill", <techguns:miningdrill>, [
	[null, <pneumaticcraft:printed_circuit_board>, null], 
	[<techguns:itemshared:119>, <immersiveengineering:drill>, <techguns:itemshared:43>], 
	[null, <techguns:itemshared:27>, null]
]);


recipes.remove(<techguns:simplemachine:11>);

mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:46>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:47>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:48>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:49>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:50>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:51>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:52>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:53>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:54>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:62>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:63>);

ChemLab.removeRecipe(<techguns:itemshared:23>, null);

ArmorStats.setArmorStat("t1_scout_helmet", "SPEED", 0.05);
ArmorStats.setArmorStat("t1_scout_chestplate", "SPEED", 0.05);
ArmorStats.setArmorStat("t1_scout_leggings", "SPEED", 0.05);
ArmorStats.setArmorStat("t1_scout_boots", "SPEED", 0.05);

ArmorStats.setArmorStat("t1_miner_helmet", "SPEED", 0.03);
ArmorStats.setArmorStat("t1_miner_chestplate", "SPEED", 0.03);
ArmorStats.setArmorStat("t1_miner_leggings", "SPEED", 0.03);
ArmorStats.setArmorStat("t1_miner_boots", "SPEED", 0.03);

ArmorStats.setArmorStat("t2_combat_helmet", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_combat_chestplate", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_combat_leggings", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_combat_boots", "SPEED", 0.02);

ArmorStats.setArmorStat("t2_commando_helmet", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_commando_chestplate", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_commando_leggings", "SPEED", 0.02);
ArmorStats.setArmorStat("t2_commando_boots", "SPEED", 0.02);

ArmorStats.setArmorStat("t2_riot_helmet", "SPEED", 0.04);
ArmorStats.setArmorStat("t2_riot_chestplate", "SPEED", 0.04);
ArmorStats.setArmorStat("t2_riot_leggings", "SPEED", 0.04);
ArmorStats.setArmorStat("t2_riot_boots", "SPEED", 0.04);

ArmorStats.setArmorStat("t3_miner_helmet", "SPEED", 0.06);
ArmorStats.setArmorStat("t3_miner_chestplate", "SPEED", 0.06);
ArmorStats.setArmorStat("t3_miner_leggings", "SPEED", 0.06);
ArmorStats.setArmorStat("t3_miner_boots", "SPEED", 0.06);

ArmorStats.setArmorStat("t2_beret", "SPEED", 0.02);

GunStats.setWeaponStat("thompson", "DAMAGE", 3);
GunStats.setWeaponStat("thompson", "DAMAGE_MIN", 1.5);



// ------------ BETTER BOILERS ------------------------
JEI.removeAndHide(<betterboilers:turbine_chamber>);
JEI.removeAndHide(<betterboilers:turbine_cap>);
JEI.removeAndHide(<betterboilers:turbine_rotor>);
JEI.removeAndHide(<betterboilers:turbine_gasket>);
JEI.removeAndHide(<betterboilers:turbine_pressure_valve>);
JEI.removeAndHide(<betterboilers:turbine_power_tap>);
JEI.removeAndHide(<betterboilers:turbine_controller>);




// ------------ CHINESE WORKSHOP ----------------------
recipes.remove(<chineseworkshop:fu>);
recipes.addShaped("chineseworkshop_fu", <chineseworkshop:fu>, [
	[null, <ore:stickWood>, null],
	[<ore:stickWood>, <minecraft:paper>, <ore:stickWood>],
	[null, <ore:stickWood>, null]
]);

recipes.remove(<chineseworkshop:stone_window> * 3);
recipes.addShaped("chineseworkshop_stone_window", <chineseworkshop:stone_window> * 4, [
	[<ore:stoneDiorite>, <ore:stoneDiorite>, <ore:stoneDiorite>], 
	[<ore:stoneDiorite>, null, <ore:stoneDiorite>], 
	[<ore:stoneDiorite>, <ore:stoneDiorite>, <ore:stoneDiorite>]
]);

recipes.remove(<chineseworkshop:thin_wall_w>);
recipes.addShaped("chineseworkshop_thinwall", <chineseworkshop:thin_wall_w> * 32, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);


// ------------ CHISEL --------------------------------




// ------------ THAUMCRAFT ----------------------------
recipes.remove(<thaumcraft:plate:0>);
recipes.remove(<thaumcraft:plate:2>);
recipes.remove(<thaumcraft:plate:3>);

ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
ArcaneWorkbench.registerShapedRecipe("PotionSprayer", "POTIONSPRAYER", 75, [<aspect:aqua>, <aspect:ignis>], <thaumcraft:potion_sprayer>, 
	[[<thaumcraft:plate>, <minecraft:dispenser>, <thaumcraft:plate>], 
	 [<immersiveengineering:metal:39>, <rustic:condenser_advanced>, <immersiveengineering:metal:39>], 
	 [<immersiveengineering:metal:39>, <thaumcraft:metal_alchemical>, <immersiveengineering:metal:39>]]
);



// ------------ AQUACULTURE ---------------------------
<ore:ingotNeptunium>.add(<aquaculture:loot:1>);



// ------------ RUSTIC --------------------------------
recipes.remove(<rustic:crop_stake>);
recipes.addShaped("crop_stake", <rustic:crop_stake>, [
	[null, null, <ore:plankWood>], 
	[null, <ore:plankWood>, null], 
	[<ore:plankWood>, null, null]
]);



// ------------ STACK SIZE ----------------------------
val allItems = game.items;

for item in allItems {
	for subItem in item.subItems {
		if(subItem.maxStackSize > 32) {
			subItem.maxStackSize = 32;
		}
	}
}


for item in <ore:logWood>.items {
    item.maxStackSize = 16;
}

<geolosys:cluster:*>.maxStackSize = 8;
<minecraft:gold_ore>.maxStackSize = 8;
<minecraft:iron_ore>.maxStackSize = 8;
<minecraft:coal_ore>.maxStackSize = 8;
<minecraft:lapis_ore>.maxStackSize = 8;
<minecraft:diamond_ore>.maxStackSize = 8;
<minecraft:redstone_ore>.maxStackSize = 8;
<minecraft:emerald_ore>.maxStackSize = 8;
<geolosys:ore>.maxStackSize = 8;
<geolosys:ore:1>.maxStackSize = 8;
<geolosys:ore:2>.maxStackSize = 8;
<geolosys:ore:3>.maxStackSize = 8;
<geolosys:ore:4>.maxStackSize = 8;
<geolosys:ore:5>.maxStackSize = 8;
<geolosys:ore:6>.maxStackSize = 8;
<geolosys:ore:7>.maxStackSize = 8;
<geolosys:ore:8>.maxStackSize = 8;
<geolosys:ore:9>.maxStackSize = 8;
<geolosys:ore:10>.maxStackSize = 8;
<geolosys:ore_vanilla>.maxStackSize = 8;
<geolosys:ore_vanilla:1>.maxStackSize = 8;
<geolosys:ore_vanilla:2>.maxStackSize = 8;
<geolosys:ore_vanilla:3>.maxStackSize = 8;
<geolosys:ore_vanilla:4>.maxStackSize = 8;
<geolosys:ore_vanilla:5>.maxStackSize = 8;
<geolosys:ore_vanilla:6>.maxStackSize = 8;
/*
<biomesoplenty:biome_block>.maxStackSize = 8;
<biomesoplenty:gem_ore>.maxStackSize = 8;
<biomesoplenty:gem_ore:1>.maxStackSize = 8;
<biomesoplenty:gem_ore:2>.maxStackSize = 8;
<biomesoplenty:gem_ore:3>.maxStackSize = 8;
<biomesoplenty:gem_ore:4>.maxStackSize = 8;
<biomesoplenty:gem_ore:5>.maxStackSize = 8;
<biomesoplenty:gem_ore:6>.maxStackSize = 8;
<biomesoplenty:gem_ore:7>.maxStackSize = 8;
*/

for item in loadedMods["debark"].items {
    item.maxStackSize = 16;
}

<minecraft:gold_nugget>.maxStackSize = 64;
<immersiveengineering:metal:20>.maxStackSize = 64;
<immersiveengineering:metal:21>.maxStackSize = 64;
<immersiveengineering:metal:22>.maxStackSize = 64;
<immersiveengineering:metal:23>.maxStackSize = 64;
<immersiveengineering:metal:24>.maxStackSize = 64;
<immersiveengineering:metal:25>.maxStackSize = 64;
<immersiveengineering:metal:26>.maxStackSize = 64;
<immersiveengineering:metal:27>.maxStackSize = 64;
<immersiveengineering:metal:28>.maxStackSize = 64;
<immersiveengineering:metal:29>.maxStackSize = 64;
<magicbees:orepart:5>.maxStackSize = 64;
<magneticraft:nuggets:4>.maxStackSize = 64;
<magneticraft:nuggets:5>.maxStackSize = 64;
<magneticraft:nuggets:9>.maxStackSize = 64;
<magneticraft:nuggets:11>.maxStackSize = 64;
<magneticraft:nuggets:14>.maxStackSize = 64;
<mysticalworld:copper_nugget>.maxStackSize = 64;
<thaumcraft:nugget:2>.maxStackSize = 64;
<thaumcraft:nugget:5>.maxStackSize = 64;
<thaumcraft:nugget:6>.maxStackSize = 64;
<thaumcraft:nugget:7>.maxStackSize = 64;
<thaumcraft:nugget:8>.maxStackSize = 64;
<thaumcraft:nugget:9>.maxStackSize = 64;
<thaumcraft:chunk>.maxStackSize = 64;
<thaumcraft:chunk:1>.maxStackSize = 64;
<thaumcraft:chunk:2>.maxStackSize = 64;
<thaumcraft:chunk:3>.maxStackSize = 64;
<thaumcraft:chunk:4>.maxStackSize = 64;
<thaumcraft:chunk:5>.maxStackSize = 64;
<cttinycoal:tiny_coal>.maxStackSize = 64;
<cttinycoal:tiny_charcoal>.maxStackSize = 64;
<thaumcraft:phial:0>.maxStackSize = 64;
<thaumcraft:phial:1>.maxStackSize = 64;
<contenttweaker:coin_1>.maxStackSize = 64;
<contenttweaker:coin_5>.maxStackSize = 64;
<contenttweaker:coin_10>.maxStackSize = 64;
<contenttweaker:coin_50>.maxStackSize = 64;
<contenttweaker:coin_100>.maxStackSize = 64;
<contenttweaker:coin_500>.maxStackSize = 64;

<minecraft:iron_ingot>.maxStackSize = 16;
<minecraft:gold_ingot>.maxStackSize = 16;
<aquaculture:loot:1>.maxStackSize = 16;
<forestry:ingot_tin>.maxStackSize = 16;
<forestry:ingot_bronze>.maxStackSize = 16;
<immersiveengineering:material:19>.maxStackSize = 16;
<immersiveengineering:metal:0>.maxStackSize = 16;
<immersiveengineering:metal:1>.maxStackSize = 16;
<immersiveengineering:metal:2>.maxStackSize = 16;
<immersiveengineering:metal:3>.maxStackSize = 16;
<immersiveengineering:metal:4>.maxStackSize = 16;
<immersiveengineering:metal:5>.maxStackSize = 16;
<techguns:itemshared:84>.maxStackSize = 16;
<sgcraft:naquadahingot>.maxStackSize = 16;
<projectred-core:resource_item:103>.maxStackSize = 16;
<pneumaticcraft:ingot_iron_compressed>.maxStackSize = 16;
<magneticraft:ingots:14>.maxStackSize = 16;
<magneticraft:ingots:11>.maxStackSize = 16;
<magneticraft:ingots:9>.maxStackSize = 16;
<magneticraft:ingots:5>.maxStackSize = 16;
<magneticraft:ingots:4>.maxStackSize = 16;
<immersiveengineering:metal:8>.maxStackSize = 16;
<immersiveengineering:metal:7>.maxStackSize = 16;
<immersiveengineering:metal:6>.maxStackSize = 16;
<techguns:itemshared:85>.maxStackSize = 16;
<thaumcraft:ingot>.maxStackSize = 16;
<thaumcraft:ingot:1>.maxStackSize = 16;
<thaumcraft:ingot:2>.maxStackSize = 16;
<twilightforest:ironwood_ingot>.maxStackSize = 16;
<twilightforest:fiery_ingot>.maxStackSize = 16;
<twilightforest:knightmetal_ingot>.maxStackSize = 16;
<twilightforest:steeleaf_ingot>.maxStackSize = 16;

<minecraft:lapis_block>.maxStackSize = 8;
<minecraft:gold_block>.maxStackSize = 8;
<minecraft:iron_block>.maxStackSize = 8;
<minecraft:diamond_block>.maxStackSize = 8;
<minecraft:emerald_block>.maxStackSize = 8;
<mysticalworld:copper_block>.maxStackSize = 8;
<minecraft:redstone_block>.maxStackSize = 8;
<minecraft:quartz_block>.maxStackSize = 8;
<forestry:resource_storage>.maxStackSize = 8;
<forestry:resource_storage:2>.maxStackSize = 8;
<forestry:resource_storage:3>.maxStackSize = 8;
<immersiveengineering:storage:0>.maxStackSize = 8;
<immersiveengineering:storage:1>.maxStackSize = 8;
<immersiveengineering:storage:2>.maxStackSize = 8;
<immersiveengineering:storage:3>.maxStackSize = 8;
<immersiveengineering:storage:4>.maxStackSize = 8;
<immersiveengineering:storage:5>.maxStackSize = 8;
<immersiveengineering:storage:6>.maxStackSize = 8;
<immersiveengineering:storage:7>.maxStackSize = 8;
<immersiveengineering:storage:8>.maxStackSize = 8;
<mysticalworld:amethyst_block>.maxStackSize = 8;
<pneumaticcraft:compressed_iron_block>.maxStackSize = 8;
<twilightforest:block_storage:1>.maxStackSize = 8;
<twilightforest:block_storage:2>.maxStackSize = 8;
<twilightforest:block_storage>.maxStackSize = 8;
<twilightforest:knightmetal_block>.maxStackSize = 8;
<minecraft:emerald>.maxStackSize = 64;



// ------------ SEEDS ---------------------------------
vanilla.seeds.removeSeed(<mysticalworld:aubergine_seed>);



// ------------ ORE STAGES ----------------------------
OreStages.addReplacement("fixes", <minecraft:iron_ore>, <geolosys:ore:0>);
OreStages.addReplacement("fixes", <minecraft:coal_ore>, <geolosys:ore_vanilla:0>);
OreStages.addReplacement("fixes", <minecraft:redstone_ore>, <geolosys:ore_vanilla:1>);
OreStages.addReplacement("fixes", <minecraft:gold_ore>, <geolosys:ore_vanilla:2>);
OreStages.addReplacement("fixes", <minecraft:lapis_ore>, <geolosys:ore_vanilla:3>);
OreStages.addReplacement("fixes", <minecraft:diamond_ore>, <geolosys:ore_vanilla:5>);
OreStages.addReplacement("fixes", <minecraft:emerald_ore>, <geolosys:ore_vanilla:6>);



// ------------ VEHUCLE -------------------------------
JEI.removeAndHide(<vehicle:workstation>);
JEI.removeAndHide(<hooked:hook:4>);
JEI.removeAndHide(<vehicle:fluid_mixer>);
JEI.removeAndHide(<vehicle:fluid_extractor>);
JEI.removeAndHide(<vehicle:fluid_pipe>);
JEI.removeAndHide(<vehicle:fluid_pump>);
JEI.removeAndHide(<vehicle:small_engine:*>);
JEI.removeAndHide(<vehicle:small_engine:*>);
JEI.removeAndHide(<vehicle:large_engine:*>);
JEI.removeAndHide(<vehicle:electric_engine:*>);
JEI.removeAndHide(<vehicle:wheel:1>);
JEI.removeAndHide(<vehicle:wheel:2>);
JEI.removeAndHide(<vehicle:wheel:3>);
JEI.removeAndHide(<vehicle:wheel:6>);
JEI.removeAndHide(<vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:bath"}}));
JEI.removeAndHide(<vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:couch"}}));
JEI.removeAndHide(<vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:shopping_cart"}}));
JEI.removeAndHide(<vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:sofacopter"}}));
JEI.removeAndHide(<vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:sports_plane"}}));
JEI.removeAndHide(<vehicle:atv_body>);
JEI.removeAndHide(<vehicle:handle_bar>);
JEI.removeAndHide(<vehicle:dune_buggy_body>);
JEI.removeAndHide(<vehicle:dune_buggy_handle_bar>);
JEI.removeAndHide(<vehicle:go_kart_body>);
JEI.removeAndHide(<vehicle:go_kart_steering_wheel>);
JEI.removeAndHide(<vehicle:shopping_cart_body>);
JEI.removeAndHide(<vehicle:mini_bike_body>);
JEI.removeAndHide(<vehicle:mini_bike_handle_bar>);
JEI.removeAndHide(<vehicle:bumper_car_body>);
JEI.removeAndHide(<vehicle:jet_ski_body>);
JEI.removeAndHide(<vehicle:speed_boat_body>);
JEI.removeAndHide(<vehicle:aluminum_boat_body>);
JEI.removeAndHide(<vehicle:smart_car_body>);
JEI.removeAndHide(<vehicle:lawn_mower_body>);
JEI.removeAndHide(<vehicle:moped_body>);
JEI.removeAndHide(<vehicle:moped_mud_guard>);
JEI.removeAndHide(<vehicle:moped_handle_bar>);
JEI.removeAndHide(<vehicle:sports_plane_body>);
JEI.removeAndHide(<vehicle:sports_plane_wing>);
JEI.removeAndHide(<vehicle:sports_plane_wheel_cover>);
JEI.removeAndHide(<vehicle:sports_plane_leg>);
JEI.removeAndHide(<vehicle:sports_plane_propeller>);
JEI.removeAndHide(<vehicle:golf_cart_body>);
JEI.removeAndHide(<vehicle:off_roader_body>);
JEI.removeAndHide(<vehicle:tractor_body>);
JEI.removeAndHide(<vehicle:trailer_body>);
JEI.removeAndHide(<vehicle:tow_bar>);
JEI.removeAndHide(<vehicle:fuel_port_closed>);
JEI.removeAndHide(<vehicle:fuel_port_lid>);
JEI.removeAndHide(<vehicle:fuel_port_body>);
JEI.removeAndHide(<vehicle:fuel_port_2_closed>);
JEI.removeAndHide(<vehicle:fuel_port_2_pipe>);
JEI.removeAndHide(<vehicle:key_hole>);
JEI.removeAndHide(<vehicle:couch_helicopter_arm>);
JEI.removeAndHide(<vehicle:couch_helicopter_skid>);



// ------------ OTHERS --------------------------------
recipes.remove(<sereneseasons:greenhouse_glass>);
JEI.removeAndHide(<bettermagnets:anti_magnet_block>);

val coin1   = <contenttweaker:coin_1>;
val coin5   = <contenttweaker:coin_5>;
val coin10  = <contenttweaker:coin_10>;
val coin50  = <contenttweaker:coin_50>;
val coin100 = <contenttweaker:coin_100>;
val coin500 = <contenttweaker:coin_500>;

// Coin Conversion
recipes.addShapeless(coin1 * 5, [coin5]);
recipes.addShapeless(coin5 * 2, [coin10]);
recipes.addShapeless(coin10 * 5, [coin50]);
recipes.addShapeless(coin50 * 2, [coin100]);
recipes.addShapeless(coin100 * 5, [coin500]);

recipes.addShapeless(coin5, [coin1, coin1, coin1, coin1, coin1]);
recipes.addShapeless(coin10, [coin5, coin5]);
recipes.addShapeless(coin10, [coin5, coin1, coin1, coin1, coin1, coin1]);
recipes.addShapeless(coin50, [coin10, coin10, coin10, coin10, coin10]);
recipes.addShapeless(coin50, [coin10, coin10, coin10, coin10, coin5, coin5]);
recipes.addShapeless(coin50, [coin10, coin10, coin10, coin5, coin5, coin5, coin5]);
recipes.addShapeless(coin50, [coin10, coin10, coin5, coin5, coin5, coin5, coin5, coin5]);
recipes.addShapeless(coin50, [coin10, coin5, coin5, coin5, coin5, coin5, coin5, coin5, coin5]);
recipes.addShapeless(coin100, [coin50, coin50]);
recipes.addShapeless(coin100, [coin50, coin10, coin10, coin10, coin10, coin10]);
recipes.addShapeless(coin100, [coin50, coin10, coin10, coin10, coin10, coin5, coin5]);
recipes.addShapeless(coin100, [coin50, coin10, coin10, coin10, coin5, coin5, coin5, coin5]);
recipes.addShapeless(coin100, [coin50, coin10, coin10, coin5, coin5, coin5, coin5, coin5, coin5]);
recipes.addShapeless(coin500, [coin100, coin100, coin100, coin100, coin100]);
recipes.addShapeless(coin500, [coin100, coin100, coin100, coin100, coin50, coin50]);
recipes.addShapeless(coin500, [coin100, coin100, coin100, coin50, coin50, coin50, coin50]);
recipes.addShapeless(coin500, [coin100, coin100, coin50, coin50, coin50, coin50, coin50, coin50]);
recipes.addShapeless(coin500, [coin100, coin50, coin50, coin50, coin50, coin50, coin50, coin50, coin50]);

recipes.remove(<minecraft:mob_spawner>);
recipes.remove(<cfm:stone_path>);


val fromToConversions = {
	"stainedWoodWhite" : [ <quark:stained_planks:0>, <rustic:painted_wood_white> ],
	"stainedWoodWhite2" : [ <rustic:painted_wood_white>, <littletiles:ltcoloredblock:13> ],
	"stainedWoodOrange" : [ <quark:stained_planks:1>, <rustic:painted_wood_orange> ],
	"stainedWoodMagenta" : [ <quark:stained_planks:2>, <rustic:painted_wood_magenta> ],
	"stainedWoodLightBlue" : [ <quark:stained_planks:3>, <rustic:painted_wood_light_blue> ],
	"stainedWoodYellow" : [ <quark:stained_planks:4>, <rustic:painted_wood_yellow> ],
	"stainedWoodLime" : [ <quark:stained_planks:5>, <rustic:painted_wood_lime> ],
	"stainedWoodPink" : [ <quark:stained_planks:6>, <rustic:painted_wood_pink> ],
	"stainedWoodGray" : [ <quark:stained_planks:7>, <rustic:painted_wood_gray> ],
	"stainedWoodLightGray" : [ <quark:stained_planks:8>, <rustic:painted_wood_silver> ],
	"stainedWoodCyan" : [ <quark:stained_planks:9>, <rustic:painted_wood_cyan> ],
	"stainedWoodPurple" : [ <quark:stained_planks:10>, <rustic:painted_wood_purple> ],
	"stainedWoodBlue" : [ <quark:stained_planks:11>, <rustic:painted_wood_blue> ],
	"stainedWoodBrown" : [ <quark:stained_planks:12>, <rustic:painted_wood_brown> ],
	"stainedWoodGreen" : [ <quark:stained_planks:13>, <rustic:painted_wood_green> ],
	"stainedWoodRed" : [ <quark:stained_planks:14>, <rustic:painted_wood_red> ],
	"stainedWoodBlack" : [ <quark:stained_planks:15>, <rustic:painted_wood_black> ],
	"andesiteRoad" : [ <chineseworkshop:andesite_pavement>, <railcraft:brick_andesite:3> ],
	"mudBlock" : [ <earthworks:block_mud>, <mysticalworld:wet_mud_block> ],
	"fleshBlock" : [ <charm:rotten_flesh_block>, <thaumcraft:flesh_block> ],
	"andesiteFence" : [ <chineseworkshop:andesite_fence>, <quark:stone_andesite_wall> ],
	"dioriteFence" : [ <chineseworkshop:diorite_fence>, <quark:stone_diorite_wall> ],
	"thatchBlock" : [ <earthworks:block_thatch>, <quark:thatch> ],
	"stonePath" : [ <cfm:stone_path>, <inspirations:path:2> ],
} as IItemStack[][string];


for index, key in fromToConversions {
	recipes.addShapeless(index ~ "from", key[0], [key[1]]);
	recipes.addShapeless(index ~ "to", key[1], [key[0]]);
}


// ------------ LOOT TABLES ---------------------------
val goblin = LootTables.getTable("primitivemobs:entities/goblin");
val goblinDrops = goblin.getPool("goblin_drops");
goblinDrops.removeEntry("minecraft:iron_ingot");
goblinDrops.addItemEntryHelper(<immersiveengineering:metal:29>, 1, 1, [Functions.setCount(2, 6)], [Conditions.killedByPlayer()]);

mods.ltt.LootTable.removeGlobalItem("forestry:miner_bag");
mods.ltt.LootTable.removeGlobalItem("forestry:digger_bag");
mods.ltt.LootTable.removeGlobalItem("forestry:forester_bag");
mods.ltt.LootTable.removeGlobalItem("forestry:hunter_bag");
mods.ltt.LootTable.removeGlobalItem("forestry:adventurer_bag");
mods.ltt.LootTable.removeGlobalItem("forestry:builder_bag");

mods.ltt.LootTable.removeGlobalItem("railcraft:armor_boots_steel");
mods.ltt.LootTable.removeGlobalItem("railcraft:ingot");
mods.ltt.LootTable.removeGlobalItem("railcraft:tool_crowbar_seasons");



// ------------ TOOLTIPS ------------------------------
<contenttweaker:geode_aer>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<contenttweaker:geode_aqua>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<contenttweaker:geode_ignis>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<contenttweaker:geode_terra>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<contenttweaker:geode_ordo>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<contenttweaker:geode_perditio>.addTooltip(format.green("Can be mined by the Minecolonist Miner"));
<immersiveengineering:metal_device1:13>.addTooltip(format.green("Requires 256 rf/t"));
<minecraft:diamond_block>.addTooltip(format.green("Used to open the Twilight Forest portal"));
<thaumcraft:amber>.addTooltip(format.green("Rarely found when chopping down Greatwood Trees"));


<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "cider"}}).addTooltip(format.green("Only quality 1.0 is accepted by the Bounty Board"));