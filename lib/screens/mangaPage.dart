import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/widgets/scrollToTopButton.dart';
import 'package:provider/provider.dart';

class mangaPage extends StatelessWidget {
  mangaPage(
      {super.key, required this.chapterData, required this.currentComicID});

  Map<String, dynamic> chapterData = {};

  int currentComicID;

  @override
  Widget build(BuildContext context) {
    List<String> comicPageList = chapterData['pageComic'];
    comicModel currentComicData =
        Provider.of<comicListManager>(context).listComic[currentComicID - 1];

    final ScrollController _scrollController = ScrollController();

    int currentChapter = chapterData['chapter'];
    return Scaffold(
      floatingActionButton:
          ScrollToTopButton(scrollController: _scrollController),
      appBar: AppBar(
        backgroundColor: Provider.of<themeManager>(context).mode
            ? Colors.grey.shade900
            : Colors.grey.shade400,
        centerTitle: true,
        title: Text(chapterData['judul']),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "${chapterData['judul']} Chapter ${chapterData['chapter']}",
                  style: TextStyle(fontSize: 30),
                ),
                color: Provider.of<themeManager>(context).mode
                    ? Colors.grey.shade900
                    : Colors.grey.shade400,
              ),
              Container(
                color: Provider.of<themeManager>(context).mode
                    ? Colors.grey.shade900
                    : Colors.grey.shade400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "All chapters are in",
                      style: TextStyle(fontSize: 12),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(chapterData['judul'])),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              DropdownButton<int>(
                  value: currentChapter,
                  items: currentComicData.chapter
                      .map((e) => DropdownMenuItem<int>(
                          value: e['chapter'],
                          child: Text("Chapter ${e['chapter']}")))
                      .toList(),
                  onChanged: (value) {
                    print(value);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => mangaPage(
                              chapterData: currentComicData.chapter[value ?? 0],
                              currentComicID: currentComicData.id,
                            )));
                  }),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (currentChapter > 0) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => mangaPage(
                                      chapterData: currentComicData
                                          .chapter[currentChapter - 1],
                                      currentComicID: currentComicData.id,
                                    )));
                          }
                        },
                        child: Text("Prev")),
                    ElevatedButton(
                        onPressed: () {
                          if (currentChapter <
                              currentComicData.chapter.length - 1) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => mangaPage(
                                      chapterData: currentComicData
                                          .chapter[currentChapter + 1],
                                      currentComicID: currentComicData.id,
                                    )));
                          }
                        },
                        child: Text("Next"))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  children: comicPageList
                      .map((e) => Image.network(
                            e,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: LinearProgressIndicator(
                                      color: Colors.purple,
                                      // strokeWidth: 5,
                                    ),
                                  ),
                                );
                              }
                            },
                          ))
                      .toList(),
                ),
              ),
              DropdownButton<int>(
                  value: currentChapter,
                  items: currentComicData.chapter
                      .map((e) => DropdownMenuItem<int>(
                          value: e['chapter'],
                          child: Text("Chapter ${e['chapter']}")))
                      .toList(),
                  onChanged: (value) {
                    print(value);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => mangaPage(
                              chapterData: currentComicData.chapter[value ?? 0],
                              currentComicID: currentComicData.id,
                            )));
                  }),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (currentChapter > 0) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => mangaPage(
                                      chapterData: currentComicData
                                          .chapter[currentChapter - 1],
                                      currentComicID: currentComicData.id,
                                    )));
                          }
                        },
                        child: Text("Prev")),
                    ElevatedButton(
                        onPressed: () {
                          if (currentChapter <
                              currentComicData.chapter.length - 1) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => mangaPage(
                                      chapterData: currentComicData
                                          .chapter[currentChapter + 1],
                                      currentComicID: currentComicData.id,
                                    )));
                          }
                        },
                        child: Text("Next"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
