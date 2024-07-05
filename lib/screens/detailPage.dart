import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/screens/listPage.dart';
import 'package:project01/screens/mainPage.dart';
import 'package:project01/screens/mangaPage.dart';
import 'package:provider/provider.dart';

class detailPage extends StatefulWidget {
  detailPage({super.key, required this.comicData, this.initIndex = 0});

  comicModel comicData;

  int initIndex;

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.index = widget.initIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.green,
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.red,
              tabs: [
                Tab(
                  child: Text("Detail"),
                ),
                Tab(
                  child: Text("Chapter List"),
                )
              ]),
          backgroundColor: Provider.of<themeManager>(context).mode
              ? Colors.grey.shade900
              : Colors.grey.shade400,
          actions: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Provider.of<themeManager>(context).mode
                      ? Colors.white30
                      : Colors.black12),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  enableFeedback: false,
                  hoverColor: Colors.transparent,
                  onPressed: () {
                    context
                        .read<comicListManager>()
                        .checkBookmark(widget.comicData.id - 1);
                  },
                  color: Provider.of<comicListManager>(context)
                          .listComic[widget.comicData.id - 1]
                          .isBookmark
                      ? Colors.blue
                      : Colors.black,
                  icon: Icon(
                    Icons.bookmark,
                  )),
            ),
            Switch(
              activeColor: Colors.purple,
              value: Provider.of<themeManager>(context).mode,
              onChanged: (value) {
                Provider.of<themeManager>(context, listen: false).changeMode();
              },
            ),
          ],
          title: Text("${widget.comicData.judul}"),
          centerTitle: true,
        ),
        body: TabBarView(controller: _tabController, children: [
          Container(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                      child: Image.network(
                        "${widget.comicData.cover}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Desc : ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                  widget.comicData.desc,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Genre : ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              flex: 1,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 0,
                                  crossAxisSpacing: 0,
                                  crossAxisCount: 3,
                                ),
                                children: widget.comicData.genre
                                    .map((e) => FilterChip(
                                        label: Text(e.toUpperCase()),
                                        onSelected: (value) {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      mainPage(
                                                        genre: e,
                                                        currentPage: 1,
                                                      )));
                                        }))
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: widget.comicData.chapter
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => mangaPage(
                                                  chapterData: e,
                                                  currentComicID:
                                                      widget.comicData.id,
                                                )));
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.grey.shade500,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Chapter ${e['chapter']}",
                                                ),
                                              )),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Icon(
                                                      Icons.menu_book_rounded,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 4,
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
