// import 'dart:js_interop';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/widgets/comicHScroll.dart';
import 'package:provider/provider.dart';
import 'package:super_banners/super_banners.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  List<comicModel> listComic = comicListManager().listComic;

  late List<comicModel> listLatest;

  List<String> listCarousel = [
    "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/wkHZ8HGnq5kWxQR9y/001.1.jpg?w=250",
    "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/r7sx9DgAdCiuxBGYK/002.jpg?w=250",
    "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/LFw2a4ZtcGBirCkgY/001.jpg?w=250",
    "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/ZmwNuaitgiCQMJfRa/011.png?w=250",
    "https://wp.youtube-anime.com/cdn.myanimelist.net/images/manga/1/284170.jpg?w=250",
  ];

  @override
  Widget build(BuildContext context) {
    listLatest = listComic;
    listLatest.sort(
      (a, b) {
        return a.date.compareTo(b.date);
      },
    );

    return Scaffold(
      backgroundColor: Provider.of<themeManager>(context).mode
          ? Colors.grey.shade700
          : Colors.white38,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CarouselSlider(
                    items: listCarousel.map((e) {
                      return Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(e), fit: BoxFit.fill)),
                        ),
                        CornerBanner(
                            bannerColor: Colors.red,
                            bannerPosition: CornerBannerPosition.topLeft,
                            child: Text(
                              "Coming Soon",
                              style: TextStyle(color: Colors.white),
                            )),
                      ]);
                    }).toList(),
                    options: CarouselOptions(height: 300, autoPlay: true)),
                Consumer<comicListManager>(
                  builder: (context, value, child) => comicHScroll(
                    title: "LATEST",
                    listComic: value.listComic,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
