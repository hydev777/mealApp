import 'package:flutter/material.dart';
import 'package:meals/dummy_dart.dart';
import 'package:meals/widgets/meal_item.dart';
// import '../models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories!.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar( title: Text(categoryTitle!) ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, i) {
            return MealItem(id: categoryMeals[i].id, title: categoryMeals[i].title, imageUrl: categoryMeals[i].imageUrl, duration: categoryMeals[i].duration, complexity: categoryMeals[i].complexity, affordability: categoryMeals[i].affordability);
          },
      ),
    );
  }
}
