import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/data/user.dart';
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
          // ElevatedButton(
          //     onPressed: () {
          // Navigator.of(context).pushReplacement(
          //     MaterialPageRoute(builder: (context) => loginPage()));
          //     },
          //     child: Text("Login")),
          // SizedBox(
          //   width: 10,
          // ),
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
          child: Consumer<userManager>(builder: (context, value, child) {
            return NavigationBar(
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
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  if (index == 2 && !value.isLogin) {
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
                                        builder: (context) => loginPage()));
                              },
                              child: Text("Login"))
                        ]));
                  } else {
                    widget.currentPage = index;
                  }
                })
              },
            );
          })),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  color: Provider.of<themeManager>(context).mode
                      ? Colors.grey.shade900
                      : Colors.grey.shade400,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(!Provider.of<userManager>(context).isLogin
                            ? "Guest"
                            : Provider.of<userManager>(context)
                                .currentUser
                                .username),
                        Text(!Provider.of<userManager>(context).isLogin
                            ? "Guest"
                            : Provider.of<userManager>(context)
                                .currentUser
                                .email),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () => {
                    setState(() {
                      widget.currentPage = 0;
                    }),
                    Navigator.pop(context)
                  },
                  leading: Icon(Icons.home),
                  title: Text("HOME"),
                ),
                ListTile(
                  onTap: () => {
                    setState(() {
                      widget.currentPage = 1;
                    }),
                    Navigator.pop(context)
                  },
                  leading: Icon(Icons.favorite),
                  title: Text("LIST"),
                ),
                ListTile(
                  onTap: () => {
                    setState(() {
                      widget.currentPage = 2;
                    }),
                    Navigator.pop(context)
                  },
                  leading: Icon(Icons.book),
                  title: Text("BOOKMARK"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "${!Provider.of<themeManager>(context).mode ? "Light" : "Dark"} Mode",
                    style: TextStyle(
                        color: Provider.of<themeManager>(context).mode
                            ? Colors.white
                            : Colors.black),
                  ),
                  leading: !Provider.of<themeManager>(context).mode
                      ? Icon(Icons.light_mode)
                      : Icon(Icons.dark_mode),
                  trailing: Switch(
                    value: Provider.of<themeManager>(context).mode,
                    onChanged: (value) {
                      Provider.of<themeManager>(context, listen: false)
                          .changeMode();
                    },
                  ),
                ),
                Divider(),
              ],
            ),
            Column(
              children: [
                Divider(),
                ListTile(
                  onTap: () => {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => loginPage())),
                    Provider.of<userManager>(context).logOut(),
                  },
                  leading: Icon(Icons.logout),
                  title: Text(Provider.of<userManager>(context).isLogin
                      ? "LogOut"
                      : "LogIn"),
                ),
              ],
            )
          ],
        ),
      ),
      body: pageList[widget.currentPage],
    );
  }
}
