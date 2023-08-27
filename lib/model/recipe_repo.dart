import 'package:flutter_apprentice/model/Recipe_model.dart';
import 'package:flutter_apprentice/model/ingredients.dart';

class RecipeRepo {
  static List<RecipeModel> recipeList = [
    RecipeModel(
        name: "Maggie",
        imageUrl: "assets/maggie.jpeg",
        servings: 5,
        ingredients: [
          Ingredients(name: "Maggie", quantity: 2, unit: "Pouch"),
          Ingredients(name: "water", quantity: 4, unit: "cup"),
          Ingredients(name: "Maggie masala", quantity: 2, unit: "spoon")
        ]),RecipeModel(
        name: "Maggie 1",
        imageUrl: "assets/maggie.jpeg",
        servings: 5,
        ingredients: [
          Ingredients(name: "Maggie", quantity: 2, unit: "Pouch"),
          Ingredients(name: "water", quantity: 4, unit: "cup"),
          Ingredients(name: "Maggie masala", quantity: 2, unit: "spoon")
        ]),RecipeModel(
        name: "Maggie 2",
        imageUrl: "assets/maggie.jpeg",
        servings: 5,
        ingredients: [
          Ingredients(name: "Maggie", quantity: 2, unit: "Pouch"),
          Ingredients(name: "water", quantity: 4, unit: "cup"),
          Ingredients(name: "Maggie masala", quantity: 2, unit: "spoon")
        ]),RecipeModel(
        name: "Maggie 3",
        imageUrl: "assets/maggie.jpeg",
        servings: 5,
        ingredients: [
          Ingredients(name: "Maggie", quantity: 2, unit: "Pouch"),
          Ingredients(name: "water", quantity: 4, unit: "cup"),
          Ingredients(name: "Maggie masala", quantity: 2, unit: "spoon")
        ]),
  ];
}
