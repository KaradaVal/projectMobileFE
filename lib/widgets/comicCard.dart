import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/screens/detailPage.dart';
import 'package:provider/provider.dart';

class comicCard extends StatefulWidget {
  comicCard(
      {super.key,
      required this.comicData,
      required this.isBookmark,
      required this.judul,
      required this.id,
      required this.cover});

  comicModel comicData;

  bool isBookmark;

  String judul;

  int id;

  String cover;

  @override
  State<comicCard> createState() => _comicCardState();
}

class _comicCardState extends State<comicCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => detailPage(
                  comicData: widget.comicData,
                )));
      },
      child: Container(
        height: 300,
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54),
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    enableFeedback: false,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      context
                          .read<comicListManager>()
                          .checkBookmark(widget.id - 1);
                    },
                    color: widget.isBookmark ? Colors.blue : Colors.black,
                    icon: Icon(
                      Icons.bookmark,
                    )),
              ),
              alignment: Alignment.topRight,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              color: Colors.black54,
              child: Text(
                "${widget.judul}",
                style: TextStyle(color: Colors.white70, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.cover), fit: BoxFit.cover)),
      ),
    );
  }
}
