const express = require('express');
const db = require('../db');
const router = express.Router();

router.get('/', async (req, res) => {

    try {
        const recipeQuery = 'SELECT id, recipeName, instructions FROM recipe ORDER BY RANDOM() LIMIT 1;';

        const recipeResult = await db.query(recipeQuery);
        const chosenRecipe = recipeResult.rows[0]; //selectedRecipe
        const ingredientsQuery = 'SELECT b.ingredientName FROM ingredient b INNER JOIN IngredientInRecipe c ON b.id = c.ingredientId WHERE c.recipeId = $1;';

        const ingredientsResult = await db.query(ingredientsQuery, [chosenRecipe.id]);

        const ingredients = ingredientsResult.rows.map(element => element.ingredientname);

        const randomRecipe = {
            recipe: chosenRecipe,
            ingredients: ingredients
        };

        res.json(randomRecipe);
    }
    catch(error) {
        console.log(error);
        res.status(500).json({error: 'Internal Server error.'});
    };
});

module.exports = router;