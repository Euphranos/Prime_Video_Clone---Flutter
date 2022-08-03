// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryTabWidget extends StatelessWidget {
  final Function() onTap;
  final int selectedIndex;
  final String category;
  final int index;
  const CategoryTabWidget({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
    required this.category,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: selectedIndex == index
              ? BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20))
              : null,
          child: Text(
            category,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: selectedIndex == index ? Colors.black : Colors.white,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
