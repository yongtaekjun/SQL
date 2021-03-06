-- Use DB: RecipesExample

-- pick two recipes find common ingredient 2017-12-08

select ingredients.ingredientname from ingredients 
where ingredients.ingredientID in (
	select ingredientid from Recipe_Ingredients 
	inner join recipes 
	on recipes.RecipeID = Recipe_Ingredients.RecipeID
	where recipes.recipeid in (
		select recipeid from dbo.recipes
		where recipeTitle = 'Tourtière (French-Canadian Pork Pie)' or recipeTitle = 'Roast Beef'
	)
	group by  Recipe_Ingredients.ingredientID
	having count(Recipe_Ingredients.ingredientID ) > 1
)		

/* Fettuccini Alfredo
Irish Stew
Salsa Buena
Machos Nachos
Garlic Green Beans
Fettuccini Alfredo
Pollo Picoso
Mike's Summer Salad
Trifle
Roast Beef
Yorkshire Pudding
Huachinango Veracruzana (Red Snapper, Veracruz style)
Asparagus
Tourtière (French-Canadian Pork Pie)
Salmon Filets in Parchment Paper
Coupe Colonel
*/







--- Requirment : List the recipe using mushroom as one of the ingredients
--- Method 0 --Diffrent Result -------------------------------------------
select distinct recipes.RecipeTitle from  recipes
inner join Recipe_Ingredients on recipes.RecipeID = Recipe_Ingredients.RecipeID
where Recipe_Ingredients.IngredientID in (
select distinct Recipe_Ingredients.IngredientID from Recipe_Ingredients 
	inner join ingredients on ingredients.IngredientID  in (
		select ingredients.IngredientID from ingredients
		where ingredients.IngredientName like '%ushr%'
	)
)

--- Method 1 ------------------------------------------------------------
select recipes.RecipeTitle from  recipes
inner join Recipe_Ingredients on recipes.RecipeID = Recipe_Ingredients.RecipeID
where Recipe_Ingredients.IngredientID in (
	select Recipe_Ingredients.IngredientID from Recipe_Ingredients 
	inner join ingredients on ingredients.IngredientID = Recipe_Ingredients.IngredientID
	where ingredients.IngredientID in (
		select ingredients.IngredientID from ingredients
		where ingredients.IngredientName like '%ushr%'
	)
)

--- Method 2 ------------------------------------------------------------ 
select   distinct ingredients.ingredientname ,recipes.recipeTitle
from ingredients, recipe_ingredients, recipes 
where 	recipes.RecipeID = Recipe_Ingredients.RecipeID
and Recipe_Ingredients.IngredientID = ingredients.IngredientID
and	ingredients.IngredientName like '%ushro%'


--- Requirement : list all the ingredient for Yorkshire Pudding
--- Method 1 ------------------------------------------------------------ 
select distinct ingredientname from ingredients inner join
recipe_ingredients on 
	Recipe_Ingredients.IngredientID = ingredients.IngredientID
where ingredients.ingredientID in (
	select ingredientid from Recipe_Ingredients 
	inner join recipes on 
	recipes.RecipeID = Recipe_Ingredients.RecipeID
	where recipes.recipeid = (
		select recipeid from dbo.recipes
		where recipeTitle = 'Yorkshire Pudding'
	)
)
--- Method 2 ------------------------------------------------------------ 
select   distinct ingredients.ingredientname ,recipes.recipeTitle
from ingredients, recipe_ingredients, recipes 
where 	recipes.RecipeID = Recipe_Ingredients.RecipeID
and Recipe_Ingredients.IngredientID = ingredients.IngredientID
and	recipes.recipeTitle = 'Yorkshire Pudding'


