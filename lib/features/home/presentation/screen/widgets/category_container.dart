import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({super.key});

  @override
  CategoryContainerState createState() => CategoryContainerState();
}

class CategoryContainerState extends State<CategoryContainer> {
  List<String> items = [
    'Chicken',
    'Beef Meat',
    'Shrimp',
    'Fish',
    'Broccoli',
    'Egg',
    'Cucumber'
  ];
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return ItemGrid(
      items: items,
      selectedItem: selectedItem,
      onItemSelected: (item) {
        setState(() {
          selectedItem = item == selectedItem ? '' : item;
        });
      },
    );
  }
}

class ItemGrid extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final Function(String) onItemSelected;

  const ItemGrid({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: items.map((item) {
        return ItemTile(
          item: item,
          isSelected: item == selectedItem,
          onTap: () => onItemSelected(item),
        );
      }).toList(),
    );
  }
}

class ItemTile extends StatelessWidget {
  final String item;
  final bool isSelected;
  final VoidCallback onTap;

  const ItemTile({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : AppColor.lightSlateGray,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          item,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
