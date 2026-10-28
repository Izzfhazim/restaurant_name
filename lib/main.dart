import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      home: RestaurantMenu(),
    );
  }
}

class RestaurantMenu extends StatelessWidget {
  RestaurantMenu({super.key});

  final List<Map<String, String>> foods = [
    {
      'name': 'Chicken Burger',
      'price': 'RM 8.00',
      'image': '🍔',
    },
    {
      'name': 'Fried Chicken',
      'price': 'RM 10.00',
      'image': '🍗',
    },
    {
      'name': 'Pizza',
      'price': 'RM 12.00',
      'image': '🍕',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Our Menu',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: const Text(
                '🍔',
                style: TextStyle(fontSize: 40),
              ),
              title: Text(foods[0]['name']!),
              subtitle: Text(foods[0]['price']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(
                      name: foods[0]['name']!,
                      price: foods[0]['price']!,
                      image: foods[0]['image']!,
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Text(
                '🍗',
                style: TextStyle(fontSize: 40),
              ),
              title: Text(foods[1]['name']!),
              subtitle: Text(foods[1]['price']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(
                      name: foods[1]['name']!,
                      price: foods[1]['price']!,
                      image: foods[1]['image']!,
                    ),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Text(
                '🍕',
                style: TextStyle(fontSize: 40),
              ),
              title: Text(foods[2]['name']!),
              subtitle: Text(foods[2]['price']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(
                      name: foods[2]['name']!,
                      price: foods[2]['price']!,
                      image: foods[2]['image']!,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FoodDetail extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const FoodDetail({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              image,
              style: const TextStyle(fontSize: 100),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}