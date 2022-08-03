// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:prime_video_clone/constants/constants.dart';

class EpisodeCardWidget extends StatelessWidget {
  final String episodeTitle;
  final String episodeName;
  const EpisodeCardWidget({
    Key? key,
    required this.episodeTitle,
    required this.episodeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: episodeCardColor,
        width: double.infinity,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 45,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          episodeTitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          width: 220,
                          child: Text(
                            episodeName,
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                overflow: TextOverflow.ellipsis,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
