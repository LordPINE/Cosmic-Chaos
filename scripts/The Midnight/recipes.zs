import crafttweaker.item.IItemStack;
print("==================== loading The Midnight/recipes.zs ====================");
##########################################################################################



// Useless Plants are no longer useless
val uselessPlants as IItemStack[] = [
<midnight:ghost_plant>,
<midnight:deceitful_moss>,
<midnight:bogweed>,
<midnight:violeaf>,
<midnight:fingered_grass>,
<midnight:double_lumen_bud>,
<midnight:lumen_bud>,
] as IItemStack[];

for item in uselessPlants {
	compressor.recipeBuilder()
		.inputs(item*8)
		.outputs(<metaitem:plant_ball>)
		.duration(15*20).EUt(2).buildAndRegister();
}

<recipemap:mixer>.recipeBuilder()
	.inputs(<ore:dustTenebrum>)
	.inputs(<midnight:nightshroom_powder> * 4)
	.fluidInputs(<liquid:red_crystal_alloy> * 250)
	.outputs(<ore:dustShadowflame>.firstItem)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

##########################################################################################
print("==================== end of The Midnight/recipes.zs ====================");