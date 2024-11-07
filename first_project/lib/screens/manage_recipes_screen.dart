import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/recipe_controller.dart';
import '../widgets/custom_horizontal_card.dart';
import 'add_recipe_screen.dart';
import '../widgets/responsive_widget.dart';

class ManageRecipesScreen extends StatelessWidget {
  final RecipeController recipeController = Get.find<RecipeController>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset(
          'assets/logo/YumVerse_logo.png',
          height: 30,
          fit: BoxFit.contain,
        )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Favorites',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Obx(() {
              final favoriteRecipes = recipeController.recipeList
                  .where((recipe) => recipe['isFavorite'] == true)
                  .toList();

              if (favoriteRecipes.isEmpty) {
                return Center(child: Text('No favorite recipes found.'));
              }

              return Column(
                children: favoriteRecipes.map((recipe) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/recipes/${recipe['id']}');
                      },
                      child: CustomHorizontalCard(
                        title: recipe['name'],
                        description: recipe['description'],
                        image: recipe['image'],
                      ),
                    ),
                  );
                }).toList(),
              );
            }),
            SizedBox(height: 32),
            Text(
              'All Recipes',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Obx(() {
              final sortedRecipes = recipeController.getSortedRecipes();
              final userCreatedCount = sortedRecipes
                  .where((recipe) => recipe['isUserCreated'] == true)
                  .length;

              if (sortedRecipes.isEmpty) {
                return Center(child: Text('No recipes available.'));
              }

              return Column(
                children: [
                  Column(
                    children: sortedRecipes.map((recipe) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed('/recipes/${recipe['id']}');
                                },
                                child: CustomHorizontalCard(
                                  title: recipe['name'],
                                  description: recipe['description'],
                                  image: recipe['image'],
                                ),
                              ),
                            ),
                            if (recipe['isUserCreated'] == true)
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  recipeController.deleteRecipe(
                                    recipe['id'],
                                  );
                                },
                              ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Recipes created by user: $userCreatedCount',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddRecipeScreen());
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color(0xFFAE451F),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Favorites',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: Obx(() {
                      final favoriteRecipes = recipeController.recipeList
                          .where((recipe) => recipe['isFavorite'] == true)
                          .map((recipe) => GestureDetector(
                                onTap: () {
                                  Get.toNamed('/recipes/${recipe['id']}');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: CustomHorizontalCard(
                                    title: recipe['name'],
                                    description: recipe['description'],
                                    image: recipe['image'],
                                  ),
                                ),
                              ))
                          .toList();

                      if (favoriteRecipes.isEmpty) {
                        return Center(
                            child: Text('No favorite recipes found.'));
                      }

                      return ListView(children: favoriteRecipes);
                    }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Recipes',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: Obx(() {
                      final sortedRecipes = recipeController.getSortedRecipes();
                      final userCreatedCount = sortedRecipes
                          .where((recipe) => recipe['isUserCreated'] == true)
                          .length;

                      if (sortedRecipes.isEmpty) {
                        return Center(child: Text('No recipes available.'));
                      }

                      return Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: sortedRecipes.map((recipe) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.toNamed(
                                                '/recipes/${recipe['id']}');
                                          },
                                          child: CustomHorizontalCard(
                                            title: recipe['name'],
                                            description: recipe['description'],
                                            image: recipe['image'],
                                          ),
                                        ),
                                      ),
                                      if (recipe['isUserCreated'] == true)
                                        IconButton(
                                          icon: Icon(Icons.delete),
                                          onPressed: () {
                                            recipeController.deleteRecipe(
                                              recipe['id'],
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Recipes created by user: $userCreatedCount',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(() => AddRecipeScreen());
      //   },
      //   child: Icon(Icons.add, color: Colors.white),
      //   backgroundColor: Color(0xFFAE451F),
      // ),
    );
  }
}
