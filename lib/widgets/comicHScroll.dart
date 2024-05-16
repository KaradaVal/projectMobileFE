import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/widgets/comicCard.dart';
import 'package:provider/provider.dart';

class comicHScroll extends StatelessWidget {
  comicHScroll({super.key, required this.title, required this.listComic});

  String title = "";
  List<comicModel> listComic = [];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 5,
      ),
      Text(
        "$title",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Provider.of<themeManager>(context).mode
                ? Colors.white
                : Colors.grey.shade600),
      ),
      SizedBox(
        height: 5,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: listComic.map((e) {
            return comicCard(
              comicData: e,
              isBookmark: e.isBookmark,
              judul: e.judul,
              cover: e.cover,
              id: e.id,
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
