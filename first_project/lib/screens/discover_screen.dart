import 'package:flutter/material.dart';
import '../data/cards_data.dart';
import 'package:get/get.dart';
import '../screens/filtered_recipes_screen.dart';
import '../widgets/custom_horizontal_card.dart';
import '../widgets/overlay_card.dart';
import '../controllers/recipe_controller.dart';
import '../widgets/responsive_widget.dart';

class DiscoverScreen extends StatelessWidget {
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Cuisines',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 1,
              ),
              itemCount: cuisinesData.length,
              itemBuilder: (context, index) {
                final cuisine = cuisinesData[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(() => FilteredRecipesScreen(
                          cuisineName: cuisine['name']!,
                        ));
                  },
                  child: OverlayCard(
                    title: cuisine['name']!,
                    image: cuisine['image']!,
                  ),
                );
              },
            ),
            SizedBox(height: 32),
            Text(
              'Trending',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
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
                    'Explore Cuisines',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 1.2,
                      ),
                      itemCount: cuisinesData.length,
                      itemBuilder: (context, index) {
                        final cuisine = cuisinesData[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => FilteredRecipesScreen(
                                  cuisineName: cuisine['name']!,
                                ));
                          },
                          child: OverlayCard(
                            title: cuisine['name']!,
                            image: cuisine['image']!,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView(children: trends),
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
