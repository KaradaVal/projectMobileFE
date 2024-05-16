import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/screens/bookmarkPage.dart';
import 'package:project01/screens/homePage.dart';
import 'package:project01/screens/listPage.dart';
import 'package:project01/screens/loginPage.dart';
import 'package:project01/screens/searchPage.dart';
import 'package:provider/provider.dart';

class mainPage extends StatefulWidget {
  mainPage({super.key, required this.currentPage, required this.genre});

  int currentPage = 0;

  String genre = "";

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  bool mode = themeManager().mode;

  List<comicModel> listComic = comicListManager().listComic;

  @override
  Widget build(BuildContext context) {
    List<dynamic> pageList = [
      homePage(),
      listPage(
        genre: widget.genre,
      ),
      bookmarkPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Provider.of<themeManager>(context).mode
            ? Colors.grey.shade900
            : Colors.grey.shade400,
        title: Text(
          "MikroManga",
          style: TextStyle(),
        ),
        centerTitle: true,
        actions: [
          Switch(
            activeColor: Colors.purple,
            value: Provider.of<themeManager>(context).mode,
            onChanged: (value) {
              Provider.of<themeManager>(context, listen: false).changeMode();
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Text("Login")),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => searchPage()));
              },
              icon: Icon(Icons.search))
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
        ),
        child: NavigationBar(
          indicatorColor: Colors.blueGrey,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            NavigationDestination(icon: Icon(Icons.list), label: "List"),
            NavigationDestination(
                icon: Icon(Icons.bookmark), label: "Bookmark"),
          ],
          selectedIndex: widget.currentPage,
          onDestinationSelected: (index) => {
            setState(() {
              widget.currentPage = index;
            })
          },
        ),
      ),
      body: pageList[widget.currentPage],
    );
  }
}
