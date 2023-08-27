import 'ingredients.dart';

class RecipeModel {
  RecipeModel({
      this.name, 
      this.imageUrl, 
      this.ingredients, 
      this.servings,});

  RecipeModel.fromJson(dynamic json) {
    name = json['name'];
    imageUrl = json['imageUrl'];
    if (json['ingredients'] != null) {
      ingredients = [];
      json['ingredients'].forEach((v) {
        ingredients?.add(Ingredients.fromJson(v));
      });
    }
    servings = json['servings'];
  }
  String? name;
  String? imageUrl;
  List<Ingredients>? ingredients;
  int? servings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['imageUrl'] = imageUrl;
    if (ingredients != null) {
      map['ingredients'] = ingredients?.map((v) => v.toJson()).toList();
    }
    map['servings'] = servings;
    return map;
  }

}