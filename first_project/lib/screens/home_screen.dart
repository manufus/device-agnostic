import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/responsive_widget.dart';
import '../widgets/custom_vertical_card.dart';
import '../widgets/custom_horizontal_card.dart';
import '../controllers/recipe_controller.dart';

class HomeScreen extends StatelessWidget {
  final RecipeController recipeController = Get.find<RecipeController>();

  @override
  Widget build(BuildContext context) {
    final trends = recipeController
        .getRandomRecipes(5)
        .map(
          (recipe) => GestureDetector(
            onTap: () {
              Get.toNamed('/recipes/${recipe['id']}');
            },
            child: CustomHorizontalCard(
              title: recipe['name'],
              description: recipe['description'],
              image: recipe['image'],
            ),
          ),
        )
        .toList();

    return ResponsiveWidget(
      mobile: _buildMobileLayout(trends),
      tablet: _buildTabletLayout(trends),
    );
  }

  Widget _buildMobileLayout(List<Widget> trends) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset('assets/logo/YumVerse_logo.png', height: 30)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Your Favorites!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Obx(() {
              final favorites = recipeController.recipeList
                  .where((recipe) => recipe['isFavorite'] == true)
                  .toList();

              return favorites.isEmpty
                  ? Center(child: Text('No favorite recipes found.'))
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: favorites.map((recipe) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed('/recipes/${recipe['id']}');
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomVerticalCard(
                                title: recipe['name'],
                                subtitle: '',
                                image: recipe['image'],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
            }),
            SizedBox(height: 24),
            Text(
              "Latest Trends",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(children: trends),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout(List<Widget> trends) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Favorites!",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Expanded(
                                child: Obx(() {
                                  final favorites = recipeController.recipeList
                                      .where((recipe) =>
                                          recipe['isFavorite'] == true)
                                      .map((recipe) => GestureDetector(
                                            onTap: () {
                                              Get.toNamed(
                                                  '/recipes/${recipe['id']}');
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 16.0),
                                              child: CustomHorizontalCard(
                                                title: recipe['name'],
                                                description:
                                                    recipe['description'],
                                                image: recipe['image'],
                                              ),
                                            ),
                                          ))
                                      .toList();

                                  return ListView(children: favorites);
                                }),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Latest Trends",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Expanded(child: ListView(children: trends)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
