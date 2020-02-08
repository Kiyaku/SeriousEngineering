#priority 9999
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;


global oreDictTypes as IOreDictEntry[string][string] = {
	iron: {
		ore: <ore:oreIron>,
		block: <ore:blockIron>,
		nugget: <ore:nuggetIron>,
		ingot: <ore:ingotIron>,
		plate: <ore:plateIron>
	},
	gold: {
		ore: <ore:oreGold>,
		block: <ore:blockGold>,
		nugget: <ore:nuggetGold>,
		ingot: <ore:ingotGold>,
		plate: <ore:plateGold>
	},
	copper: {
		ore: <ore:oreCopper>,
		block: <ore:blockCopper>,
		nugget: <ore:nuggetCopper>,
		ingot: <ore:ingotCopper>,
		plate: <ore:plateCopper>
	}
} as IOreDictEntry[string][string];


global preferredItems as IItemStack[string][string] = {
	iron: {
		ore: <geolosys:cluster:0>,
		block: <minecraft:iron_block>,
		nugget: <immersiveengineering:metal:29>,
		ingot: <minecraft:iron_ingot>,
		plate: <immersiveengineering:metal:39>
	},
	gold: {
		ore: <geolosys:cluster:1>,
		block: <minecraft:gold_block>,
		nugget: <minecraft:gold_nugget>,
		ingot: <minecraft:gold_ingot>,
		plate: <immersiveengineering:metal:40>
	},
	copper: {
		ore: <geolosys:cluster:2>,
		block: <immersiveengineering:storage>,
		nugget: <immersiveengineering:metal:20>,
		ingot: <immersiveengineering:metal>,
		plate: <immersiveengineering:metal:30>
	}
} as IItemStack[string][string];

/*


function unifyOres(metalName as string, key as string, oreDict as IOreDictEntry) {
	print(oreDict.firstItem.name);

    for item in oreDict.items {
		oreDict.remove(item);
	}

	oreDict.add(preferredItems[metalName].key);
}


for metalName, oreDict in oreDictTypes {
	print("Metal Name: " + metalName);

	for key in oreDictTypes[metalName] {
		print("Key: " + key);
		unifyOres(metalName, key, oreDictTypes[metalName].key);
	}

}

// Turn ingots into plates
for key, value in metalTypes {
	recipes.remove(metalTypes[key].plate);

	RecipeBuilder.get("blacksmith")
	  .setShaped([
	    [metalTypes[key].ingot, metalTypes[key].ingot]])
	  .addTool(<ore:artisansHammer>, 1)
	  .addOutput(metalTypes[key].plate.firstItem)
	  .create();
}
*/