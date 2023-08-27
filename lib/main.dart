import 'package:flutter/material.dart';
import 'package:flutter_apprentice/model/Recipe_model.dart';
import 'package:flutter_apprentice/model/recipe_repo.dart';
import 'package:flutter_apprentice/screens/RecipeDetail.dart';

main(){
  runApp(const RecipeApp());
}

class RecipeApp extends StatefulWidget{
  const RecipeApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RecipeAppState();
  }
}

class _RecipeAppState extends State<RecipeApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RecipeApp",
      theme: ThemeData.dark(useMaterial3: true),
      home: const RecipeListPage(),
    );
  }
}

class RecipeListPage extends StatefulWidget {
  const RecipeListPage({super.key});

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  @override
  Widget build(BuildContext context) {
    List<RecipeModel> recipeList = RecipeRepo.recipeList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (context, index){
          return buildRecipeCard(context, recipeList[index]);
        }
      )
    );
  }
}

Widget buildRecipeCard(BuildContext context, RecipeModel recipeModel) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return RecipeDetail(recipeModel: recipeModel);
      }));
    },
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage(recipeModel.imageUrl!)),
            Text(recipeModel.name!),
          ],
        ),
      ),
    ),
  );
}


