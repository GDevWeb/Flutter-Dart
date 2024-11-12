import 'package:flutter/material.dart';

import 'meal_card.dart';

void main() {
  runApp(const MyApp(title: "👑Burger Prince👑"));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Action when icon is pressed
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // Action when icon is pressed
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Featured Burger Section
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Our Special Burger",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Burger Prince",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/burger/cheese.jpg',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star_half, color: Colors.yellow),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Action when button is pressed
                        },
                        child: const Text("Order Now"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Warm Up Section
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.blueGrey,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Warm up",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        "The best of our burgers, right at your fingertips",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 180,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MealCard(
                                title: "Cheese Burger",
                                imagePath: 'images/burger/cheese.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Big Queen",
                                imagePath: 'images/burger/big-queen.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Bacon Burger",
                                imagePath: 'images/burger/egg-bacon-burger.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Twins Burger",
                                imagePath: 'images/burger/twins.jpg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Side Dish Section
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.blueGrey,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Side dish",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 180,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MealCard(
                                title: "Fries",
                                imagePath: 'images/side_dish/fries.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Sweet Potatoes",
                                imagePath:
                                    'images/side_dish/sweet-potatoes.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Poutine",
                                imagePath: 'images/side_dish/poutine.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Potatoes",
                                imagePath: 'images/side_dish/potatoes.jpg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Drinks section
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_drink,
                            color: Colors.blueGrey,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Drinks",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 180,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MealCard(
                                title: "Classic Cola",
                                imagePath: 'images/drinks/classic-cola.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Orange Soda",
                                imagePath: 'images/drinks/orange-soda.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Sparkling",
                                imagePath: 'images/drinks/sparkling.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Strawberry Soda",
                                imagePath: 'images/drinks/strawberry-soda.jpg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // section desserts
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.icecream,
                            color: Colors.blueGrey,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Desserts",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 180,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MealCard(
                                title: "brownie",
                                imagePath: 'images/desserts/brownie.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Cupcake",
                                imagePath: 'images/desserts/cupcake.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Donut",
                                imagePath: 'images/desserts/donut.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Oreo Ice",
                                imagePath: 'images/desserts/oreo-ice.jpg',
                              ),
                              SizedBox(width: 10),
                              MealCard(
                                title: "Strawberry Waffle",
                                imagePath:
                                    'images/desserts/strawberry-waffle.jpg',
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
