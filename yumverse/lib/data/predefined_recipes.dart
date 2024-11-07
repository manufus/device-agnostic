final List<Map<String, dynamic>> predefinedRecipes = [
  {
    "id": 1,
    "name": "Delicious Pancakes",
    "image": "assets/images/pancakes.jpg",
    "description": "Fluffy and light pancakes, perfect for breakfast.",
    "cuisine": "American",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Flour", "amount": "2 cups"},
      {"name": "Milk", "amount": "1.5 cups"},
      {"name": "Eggs", "amount": "2 large"},
      {"name": "Baking powder", "amount": "1 tablespoon"},
      {"name": "Salt", "amount": "1/2 teaspoon"},
      {"name": "Sugar", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Prepare the dry ingredients",
        "image": "assets/images/step1_pancakes.jpg",
        "description":
            "In a bowl, combine flour, baking powder, salt, and sugar."
      },
      {
        "title": "Mix the wet ingredients",
        "image": "assets/images/step2_pancakes.jpg",
        "description": "In another bowl, whisk milk and eggs until smooth."
      },
      {
        "title": "Combine and cook",
        "image": "assets/images/step3_pancakes.jpg",
        "description":
            "Add dry ingredients to the wet mixture and cook on a skillet."
      }
    ]
  },
  {
    "id": 2,
    "name": "Classic Burger",
    "image": "assets/images/burger.jpg",
    "description": "Juicy beef burger with fresh lettuce, tomato, and cheese.",
    "cuisine": "American",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Beef patty", "amount": "1"},
      {"name": "Burger buns", "amount": "2"},
      {"name": "Cheese slice", "amount": "1"},
      {"name": "Lettuce", "amount": "1 leaf"},
      {"name": "Tomato", "amount": "2 slices"},
      {"name": "Ketchup", "amount": "1 tablespoon"},
    ],
    "steps": [
      {
        "title": "Cook the patty",
        "image": "assets/images/step1_burger.jpg",
        "description":
            "Grill the beef patty on medium heat until cooked through."
      },
      {
        "title": "Assemble the burger",
        "image": "assets/images/step2_burger.jpg",
        "description":
            "Layer cheese, lettuce, and tomato on the bun, and add ketchup."
      },
    ]
  },
  {
    "id": 3,
    "name": "Spaghetti Bolognese",
    "image": "assets/images/spaghetti.jpg",
    "description": "A hearty Italian classic that's perfect for dinner.",
    "cuisine": "Italian",
    "isFavorite": true,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Spaghetti", "amount": "400g"},
      {"name": "Minced Beef", "amount": "500g"},
      {"name": "Onion", "amount": "1, chopped"},
      {"name": "Tomato Sauce", "amount": "2 cups"},
      {"name": "Garlic", "amount": "2 cloves, minced"},
      {"name": "Olive Oil", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Cook the spaghetti",
        "image": "assets/images/step1_spaghetti.jpg",
        "description":
            "Cook the spaghetti in a large pot of salted boiling water until al dente."
      },
      {
        "title": "Prepare the sauce",
        "image": "assets/images/step2_spaghetti.jpg",
        "description":
            "Sauté onions and garlic, then add minced beef until browned."
      },
      {
        "title": "Combine and serve",
        "image": "assets/images/step3_spaghetti.jpg",
        "description": "Mix the spaghetti with the sauce and serve hot."
      }
    ]
  },
  {
    "id": 4,
    "name": "Margherita Pizza",
    "image": "assets/images/margherita_pizza.jpg",
    "description":
        "Classic Italian pizza with fresh tomatoes, mozzarella, and basil.",
    "cuisine": "Italian",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Pizza dough", "amount": "1 base"},
      {"name": "Tomato sauce", "amount": "1/2 cup"},
      {"name": "Mozzarella cheese", "amount": "100g"},
      {"name": "Fresh basil", "amount": "a handful"},
    ],
    "steps": [
      {
        "title": "Prepare the dough",
        "image": "assets/images/step1_pizza.jpg",
        "description": "Roll out the pizza dough on a floured surface."
      },
      {
        "title": "Add toppings",
        "image": "assets/images/step2_pizza.jpg",
        "description":
            "Spread tomato sauce and add mozzarella and basil on top."
      },
      {
        "title": "Bake",
        "image": "assets/images/step3_pizza.jpg",
        "description": "Bake in a preheated oven at 200°C for 10-15 minutes."
      }
    ]
  },
  {
    "id": 5,
    "name": "Tacos",
    "image": "assets/images/tacos.jpg",
    "description":
        "Soft tacos filled with seasoned meat, cheese, and fresh salsa.",
    "cuisine": "Mexican",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Tortillas", "amount": "4"},
      {"name": "Ground beef", "amount": "300g"},
      {"name": "Cheese", "amount": "50g"},
      {"name": "Salsa", "amount": "1/2 cup"},
      {"name": "Lettuce", "amount": "1 cup, shredded"},
    ],
    "steps": [
      {
        "title": "Cook the beef",
        "image": "assets/images/step1_tacos.jpg",
        "description": "Season and cook the beef until browned."
      },
      {
        "title": "Assemble the tacos",
        "image": "assets/images/step2_tacos.jpg",
        "description": "Fill tortillas with beef, cheese, lettuce, and salsa."
      }
    ]
  },
  {
    "id": 6,
    "name": "Guacamole",
    "image": "assets/images/guacamole.jpg",
    "description":
        "Traditional Mexican dip made with avocado, lime, and cilantro.",
    "cuisine": "Mexican",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Avocado", "amount": "2, ripe"},
      {"name": "Lime", "amount": "1, juiced"},
      {"name": "Salt", "amount": "1/4 teaspoon"},
      {"name": "Onion", "amount": "1/4 cup, chopped"},
      {"name": "Cilantro", "amount": "1 tablespoon, chopped"},
    ],
    "steps": [
      {
        "title": "Mash avocado",
        "image": "assets/images/step1_guacamole.jpg",
        "description": "Mash the avocado with a fork until smooth."
      },
      {
        "title": "Add other ingredients",
        "image": "assets/images/step2_guacamole.jpg",
        "description": "Stir in lime juice, salt, onion, and cilantro."
      }
    ]
  },
  {
    "id": 7,
    "name": "Sushi Rolls",
    "image": "assets/images/sushi_rolls.jpg",
    "description": "Classic sushi rolls with rice, seaweed, and fresh fish.",
    "cuisine": "Japanese",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Sushi rice", "amount": "2 cups"},
      {"name": "Nori (seaweed)", "amount": "4 sheets"},
      {"name": "Fresh fish (salmon or tuna)", "amount": "200g"},
      {"name": "Soy sauce", "amount": "for dipping"},
      {"name": "Wasabi", "amount": "as needed"},
    ],
    "steps": [
      {
        "title": "Prepare the rice",
        "image": "assets/images/step1_sushi.jpg",
        "description": "Cook sushi rice and season it with vinegar."
      },
      {
        "title": "Assemble the roll",
        "image": "assets/images/step2_sushi.jpg",
        "description": "Place rice on nori, add fish, and roll tightly."
      }
    ]
  },
  {
    "id": 8,
    "name": "Ramen",
    "image": "assets/images/ramen.jpg",
    "description":
        "A comforting Japanese noodle soup with rich broth and toppings.",
    "cuisine": "Japanese",
    "isFavorite": true,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Ramen noodles", "amount": "200g"},
      {"name": "Chicken broth", "amount": "4 cups"},
      {"name": "Soy sauce", "amount": "2 tablespoons"},
      {"name": "Boiled egg", "amount": "1"},
      {"name": "Green onions", "amount": "for garnish"},
    ],
    "steps": [
      {
        "title": "Prepare the broth",
        "image": "assets/images/step1_ramen.jpg",
        "description": "Heat chicken broth and add soy sauce."
      },
      {
        "title": "Add noodles and toppings",
        "image": "assets/images/step2_ramen.jpg",
        "description": "Cook noodles in broth and add toppings."
      }
    ]
  },
  {
    "id": 9,
    "name": "Butter Chicken",
    "image": "assets/images/butter_chicken.jpg",
    "description":
        "Creamy and spiced butter chicken cooked in a rich tomato sauce.",
    "cuisine": "Indian",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Chicken breast", "amount": "500g"},
      {"name": "Tomato puree", "amount": "1 cup"},
      {"name": "Cream", "amount": "1/2 cup"},
      {"name": "Garam masala", "amount": "1 tablespoon"},
      {"name": "Butter", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Cook the chicken",
        "image": "assets/images/step1_butter_chicken.jpg",
        "description": "Sauté chicken with spices in butter."
      },
      {
        "title": "Add sauce",
        "image": "assets/images/step2_butter_chicken.jpg",
        "description": "Add tomato puree and cream, then simmer."
      }
    ]
  },
  {
    "id": 10,
    "name": "Vegetable Biryani",
    "image": "assets/images/biryani.jpg",
    "description": "Fragrant rice with mixed vegetables and aromatic spices.",
    "cuisine": "Indian",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Basmati rice", "amount": "1.5 cups"},
      {"name": "Mixed vegetables", "amount": "2 cups"},
      {"name": "Yogurt", "amount": "1/2 cup"},
      {"name": "Biryani masala", "amount": "1 tablespoon"},
      {"name": "Cilantro", "amount": "for garnish"},
    ],
    "steps": [
      {
        "title": "Cook the rice",
        "image": "assets/images/step1_biryani.jpg",
        "description": "Cook basmati rice until fluffy."
      },
      {
        "title": "Add vegetables and spices",
        "image": "assets/images/step2_biryani.jpg",
        "description": "Mix vegetables with spices and combine with rice."
      }
    ]
  },
  {
    "id": 11,
    "name": "Croissants",
    "image": "assets/images/croissants.jpg",
    "description": "Flaky and buttery French pastries, perfect for breakfast.",
    "cuisine": "French",
    "isFavorite": true,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Flour", "amount": "2 cups"},
      {"name": "Butter", "amount": "1 cup, chilled"},
      {"name": "Milk", "amount": "1/2 cup"},
      {"name": "Yeast", "amount": "1 teaspoon"},
      {"name": "Salt", "amount": "1/2 teaspoon"},
    ],
    "steps": [
      {
        "title": "Prepare the dough",
        "image": "assets/images/step1_croissant.jpg",
        "description":
            "Mix flour, salt, and yeast, then add butter and fold dough."
      },
      {
        "title": "Bake",
        "image": "assets/images/step2_croissant.jpg",
        "description": "Shape and bake at 180°C for 15-20 minutes."
      }
    ]
  },
  {
    "id": 12,
    "name": "Ratatouille",
    "image": "assets/images/ratatouille.jpg",
    "description":
        "A traditional French vegetable dish with zucchini, eggplant, and tomatoes.",
    "cuisine": "French",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Zucchini", "amount": "1, sliced"},
      {"name": "Eggplant", "amount": "1, sliced"},
      {"name": "Tomatoes", "amount": "2, chopped"},
      {"name": "Onion", "amount": "1, sliced"},
      {"name": "Olive oil", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Sauté the vegetables",
        "image": "assets/images/step1_ratatouille.jpg",
        "description": "Cook onions and garlic in olive oil."
      },
      {
        "title": "Add other vegetables",
        "image": "assets/images/step2_ratatouille.jpg",
        "description":
            "Layer zucchini, eggplant, and tomatoes and simmer until tender."
      }
    ]
  },
  {
    "id": 13,
    "name": "Pad Thai",
    "image": "assets/images/pad_thai.jpg",
    "description":
        "Stir-fried rice noodles with tofu, peanuts, and a tangy sauce.",
    "cuisine": "Thai",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Rice noodles", "amount": "200g"},
      {"name": "Tofu", "amount": "100g, diced"},
      {"name": "Bean sprouts", "amount": "1 cup"},
      {"name": "Peanuts", "amount": "1/4 cup, crushed"},
      {"name": "Pad Thai sauce", "amount": "1/2 cup"},
    ],
    "steps": [
      {
        "title": "Prepare the noodles",
        "image": "assets/images/step1_pad_thai.jpg",
        "description": "Soak rice noodles in hot water until soft."
      },
      {
        "title": "Stir-fry",
        "image": "assets/images/step2_pad_thai.jpg",
        "description": "Cook tofu and noodles, then add sauce and toppings."
      }
    ]
  },
  {
    "id": 14,
    "name": "Green Curry",
    "image": "assets/images/green_curry.jpg",
    "description":
        "A spicy and aromatic Thai green curry with coconut milk and fresh herbs.",
    "cuisine": "Thai",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Chicken", "amount": "300g, diced"},
      {"name": "Coconut milk", "amount": "1 can"},
      {"name": "Green curry paste", "amount": "2 tablespoons"},
      {"name": "Basil leaves", "amount": "a handful"},
      {"name": "Green beans", "amount": "1 cup, chopped"},
    ],
    "steps": [
      {
        "title": "Cook the curry paste",
        "image": "assets/images/step1_green_curry.jpg",
        "description": "Sauté green curry paste until fragrant."
      },
      {
        "title": "Add coconut milk and chicken",
        "image": "assets/images/step2_green_curry.jpg",
        "description":
            "Add chicken and green beans, then simmer with coconut milk."
      }
    ]
  },
  {
    "id": 15,
    "name": "Paella",
    "image": "assets/images/paella.jpg",
    "description":
        "A traditional Spanish rice dish with seafood and vegetables.",
    "cuisine": "Spanish",
    "isFavorite": true,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Rice", "amount": "2 cups"},
      {"name": "Shrimp", "amount": "200g"},
      {"name": "Green beans", "amount": "100g"},
      {"name": "Tomato", "amount": "1, chopped"},
      {"name": "Saffron", "amount": "a pinch"},
      {"name": "Olive oil", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Prepare the base",
        "image": "assets/images/step1_paella.jpg",
        "description":
            "Sauté shrimp, beans, and tomato in olive oil until tender."
      },
      {
        "title": "Add rice and cook",
        "image": "assets/images/step2_paella.jpg",
        "description":
            "Add rice, saffron, and broth, and simmer until rice is cooked."
      }
    ]
  },
  {
    "id": 16,
    "name": "Spanish Tortilla",
    "image": "assets/images/spanish_tortilla.jpg",
    "description": "A classic Spanish omelet made with potatoes and onions.",
    "cuisine": "Spanish",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Potatoes", "amount": "2, sliced"},
      {"name": "Onion", "amount": "1, chopped"},
      {"name": "Eggs", "amount": "4"},
      {"name": "Olive oil", "amount": "2 tablespoons"},
      {"name": "Salt", "amount": "to taste"},
    ],
    "steps": [
      {
        "title": "Cook potatoes and onions",
        "image": "assets/images/step1_tortilla.jpg",
        "description": "Sauté potatoes and onions in olive oil until soft."
      },
      {
        "title": "Add eggs and cook",
        "image": "assets/images/step2_tortilla.jpg",
        "description": "Add beaten eggs, season, and cook until set."
      }
    ]
  },
  {
    "id": 17,
    "name": "Moussaka",
    "image": "assets/images/moussaka.jpg",
    "description":
        "A Greek casserole with layers of eggplant, meat, and béchamel sauce.",
    "cuisine": "Greek",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Eggplant", "amount": "1 large, sliced"},
      {"name": "Ground beef", "amount": "300g"},
      {"name": "Tomato paste", "amount": "2 tablespoons"},
      {"name": "Onion", "amount": "1, chopped"},
      {"name": "Béchamel sauce", "amount": "1 cup"},
      {"name": "Olive oil", "amount": "2 tablespoons"},
    ],
    "steps": [
      {
        "title": "Cook the meat layer",
        "image": "assets/images/step1_moussaka.jpg",
        "description": "Cook beef with onion and tomato paste until browned."
      },
      {
        "title": "Layer and bake",
        "image": "assets/images/step2_moussaka.jpg",
        "description":
            "Layer eggplant, meat, and béchamel sauce; bake until golden."
      }
    ]
  },
  {
    "id": 18,
    "name": "Greek Salad",
    "image": "assets/images/greek_salad.jpg",
    "description":
        "A fresh salad with tomatoes, cucumber, olives, and feta cheese.",
    "cuisine": "Greek",
    "isFavorite": false,
    "isUserCreated": false,
    "ingredients": [
      {"name": "Tomato", "amount": "1, chopped"},
      {"name": "Cucumber", "amount": "1, chopped"},
      {"name": "Feta cheese", "amount": "100g, crumbled"},
      {"name": "Olives", "amount": "a handful"},
      {"name": "Olive oil", "amount": "2 tablespoons"},
      {"name": "Oregano", "amount": "to taste"},
    ],
    "steps": [
      {
        "title": "Prepare the ingredients",
        "image": "assets/images/step1_greek_salad.jpg",
        "description": "Chop tomatoes and cucumber, add olives and feta."
      },
      {
        "title": "Dress the salad",
        "image": "assets/images/step2_greek_salad.jpg",
        "description":
            "Drizzle with olive oil, sprinkle with oregano, and serve."
      }
    ]
  },
];

List<Map<String, dynamic>> filterRecipesByCuisine(String selectedCuisine) {
  return predefinedRecipes
      .where((recipe) => recipe['cuisine'] == selectedCuisine)
      .toList();
}

List<Map<String, dynamic>> getFavoriteRecipes() {
  return predefinedRecipes
      .where((recipe) => recipe['isFavorite'] == true)
      .toList();
}

List<Map<String, dynamic>> getUserCreatedRecipes() {
  return predefinedRecipes
      .where((recipe) => recipe['isUserCreated'] == true)
      .toList();
}

void addRecipe(Map<String, dynamic> newRecipe) {
  newRecipe['id'] = predefinedRecipes.length + 1;
  newRecipe['isFavorite'] = false;
  newRecipe['isUserCreated'] = true;
  predefinedRecipes.add(newRecipe);
}
