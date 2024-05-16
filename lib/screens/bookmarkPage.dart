import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/widgets/comicCard.dart';
import 'package:provider/provider.dart';

class bookmarkPage extends StatelessWidget {
  bookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Consumer<comicListManager>(builder: (context, value, child) {
          return GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.25),
            children: value.listComic
                .where((element) => element.isBookmark)
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: comicCard(
                          comicData: e,
                          isBookmark: e.isBookmark,
                          id: e.id,
                          judul: e.judul,
                          cover: e.cover),
                    ))
                .toList(),
          );
        }),
      ),
    );
  }
}
