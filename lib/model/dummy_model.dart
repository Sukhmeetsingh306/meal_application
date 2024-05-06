import 'package:flutter/material.dart';

import 'category_model.dart';
import 'meals_model.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  CategoryModel(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  CategoryModel(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  CategoryModel(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  CategoryModel(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  CategoryModel(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  CategoryModel(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  CategoryModel(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  CategoryModel(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  CategoryModel(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  CategoryModel(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMealModels = [
  MealModel(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  MealModel(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  MealModel(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  MealModel(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  MealModel(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  MealModel(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  MealModel(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  MealModel(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  MealModel(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  MealModel(
    id: 'm10',
    categories: [
      'c2',
      'c4',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  MealModel(
      id: "m41",
      categories: [
        "c3",
        "c6",
      ],
      title: "Thai Green Curry",
      affordability: Affordability.pricey,
      complexity: Complexity.hard,
      imageUrl:
          "https://www.bluedragon.ca/system/recipes/images/000/000/226/original/3-step-green-curry.jpg?1572290676",
      duration: 60,
      ingredients: [
        "200g Chicken Breast",
        "2 tablespoons Green Curry Paste",
        "400ml Coconut Milk",
        "1 Eggplant",
        "1 Red Bell Pepper",
        "Handful of Thai Basil Leaves",
        "1 tablespoon Fish Sauce",
        "1 tablespoon Palm Sugar"
      ],
      steps: [
        "Cut chicken into bite-sized pieces.",
        "Heat coconut milk in a pan until it starts to boil.",
        "Add green curry paste and stir until fragrant.",
        "Add chicken and cook until almost done.",
        "Add sliced eggplant and bell pepper, cook until vegetables are tender.",
        "Season with fish sauce and palm sugar.",
        "Serve hot with steamed rice, garnished with Thai basil leaves."
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true),
  MealModel(
      id: "m51",
      categories: [
        "c1",
        "c8",
      ],
      title: "Ratatouille",
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          "https://ohmydish.com/wp-content/uploads/2015/03/Remys-ratatouille-2.jpg",
      duration: 40,
      ingredients: [
        "1 Eggplant",
        "2 Zucchinis",
        "2 Bell Peppers (red and yellow)",
        "4 Tomatoes",
        "1 Onion",
        "4 cloves Garlic",
        "2 tablespoons Olive Oil",
        "Herbs (thyme, rosemary, basil)",
        "Salt and Pepper"
      ],
      steps: [
        "Slice all vegetables into thin rounds or cubes.",
        "Heat olive oil in a large pan or pot.",
        "Add onions and garlic, sauté until fragrant.",
        "Layer vegetables in the pan, alternating between eggplant, zucchini, bell peppers, and tomatoes.",
        "Season each layer with herbs, salt, and pepper.",
        "Cover and simmer for about 30 minutes, until vegetables are tender.",
        "Serve hot or cold, garnished with fresh herbs."
      ],
      isGlutenFree: true,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true),
  MealModel(
      id: "m61",
      categories: [
        "c7",
        "c5",
      ],
      title: "Greek Yogurt Parfait",
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:
          "https://www.fooddolls.com/wp-content/uploads/2023/05/Fruit-Parfait17844-1-1200x800.jpg",
      duration: 10,
      ingredients: [
        "1 cup Greek Yogurt",
        "1/2 cup Granola",
        "1/2 cup Mixed Berries (strawberries, blueberries, raspberries)",
        "1 tablespoon Honey"
      ],
      steps: [
        "Layer Greek yogurt, granola, and mixed berries in a glass or bowl.",
        "Drizzle honey on top.",
        "Repeat layers if desired.",
        "Serve immediately for a crunchy and refreshing parfait!"
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false),
  MealModel(
      id: "m71",
      categories: [
        "c4",
        "c9",
      ],
      title: "Coq au Vin",
      affordability: Affordability.luxurious,
      complexity: Complexity.hard,
      imageUrl: "https://i.ytimg.com/vi/hJswLfXL_GA/maxresdefault.jpg",
      duration: 120,
      ingredients: [
        "1 whole Chicken (cut into pieces)",
        "200g Bacon",
        "1 bottle Red Wine",
        "250g Mushrooms",
        "2 Onions",
        "4 cloves Garlic",
        "2 Carrots",
        "2 tablespoons Flour",
        "2 tablespoons Butter",
        "2 tablespoons Olive Oil",
        "Salt and Pepper"
      ],
      steps: [
        "Marinate chicken pieces in red wine overnight.",
        "In a large pot, cook bacon until crispy, then remove and set aside.",
        "Brown chicken pieces in the same pot, then remove and set aside.",
        "Sauté onions, garlic, carrots, and mushrooms until softened.",
        "Return chicken and bacon to the pot, sprinkle flour and stir to coat.",
        "Pour in marinated wine and bring to a simmer.",
        "Cover and cook on low heat for about 90 minutes, until chicken is tender.",
        "Serve hot, garnished with fresh parsley."
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false),
  MealModel(
    id: "m81",
    categories: [
      "c5",
      "c10",
    ],
    title: "Mango Coconut Smoothie Bowl",
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: "https://www.iheartnaptime.net/wp-content/uploads/2016/01/5.jpg",
    duration: 10,
    ingredients: [
      "1 ripe Mango",
      "1 Banana",
      "1/2 cup Coconut Milk",
      "1/4 cup Greek Yogurt",
      "1/4 cup Granola",
      "2 tablespoons Shredded Coconut",
      "1 tablespoon Chia Seeds",
      "1 tablespoon Honey"
    ],
    steps: [
      "Peel and chop mango and banana.",
      "Blend mango, banana, coconut milk, and Greek yogurt until smooth.",
      "Pour into a bowl and top with granola, shredded coconut, chia seeds, and a drizzle of honey.",
      "Enjoy immediately with a spoon!"
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  MealModel(
      id: "m91",
      categories: [
        "c8",
        "c6",
      ],
      title: "Sushi Rolls",
      affordability: Affordability.pricey,
      complexity: Complexity.hard,
      imageUrl:
          "https://static.vecteezy.com/system/resources/previews/030/653/917/large_2x/sushi-rolls-image-hd-free-photo.jpg",
      duration: 90,
      ingredients: [
        "2 cups Sushi Rice",
        "4 sheets Nori Seaweed",
        "Assorted fillings (e.g., cucumber, avocado, crab sticks, smoked salmon)",
        "Soy Sauce",
        "Wasabi",
        "Pickled Ginger"
      ],
      steps: [
        "Cook sushi rice according to package instructions and let it cool.",
        "Place a sheet of nori seaweed on a bamboo mat.",
        "Spread a thin layer of sushi rice evenly over the nori, leaving a 1-inch border at the top.",
        "Arrange fillings in the center of the rice.",
        "Roll the sushi tightly using the bamboo mat, pressing gently to seal.",
        "Slice the roll into bite-sized pieces with a sharp knife.",
        "Serve with soy sauce, wasabi, and pickled ginger."
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true),
  MealModel(
    id: "m101",
    categories: [
      "c9",
      "c2",
    ],
    title: "Croque Monsieur",
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        "https://img.freepik.com/premium-photo/closeup-delicious-croque-monsieur-sandwich-bread-dinner-meal-tasty-meat-wooden-boardai-generated_548729-4979.jpg",
    duration: 30,
    ingredients: [
      "4 slices White Bread",
      "4 slices Ham",
      "4 slices Gruyere or Emmental Cheese",
      "2 tablespoons Butter",
      "2 tablespoons Flour",
      "1 cup Milk",
      "Salt and Pepper",
      "Nutmeg (optional)"
    ],
    steps: [
      "Preheat oven to 180°C (350°F).",
      "Melt butter in a saucepan, then whisk in flour to form a roux.",
      "Gradually whisk in milk until smooth and thickened.",
      "Season with salt, pepper, and nutmeg if using.",
      "Toast bread slices lightly and place on a baking sheet.",
      "Top each slice with ham and cheese, then spoon béchamel sauce over the top.",
      "Bake for 10-15 minutes until cheese is bubbly and golden brown.",
      "Serve hot with a side salad."
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  MealModel(
    id: "m112",
    categories: [
      'c7',
      'c9',
      "c10",
    ],
    title: "Quinoa Salad",
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        "https://www.wholesomeyum.com/wp-content/uploads/2022/08/wholesomeyum-Mediterranean-Quinoa-Salad-1.jpg",
    duration: 30,
    ingredients: [
      "1 cup Quinoa",
      "2 cups Water or Vegetable Broth",
      "1 Red Bell Pepper, diced",
      "1 Yellow Bell Pepper, diced",
      "1 Cucumber, diced",
      "1/2 Red Onion, finely chopped",
      "1/4 cup Fresh Parsley, chopped",
      "1/4 cup Fresh Cilantro, chopped",
      "1/4 cup Olive Oil",
      "2 tablespoons Lemon Juice",
      "Salt and Pepper to taste"
    ],
    steps: [
      "Rinse quinoa under cold water.",
      "In a pot, bring water or vegetable broth to a boil.",
      "Add quinoa, cover, and simmer for 15-20 minutes, or until all liquid is absorbed.",
      "Remove from heat and let it cool.",
      "In a large bowl, combine cooked quinoa with diced bell peppers, cucumber, red onion, parsley, and cilantro.",
      "Drizzle olive oil and lemon juice over the salad, then toss to combine.",
      "Season with salt and pepper to taste.",
      "Chill in the refrigerator for at least 30 minutes before serving.",
      "Enjoy the refreshing and nutritious quinoa salad!"
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
