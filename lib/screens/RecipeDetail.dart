import 'package:flutter/material.dart';
import 'package:flutter_apprentice/model/Recipe_model.dart';
import 'package:flutter_apprentice/model/ingredients.dart';
import 'package:flutter_apprentice/shared/custom_app_bar.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipeModel});

  final RecipeModel recipeModel;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: widget.recipeModel.name!,
          onBack: () {
            Navigator.of(context).pop();
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image(
                  image: AssetImage(widget.recipeModel.imageUrl!),
                  fit: BoxFit.fill,
                ),
              ),const SizedBox(
                height: 16,
              ),
              Text(
                widget.recipeModel.name!,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.recipeModel.ingredients?.length,
                    itemBuilder: (context, index) {
                      return buildIngredientText(
                          widget.recipeModel.ingredients![index],
                          index,
                          _sliderValue);
                    }),
              ),
              Slider(
                  value: _sliderValue.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value.round();
                    });
                  },
                  min: 0,
                  max: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                  divisions: 10,
                  thumbColor: Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildIngredientText(Ingredients ingredient, int index, int sliderValue) {
  return Text(
      "${index + 1}) ${ingredient.quantity! * sliderValue} ${ingredient.unit} of ${ingredient.name}");
}
