import 'package:flutter/material.dart';
import 'package:latest_meal_app_riverpod/model/meals_model.dart';
import 'package:latest_meal_app_riverpod/widget/meal_item_trait_widget.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItemWidget extends StatelessWidget {
  const MealsItemWidget({
    super.key,
    required this.meal,
    required this.onSelectedMeal,
  });

  final MealModel meal;

  final void Function(MealModel meal) onSelectedMeal;

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
    // this will excess the first word of the String
  }

  String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
    // this will excess the first word of the String
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectedMeal(meal);
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 300;

            return Stack(
              children: [
                Hero(
                  tag: meal.id,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(meal.imageUrl),
                    fit: BoxFit.cover,
                    height: isWide ? 500 : 150, // 👈 smaller height on web/grid
                    width: double.infinity,
                  ),
                ),

                // ✅ Bottom overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    color: Colors.black54,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Title
                        Text(
                          meal.title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize:
                                isWide ? 16 : 20, // 👈 smaller text on grid
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Traits row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MealItemTraitWidget(
                              iconData: Icons.schedule_outlined,
                              label: '${meal.duration} min',
                            ),
                            const SizedBox(width: 12),
                            MealItemTraitWidget(
                              iconData: Icons.work,
                              label: complexityText,
                            ),
                            const SizedBox(width: 12),
                            MealItemTraitWidget(
                              iconData: Icons.attach_money,
                              label: affordabilityText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
