// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CastCardWidget extends StatelessWidget {
  final String image;
  final String name;
  const CastCardWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 160,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black.withOpacity(0.1),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 20,
          right: 0,
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
          ),
        )
      ],
    );
  }
}
