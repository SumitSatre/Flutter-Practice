import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Assuming you have defined the Card, Crousel, Navbar, and Footer widgets

class FoodCategory {
  final String id;
  final String categoryName;

  FoodCategory({required this.id, required this.categoryName});
}

class FoodItem {
  final String id;
  final String name;
  final String categoryName;
  final Map<String, dynamic> options;

  FoodItem({
    required this.id,
    required this.name,
    required this.categoryName,
    required this.options,
  });
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodCategory> _foodCategoryData = [];
  List<FoodItem> _foodItemsData = [];

  void _loadData() async {
    final response = await http.post(
      Uri.parse('https://fooddelivery-vien.onrender.com/api/foodData'),
      headers: {'Content-Type': 'application/json'},
    );

    final responseData = json.decode(response.body);

    if (!responseData[0]['success']) {
      return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Error'),
          content: Text('There is some internal issue!!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }

    setState(() {
      _foodCategoryData = (responseData[1] as List)
          .map((categoryData) => FoodCategory(
        id: categoryData['_id'],
        categoryName: categoryData['CategoryName'],
      ))
          .toList();

      _foodItemsData = (responseData[2] as List)
          .map((itemData) => FoodItem(
        id: itemData['_id'],
        name: itemData['name'],
        categoryName: itemData['CategoryName'],
        options: itemData['options'][0],
      ))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final serachText = ""; // Assuming you have set up a provider for the search text

    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Name'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Assuming you have created the respective widgets for the Carousel, Navbar, and Footer
            // Crousel(),
            // Navbar(),
            // ... other widgets ...

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: _foodCategoryData.isEmpty
                    ? [Text('There is No Data Present!!')]
                    : _foodCategoryData.map((category) {
                  final filteredItems = _foodItemsData
                      .where((item) =>
                  item.categoryName == category.categoryName &&
                      item.name
                          .toLowerCase()
                          .contains(serachText.toLowerCase()))
                      .toList();

                  return Column(
                    children: [
                      Text(
                        category.categoryName,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      filteredItems.isEmpty
                          ? Text('No Such Data Found')
                          : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: filteredItems.length,
                        itemBuilder: (ctx, index) => Card(
                          child: Column(
                            children: [
                              // Assuming you have defined the respective widgets inside the Card widget
                              // Card(foodItem: filteredItems[index]),
                              // ... other widgets ...
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      // Footer(),
    );
  }
}
