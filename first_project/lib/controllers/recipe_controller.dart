import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'dart:math';
import '../data/predefined_recipes.dart';

class RecipeController extends GetxController {
  var recipeList = <Map<String, dynamic>>[].obs;
  late Box recipeBox;

  @override
  void onInit() {
    super.onInit();
    recipeBox = Hive.box('recipesBox');
    loadRecipes();
  }

  void loadRecipes() {
    final userCreatedRecipes = recipeBox.values
        .map((recipe) => Map<String, dynamic>.from(recipe as Map))
        .toList();
    recipeList.value = [...predefinedRecipes, ...userCreatedRecipes];
  }

  void toggleFavorite(int recipeId) {
    int index = recipeList.indexWhere((recipe) => recipe['id'] == recipeId);
    if (index != -1) {
      recipeList[index]['isFavorite'] =
          !(recipeList[index]['isFavorite'] as bool);

      if (recipeList[index]['isUserCreated'] == true) {
        int hiveIndex = index - predefinedRecipes.length;
        recipeBox.putAt(hiveIndex, recipeList[index]);
      }

      recipeList.refresh();
    }
  }

  List<Map<String, dynamic>> getFavoriteRecipes() {
    return recipeList.where((recipe) => recipe['isFavorite'] == true).toList();
  }

  List<Map<String, dynamic>> getSortedRecipes() {
    List<Map<String, dynamic>> sortedRecipes = List.from(recipeList);
    sortedRecipes.sort((a, b) {
      if (a['isUserCreated'] == true && b['isUserCreated'] == false) {
        return -1;
      } else if (a['isUserCreated'] == false && b['isUserCreated'] == true) {
        return 1;
      }
      return 0;
    });
    return sortedRecipes;
  }

  void addRecipe(Map<String, dynamic> recipe) {
    recipe['isUserCreated'] = true;
    recipeBox.add(recipe);
    loadRecipes();
  }

  void deleteRecipe(int recipeId) {
    int index = recipeList.indexWhere((recipe) => recipe['id'] == recipeId);

    if (index != -1 && recipeList[index]['isUserCreated'] == true) {
      int hiveIndex = index - predefinedRecipes.length;
      recipeBox.deleteAt(hiveIndex);
      loadRecipes();
    }
  }

  List<Map<String, dynamic>> getRandomRecipes(int count) {
    final random = Random();
    List<Map<String, dynamic>> randomRecipes = List.from(predefinedRecipes);
    randomRecipes.shuffle(random);
    return randomRecipes.take(count).toList();
  }
}
