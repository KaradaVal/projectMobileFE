import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/screens/homePage.dart';
import 'package:project01/screens/mainPage.dart';
import 'package:project01/screens/mangaPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => comicListManager()),
      ChangeNotifierProvider(create: (context) => themeManager())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<themeManager>(context).mode
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // home: mangaPage(),
      home: mainPage(
        currentPage: 0,
        genre: "",
      ),
    );
  }
}
