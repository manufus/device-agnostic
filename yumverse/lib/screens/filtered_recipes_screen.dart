import 'package:flutter/material.dart';
import '../data/predefined_recipes.dart';
import '../widgets/custom_horizontal_card.dart';
import 'package:get/get.dart';
import '../widgets/responsive_widget.dart';

class FilteredRecipesScreen extends StatelessWidget {
  final String cuisineName;

  FilteredRecipesScreen({required this.cuisineName});

  @override
  Widget build(BuildContext context) {
    final filteredRecipes = filterRecipesByCuisine(cuisineName);

    return ResponsiveWidget(
      mobile: _buildMobileLayout(filteredRecipes),
      tablet: _buildTabletLayout(filteredRecipes),
    );
  }

  Widget _buildMobileLayout(List<Map<String, dynamic>> filteredRecipes) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$cuisineName Recipes'),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          final recipe = filteredRecipes[index];
          return GestureDetector(
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
          );
        },
      ),
    );
  }

  Widget _buildTabletLayout(List<Map<String, dynamic>> filteredRecipes) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$cuisineName Recipes'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 3,
          ),
          itemCount: filteredRecipes.length,
          itemBuilder: (context, index) {
            final recipe = filteredRecipes[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed('/recipes/${recipe['id']}');
              },
              child: CustomHorizontalCard(
                title: recipe['name'],
                description: recipe['description'],
                image: recipe['image'],
              ),
            );
          },
        ),
      ),
    );
  }
}
