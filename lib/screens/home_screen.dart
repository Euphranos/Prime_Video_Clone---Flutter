import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_clone/constants/constants.dart';
import 'package:prime_video_clone/data/data.dart';

import 'package:prime_video_clone/widgets/slider_card_widget.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliderItems = [
    "assets/sliders/thor.jpg",
    "assets/sliders/venom.jpg",
    "assets/sliders/last.jpg",
    "assets/sliders/justice_league.jpg",
    "assets/sliders/john_wick.jpg",
    "assets/sliders/thor.jpg",
    "assets/sliders/venom.jpg",
    "assets/sliders/last.jpg",
    "assets/sliders/justice_league.jpg",
    "assets/sliders/john_wick.jpg",
  ];

  int activeSliderIndex = 0;

  List<String> categories = ["All", "Movies", "Tv Shows"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(categories: categories),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            sliver: SliverToBoxAdapter(
              child: CarouselSlider.builder(
                  itemCount: sliderItems.length,
                  itemBuilder: ((context, index, realIndex) {
                    return SliderCardWidget(
                      sliderItem: sliderItems[index],
                    );
                  }),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeSliderIndex = index;
                      });
                    },
                    viewportFraction: 1,
                    height: 310,
                    autoPlay: true,
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IndicatorWidget(
                    sliderItems: sliderItems,
                    activeSliderIndex: activeSliderIndex),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderTextWithPrimeButton(
                      text: "Amazon Originals and Exclusives"),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                        itemCount: amazonOriginals.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: amazonOriginals[index],
                            height: 200,
                            width: 160,
                          );
                        }),
                  ),
                  const HeaderTextWithPrimeButton(
                      text: "TV and movies with audio"),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemCount: tvAndMovies.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: tvAndMovies[index],
                            height: 140,
                            width: 250,
                          );
                        }),
                  ),
                  const HeaderTextWithPrimeButton(
                      text: "subtitled TV and movies"),
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
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Top 10 in United States",
                      style: TextStyle(
                          color: primeColor,
                          fontSize: 21,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemCount: topMovies.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return TopMoviesCard(
                            movie: topMovies[index],
                            index: index,
                          );
                        }),
                  ),
                  const HeaderTextWithPrimeButton(text: "Recommended Movies"),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemCount: tvAndMovies.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: tvAndMovies[index],
                            height: 140,
                            width: 250,
                          );
                        }),
                  ),
                  const HeaderTextWithPrimeButton(
                      text: "Recently added movies"),
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
                  const HeaderTextWithPrimeButton(text: "Drama Movies"),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        itemCount: tvAndMovies.length,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MovieCard(
                            movie: tvAndMovies[index],
                            height: 140,
                            width: 250,
                          );
                        }),
                  ),
                  const HeaderTextWithPrimeButton(text: "Recommended TV"),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
