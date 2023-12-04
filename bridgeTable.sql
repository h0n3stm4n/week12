INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 1);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 2);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 3);
INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 4);


INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 5);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 6);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 7);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 1);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 8);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 9);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 3);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 4);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 10);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (2, 11);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 1);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 12);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 13);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 14);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 15);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (3, 16);

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;

