import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/recipe_controller.dart';

class RecipeDetailScreen extends StatelessWidget {
  final RecipeController recipeController = Get.find<RecipeController>();

  @override
  Widget build(BuildContext context) {
    final recipeId = int.parse(Get.parameters['id']!);
    final recipe = recipeController.recipeList.firstWhere(
      (recipe) => recipe['id'] == recipeId,
      orElse: () => {},
    );

    if (recipe.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text("Recipe Not Found")),
        body: Center(child: Text("No recipe details available.")),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                recipe["name"],
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                final updatedRecipe = recipeController.recipeList
                    .firstWhere((recipe) => recipe['id'] == recipeId);

                return IconButton(
                  icon: Icon(
                    updatedRecipe['isFavorite'] == true
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: updatedRecipe['isFavorite'] == true
                        ? Colors.red
                        : Colors.grey,
                  ),
                  onPressed: () {
                    recipeController.toggleFavorite(recipeId);
                  },
                );
              }),
              Text(
                "Favorite",
                style: TextStyle(fontSize: 8, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (recipe["image"].startsWith('http') ||
                    recipe["image"].startsWith('https'))
                ? Image.network(recipe["image"], fit: BoxFit.cover)
                : Image.asset(recipe["image"], fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              recipe["description"],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe["ingredients"].map<Widget>((ingredient) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text("${ingredient['amount']} ${ingredient['name']}"),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
            Text(
              'Steps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe["steps"].map<Widget>((step) {
                return Card(
                  color: Color(0xFFFCEDCB),
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (step["image"] != null)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: (step["image"].startsWith('http') ||
                                    step["image"].startsWith('https'))
                                ? Image.network(step["image"],
                                    fit: BoxFit.cover)
                                : Image.asset(step["image"], fit: BoxFit.cover),
                          ),
                        SizedBox(height: 8),
                        Text(
                          step["title"],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(step["description"]),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
