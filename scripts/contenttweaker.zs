#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.contenttweaker.AxisAlignedBB;


val crystalTypes = ["aer", "terra", "ignis", "aqua", "ordo", "perditio"] as string[];

for crystalType in crystalTypes {
    var crystal = VanillaFactory.createItem("geode_" ~ crystalType);
	crystal.register();
}


val toolMolds = [
	"axe",
	"cross_guard",
	"dagger",
	"hammer",
	"handpick",
	"hoe",
	"mace",
	"pickaxe",
	"shovel",
	"sword_blade"
] as string[];

for toolMold in toolMolds {
    var mold = VanillaFactory.createItem("mold_" ~ toolMold);
	mold.register();
}


val coinValues = [
	1,
	5,
	10,
	50,
	100,
	500
] as int[];

for coinValue in coinValues {
    var coin = VanillaFactory.createItem("coin_" ~ coinValue);
	coin.register();
}