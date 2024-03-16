import 'package:flutter/material.dart';
import 'package:latest_meal_app_riverpod/model/dummy_model.dart';
import 'package:latest_meal_app_riverpod/screen/meals_screen.dart';
import 'package:latest_meal_app_riverpod/widget/category_grid_item_widget.dart';

import '../model/category_model.dart';
import '../model/meals_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
    required this.availableMeals,
  });

  final List<MealModel> availableMeals;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,

    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, CategoryModel category) {
    final filteredMeals = widget.availableMeals
        .where(
          (meal) => meal.categories.contains(
            category.id,
          ),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        //availableCategories.map((category) => CategoryGridItemWidget(category: category)).toList(); // cam also written in this way
        for (final category in availableCategories)
          CategoryGridItemWidget(
            category: category,
            onSelectedCategory: () {
              _selectCategory(
                context,
                category,
              );
            },
          )
      ],
    );
  }
}
