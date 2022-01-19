import 'package:flutter/material.dart';
import 'package:meals/screens/category_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.greenAccent,
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.grey),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light()
            .textTheme
            .copyWith(bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)), bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1))),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen()
      },
    );
  }
}
