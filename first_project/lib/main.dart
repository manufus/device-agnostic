import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_app/firebase_app.dart';
import 'screens/home_screen.dart';
import 'screens/discover_screen.dart';
import 'screens/manage_recipes_screen.dart';
import 'screens/recipe_detail_screen.dart';
import 'screens/add_recipe_screen.dart';
import 'controllers/recipe_controller.dart';
import 'widgets/responsive_widget.dart';

// Credentials removed for the submission
const String apiKey = "";
const String authDomain = "";
const String projectId = "";
const String storageBucket = "";
const String messagingSenderId = "";
const String appId = "";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: apiKey,
      authDomain: authDomain,
      projectId: projectId,
      storageBucket: storageBucket,
      messagingSenderId: messagingSenderId,
      appId: appId,
    ),
  );

  await Hive.initFlutter();
  await Hive.openBox('recipesBox');
  Get.lazyPut<RecipeController>(() => RecipeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/discover", page: () => DiscoverScreen()),
        GetPage(name: "/manage", page: () => ManageRecipesScreen()),
        GetPage(name: "/recipes/:id", page: () => RecipeDetailScreen()),
        GetPage(name: "/add-recipe", page: () => AddRecipeScreen()),
      ],
      title: 'Recipe Manager',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFD3C4A2),
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveWidget(
        mobile: Inicio(),
        tablet: SidebarInicio(),
      ),
    );
  }
}

// Bottom Navigation for Mobile
class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    DiscoverScreen(),
    ManageRecipesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFD3C4A2),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Recipes',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/add-recipe");
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color(0xFFAE451F),
      ),
    );
  }
}

// Sidebar Navigation for Tablet
class SidebarInicio extends StatefulWidget {
  @override
  _SidebarInicioState createState() => _SidebarInicioState();
}

class _SidebarInicioState extends State<SidebarInicio> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    DiscoverScreen(),
    ManageRecipesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Color(0xFFFCEDCB),
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            labelType: NavigationRailLabelType.all,
            indicatorColor: Color(0xFFFFD6B5),
            selectedLabelTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelTextStyle: TextStyle(
              color: Colors.grey,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey,
            ),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.local_fire_department),
                label: Text('Discover'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.book),
                label: Text('My Recipes'),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 1200),
                padding: EdgeInsets.all(16.0),
                child: _pages[_selectedIndex],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/add-recipe");
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color(0xFFAE451F),
      ),
    );
  }
}
