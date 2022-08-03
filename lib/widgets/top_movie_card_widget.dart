// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/movie.dart';
import 'movie_card_widget.dart';

class TopMoviesCard extends StatelessWidget {
  final Movie movie;
  final int index;
  const TopMoviesCard({
    Key? key,
    required this.movie,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 140,
          width: 270,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: MovieCard(height: 140, width: 250, movie: movie),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            (index + 1).toString(),
            style: const TextStyle(
                fontSize: 80, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        )
      ],
    );
  }
}
