import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latest_meal_app_riverpod/model/meals_model.dart';
import 'package:latest_meal_app_riverpod/providers/favorite_provider.dart';

// as to change this as we have to add the toggle Method for the icons
class MealDetailScreen extends ConsumerWidget {
  const MealDetailScreen({
    super.key,
    required this.meal,
  });

  final MealModel meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We have to add the ref as in the Consumer Which is stateLess Widget ref is not automatically passed
    final favoriteMealProvider = ref.watch(favoriteMealsProvider);
    final isFavoriteProviderResult = favoriteMealProvider.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // in the Change listener we do not use watch
              final mealAddedInFavorite = ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleMealFavoriteStatus(meal);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 1),
                  content: Center(
                    child: Text(
                      mealAddedInFavorite
                          ? 'Meal Added In Favorites'
                          : 'Meals Removed From Favorites',
                    ),
                  ),
                ),
              );
            },
            icon: AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween(begin: 0.7, end: 1.0).animate(animation),
                  child: child,
                );
              },
              duration: const Duration(milliseconds: 300),
              child: Icon(
                isFavoriteProviderResult
                    ? Icons.star
                    : Icons.star_border_outlined,
                key: ValueKey(isFavoriteProviderResult),
              ),
            ),
          ),
        ],
      ),
      body: buildCode(context),
    );
  }

  Widget buildCode(BuildContext context) {
    final isLargeScreen =
        MediaQuery.of(context).size.width > 800; // breakpoint for web/tablet

    if (!isLargeScreen) {
      // 📱 Mobile layout (your original)
      return SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: meal.id,
              child: Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 14),
            for (final ingredient in meal.ingredients)
              Text(
                ingredient,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            const SizedBox(height: 24),
            Text(
              'Steps',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 14),
            for (final step in meal.steps)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  step,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            const SizedBox(height: 24),
          ],
        ),
      );
    }

    // 🖥️ Web / Large Screen layout
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Side (Image)
        Expanded(
          flex: 4, // ~40% width
          child: Hero(
            tag: meal.id,
            child: Image.network(
              meal.imageUrl,
              height: MediaQuery.of(context).size.height, // fill vertically
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Right Side (Ingredients + Steps)
        Expanded(
          flex: 6, // ~60% width
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 14),
                for (final ingredient in meal.ingredients)
                  Text(
                    ingredient,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                const SizedBox(height: 24),
                Text(
                  'Steps',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 14),
                for (final step in meal.steps)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      step,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
