import 'package:flutter/material.dart';
import 'package:prime_video_clone/constants/constants.dart';
import 'package:prime_video_clone/data/data.dart';
import 'package:prime_video_clone/widgets/cast_card_widget.dart';
import 'package:prime_video_clone/widgets/episode_card_widget.dart';

import '../widgets/movie_card_widget.dart';

class MovieDetailScreen extends StatefulWidget {
  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  String desc =
      "It's been a year of calm. Homelander's subdued. Butcher works for the government, supervised by Hughie of all people. But both men itch to turn this peace and quiet into blood and bone.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/profileAvatar.jpg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getImage(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Amazon Original",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  getLogo(),
                  const SizedBox(
                    height: 6,
                  ),
                  getSeasonText(),
                  const SizedBox(
                    height: 6,
                  ),
                  getPrimeVerify(),
                  const SizedBox(
                    height: 6,
                  ),
                  getMovieActionButton(
                    onTap: () {},
                    containerColor: Colors.white,
                    icon: Icons.play_arrow,
                    iconColor: Colors.black,
                    text: "Episode 1\nWatch now",
                    textColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  getMovieActionButton(
                    onTap: () {},
                    containerColor: buttonColor,
                    icon: Icons.download,
                    iconColor: Colors.white,
                    text: "Download Season 3",
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  getWatchButtonSection(),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    desc,
                    maxLines: 4,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Science Fiction · Comedy",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IMDb 8.7",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "8 episodes 2022",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      containerText(text: "18+"),
                      containerText(text: "4K UHD"),
                      containerText(text: "HDR"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Languages: Audio (3), Subtitles (4)",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  getTabs(),
                  Column(
                      children: List.generate(episodes.length, (index) {
                    return EpisodeCardWidget(
                        episodeTitle: episodes[index]['episodeTitle'],
                        episodeName: episodes[index]['episodeName']);
                  })),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Customers also watched",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemCount: subtitledTvMovies.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: subtitledTvMovies[index],
                            height: 140,
                            width: 250,
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Cast & Crew",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Details from IMDB",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: List.generate(casts.length, (index) {
                        return CastCardWidget(
                            image: casts[index]['image'],
                            name: casts[index]['name']);
                      })),
                  Divider(
                    height: 64,
                    color: Colors.white.withOpacity(0.1),
                    thickness: 1.3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CastCardWidget(
                          image: 'assets/the_boys/director.jpg',
                          name: 'Philip Sgriccia'),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Director",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              "Known for The Boys (2019), Supernatural (2005) and Max Headroom (1987), Lois & Clark: The New Adventures of Superman (1993)",
                              maxLines: 4,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 3))),
            child: customTextbutton("Episodes", Colors.white),
          ),
        ),
        Expanded(child: customTextbutton("Explore", Colors.grey)),
        Expanded(child: customTextbutton("More Details", Colors.grey)),
      ],
    );
  }

  Widget customTextbutton(String text, Color color) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w500, fontSize: 21),
        ));
  }

  Widget containerText({
    String? text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor,
        ),
        child: Text(
          text!,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 19),
        ),
      ),
    );
  }

  Widget getWatchButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        columnIconTextButton(icon: Icons.add, text: "Watchlist"),
        const SizedBox(width: 35),
        columnIconTextButton(icon: Icons.people_outline, text: "Watch Party"),
        const SizedBox(width: 35),
        columnIconTextButton(icon: Icons.more_vert_outlined, text: "More"),
      ],
    );
  }

  Widget columnIconTextButton({IconData? icon, String? text}) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text!,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget getMovieActionButton(
      {String? text,
      Function()? onTap,
      IconData? icon,
      Color? textColor,
      Color? iconColor,
      Color? containerColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 40,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text!,
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Row getPrimeVerify() {
    return Row(
      children: [
        Icon(
          Icons.verified_rounded,
          color: primeColor,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "Included with Prime",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row getSeasonText() {
    return Row(
      children: [
        Text(
          "Season 3",
          style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 21,
              fontWeight: FontWeight.w500),
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white.withOpacity(0.9),
        ),
      ],
    );
  }

  Image getLogo() {
    return Image.asset(
      'assets/the_boys/logo.png',
      height: 45,
      width: 100,
    );
  }

  Stack getImage() {
    return Stack(
      children: [
        Image.asset(
          'assets/the_boys/detail.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.1),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
