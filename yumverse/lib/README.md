# Recipe Manager Application - YumVerse

## Project Description

YumVerse is a responsive web application that allows users to easily manage and explore recipes. The application enables users to create and delete their own recipes, mark favorite recipes, and explore various preloaded recipes that can be sorted by cuisine type. It includes a responsive design that adjusts for both mobile and tablet layouts.

### Key Features

- **Add and Delete Recipes**: Users can create new recipes, including adding ingredients, steps, and photos (via URL). Recipes can be removed as needed.
- **Favorites**: Users can mark their favorite recipes, which will be highlighted in the "Favorites" section in both "Home" and "My Recipes" tabs for quick access.
- **Explore Cuisines**: Users can browse recipes by cuisine type, as well as checking the latest trends in recipes (random list generated from the predefined list).
- **Responsive Design**: The app automatically adjusts its layout to fit mobile and tablet screens, offering a sidebar navigation on tablets and a bottom navigation on mobile devices.

## Deployment URL

The application is deployed at: [https://device-agnostic.web.app/](https://device-agnostic.web.app/)

## Usage Instructions

1. **Home Screen**: After launching the app, you’ll be welcomed on the home screen with a list of your favorite recipes and trending recipes.
2. **Discover Screen**: Explore different cuisines on the Discover screen by tapping a cuisine to view all recipes within that category.
3. **Manage Recipes**: In the Manage Recipes tab, view and edit your collection of recipes. You can delete any of your own recipes directly from this screen.
4. **Add New Recipes**: Use the "Add Recipe" button to enter a new recipe, including ingredients, instructions, and an image URL. The recipe will be stored and immediately accessible in the "All Recipes" section.

The application is built with **Flutter** and **GetX** for state management, with persistent data storage handled via **Hive**.

## Structure of the Application

The project is organized into folders for **controllers**, **screens**, and **widgets**, separating business logic, UI screens, and reusable components.

---
