import 'package:flutter/material.dart';
import 'package:latest_meal_app_riverpod/model/meals_model.dart';
import 'package:latest_meal_app_riverpod/screen/meal_detail_screen.dart';
import 'package:latest_meal_app_riverpod/widget/meal_item_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  final String? title;
  final List<MealModel> meals;

  void selectedMeal(BuildContext context, MealModel meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealDetailScreen(
          meal: meal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nothing Present',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try Selecting different meal',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          )
        ],
      ),
    );

    if (meals != null && meals.isNotEmpty) {
      final screenWidth = MediaQuery.of(context).size.width;

      if (screenWidth > 600) {
        // ✅ GridView for Web / Tablet
        content = GridView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: meals.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 per row
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) {
            return MealsItemWidget(
              meal: meals[index],
              onSelectedMeal: (meal) => selectedMeal.call(context, meal),
            );
          },
        );
      } else {
        // ✅ ListView for Mobile
        content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return MealsItemWidget(
              meal: meals[index],
              onSelectedMeal: (meal) => selectedMeal.call(context, meal),
            );
          },
        );
      }
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
