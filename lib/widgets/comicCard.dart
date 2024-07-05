// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/data/user.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/screens/detailPage.dart';
import 'package:project01/screens/loginPage.dart';
import 'package:project01/screens/mangaPage.dart';
import 'package:provider/provider.dart';

class comicCard extends StatefulWidget {
  comicCard(
      {super.key,
      required this.comicData,
      required this.judul,
      required this.id,
      required this.cover});

  comicModel comicData;

  String judul;

  int id;

  String cover;

  @override
  State<comicCard> createState() => _comicCardState();
}

class _comicCardState extends State<comicCard> {
  @override
  Widget build(BuildContext context) {
    bool isLogin = Provider.of<userManager>(context).isLogin;
    bool isDarkMode = Provider.of<themeManager>(context).mode;
    String _selectedValue = "";
    bool isBookmark = isLogin
        ? Provider.of<userManager>(context)
            .currentUser
            .bookmark
            .contains(widget.comicData)
        : false;

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
                child: PopupMenuButton(
                    popUpAnimationStyle: AnimationStyle(
                        curve: Easing.emphasizedAccelerate,
                        duration: Duration(milliseconds: 700)),
                    initialValue: _selectedValue,
                    onSelected: (value) {
                      if (value == "ChapterList") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => detailPage(
                                  comicData: widget.comicData,
                                  initIndex: 1,
                                )));
                      } else if (value == "FirstChapter") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => mangaPage(
                                  chapterData: widget.comicData.chapter[0],
                                  currentComicID: widget.comicData.id,
                                )));
                      } else if (value == "LastChapter") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => mangaPage(
                                  chapterData: widget.comicData.chapter[
                                      widget.comicData.chapter.length - 1],
                                  currentComicID: widget.comicData.id,
                                )));
                      } else if (value == "AddBookmark") {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                        if (isLogin) {
                          if (isBookmark) {
                            context
                                .read<userManager>()
                                .checkBookmark(widget.comicData);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              duration: Duration(seconds: 5),
                              content: Text(
                                "Berhasil Hapus Bookmark",
                              ),
                              action: SnackBarAction(
                                  label: "OKE", onPressed: () {}),
                            ));
                          } else {
                            context
                                .read<userManager>()
                                .checkBookmark(widget.comicData);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 5),
                              content: Text(
                                "Berhasil Tambah Bookmark",
                              ),
                              action: SnackBarAction(
                                  label: "OKE", onPressed: () {}),
                            ));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showMaterialBanner(
                              MaterialBanner(
                                  leading: Icon(Icons.login),
                                  content: Text("Login Terlebih Dahulu"),
                                  actions: [
                                TextButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentMaterialBanner();
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  loginPage()));
                                    },
                                    child: Text("Login"))
                              ]));
                        }
                      }

                      setState(() {});
                    },
                    itemBuilder: (context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            value: "ChapterList",
                            child: ListTile(
                              leading: Icon(Icons.list_alt),
                              title: Text("Chapter List"),
                            ),
                          ),
                          PopupMenuItem(
                            value: "FirstChapter",
                            child: ListTile(
                              leading: Icon(Icons.first_page_rounded),
                              title: Text("First Chapter"),
                            ),
                          ),
                          PopupMenuItem(
                            value: "LastChapter",
                            child: ListTile(
                              leading: Icon(Icons.last_page_rounded),
                              title: Text("Last Chapter"),
                            ),
                          ),
                          PopupMenuItem(
                            value: "AddBookmark",
                            child: ListTile(
                              leading: Icon(
                                Icons.bookmark_add,
                                color: isBookmark
                                    ? Colors.blue
                                    : isDarkMode
                                        ? Colors.white
                                        : Colors.grey.shade800,
                              ),
                              title: Text(isBookmark
                                  ? "Remove Bookmark"
                                  : "Add To Bookmark"),
                            ),
                          ),
                        ]),
                // IconButton(
                //     splashColor: Colors.transparent,
                //     highlightColor: Colors.transparent,
                //     enableFeedback: false,
                //     hoverColor: Colors.transparent,
                //     onPressed: () {
                // ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                // if (isLogin) {
                //   context
                //       .read<userManager>()
                //       .checkBookmark(widget.comicData);
                // } else {
                //   ScaffoldMessenger.of(context).showMaterialBanner(
                //       MaterialBanner(
                //           leading: Icon(Icons.login),
                //           content: Text("Login Terlebih Dahulu"),
                //           actions: [
                //         TextButton(
                //             onPressed: () {
                //               ScaffoldMessenger.of(context)
                //                   .hideCurrentMaterialBanner();
                //               Navigator.of(context).pushReplacement(
                //                   MaterialPageRoute(
                //                       builder: (context) => loginPage()));
                //             },
                //             child: Text("Login"))
                //       ]));
                // }
                //     },
                //     color: isBookmark ? Colors.blue : Colors.black,
                //     icon: Icon(
                //       Icons.bookmark,
                //     )),
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
