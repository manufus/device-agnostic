import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/cards_data.dart';
import '../controllers/recipe_controller.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();

  final RecipeController recipeController = Get.find<RecipeController>();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  final List<Map<String, String>> _ingredients = [];
  final List<Map<String, String>> _steps = [];

  final TextEditingController _ingredientNameController =
      TextEditingController();
  final TextEditingController _ingredientAmountController =
      TextEditingController();
  final TextEditingController _stepTitleController = TextEditingController();
  final TextEditingController _stepDescriptionController =
      TextEditingController();
  final TextEditingController _stepImageController = TextEditingController();

  String? _selectedCuisine;

  @override
  void initState() {
    super.initState();
    _imageController.addListener(_updateImagePreview);
  }

  @override
  void dispose() {
    _imageController.removeListener(_updateImagePreview);
    _imageController.dispose();
    super.dispose();
  }

  void _updateImagePreview() {
    setState(() {});
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> newRecipe = {
        "id": recipeController.recipeList.length + 1,
        "name": _titleController.text,
        "description": _descriptionController.text,
        "image": _imageController.text,
        "cuisine": _selectedCuisine ?? "Unknown",
        "isFavorite": false,
        "isUserCreated": true,
        "ingredients": _ingredients,
        "steps": _steps,
      };

      recipeController.addRecipe(newRecipe);

      Navigator.pop(context);
    }
  }

  void _addIngredient() {
    if (_ingredientNameController.text.isNotEmpty &&
        _ingredientAmountController.text.isNotEmpty) {
      setState(() {
        _ingredients.add({
          "name": _ingredientNameController.text,
          "amount": _ingredientAmountController.text,
        });
        _ingredientNameController.clear();
        _ingredientAmountController.clear();
      });
    }
  }

  void _addStep() {
    if (_stepTitleController.text.isNotEmpty &&
        _stepDescriptionController.text.isNotEmpty &&
        _stepImageController.text.isNotEmpty) {
      setState(() {
        _steps.add({
          "title": _stepTitleController.text,
          "description": _stepDescriptionController.text,
          "image": _stepImageController.text,
        });
        _stepTitleController.clear();
        _stepDescriptionController.clear();
        _stepImageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Recipe')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _imageController,
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an image URL';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              if (_imageController.text.isNotEmpty)
                Center(
                  child: Image.network(
                    _imageController.text,
                    height: 150,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Text(
                        'Invalid URL',
                        style: TextStyle(color: Colors.red),
                      );
                    },
                  ),
                ),
              SizedBox(height: 24),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: "Cuisine"),
                value: _selectedCuisine,
                items: cuisinesData.map((cuisine) {
                  return DropdownMenuItem<String>(
                    value: cuisine['name'],
                    child: Text(cuisine['name']!),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCuisine = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a cuisine';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              Text(
                "Ingredients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: _ingredients.map((ingredient) {
                  return ListTile(
                    title:
                        Text("${ingredient['amount']} ${ingredient['name']}"),
                  );
                }).toList(),
              ),
              TextFormField(
                controller: _ingredientNameController,
                decoration: InputDecoration(labelText: 'Ingredient Name'),
              ),
              TextFormField(
                controller: _ingredientAmountController,
                decoration: InputDecoration(labelText: 'Amount'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFAE451F),
                  foregroundColor: const Color(0xFFFFFFFF),
                ),
                onPressed: _addIngredient,
                child: Text('Add Ingredient'),
              ),
              SizedBox(height: 24),
              Text(
                "Steps",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: _steps.map((step) {
                  return ListTile(
                    title: Text(step['title']!),
                    subtitle: Text(step['description']!),
                  );
                }).toList(),
              ),
              TextFormField(
                controller: _stepTitleController,
                decoration: InputDecoration(labelText: 'Step Title'),
              ),
              TextFormField(
                controller: _stepDescriptionController,
                decoration: InputDecoration(labelText: 'Step Description'),
              ),
              TextFormField(
                controller: _stepImageController,
                decoration: InputDecoration(labelText: 'Step Image URL'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFAE451F),
                  foregroundColor: const Color(0xFFFFFFFF),
                ),
                onPressed: _addStep,
                child: Text('Add Step'),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFAE451F),
                  foregroundColor: const Color(0xFFFFFFFF),
                ),
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
