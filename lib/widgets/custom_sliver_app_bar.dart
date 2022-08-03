// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'widgets.dart';

class CustomSliverAppBar extends StatefulWidget {
  final List<String> categories;
  const CustomSliverAppBar({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        'assets/icons/prime_icon.png',
        color: Colors.white,
        height: 120,
        fit: BoxFit.fill,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/profileAvatar.jpg"),
          ),
        )
      ],
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: List.generate(widget.categories.length, (index) {
                return CategoryTabWidget(
                  category: widget.categories[index],
                  index: index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  selectedIndex: selectedIndex,
                );
              }),
            ),
          )),
    );
  }
}
