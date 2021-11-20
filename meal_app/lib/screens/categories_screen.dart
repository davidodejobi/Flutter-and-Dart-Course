import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../components/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({this.theme, Key? key}) : super(key: key);

  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DeliMeal',
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                title: catData.title,
                color: catData.color,
                id: catData.id,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}