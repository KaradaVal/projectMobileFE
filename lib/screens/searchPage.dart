import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/widgets/comicCard.dart';
import 'package:provider/provider.dart';

class searchPage extends StatefulWidget {
  searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  final _searchC = TextEditingController();

  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Provider.of<themeManager>(context).mode
            ? Colors.grey.shade900
            : Colors.grey.shade400,
        title: Text("Search"),
        centerTitle: true,
        actions: [
          Switch(
            activeColor: Colors.purple,
            value: Provider.of<themeManager>(context).mode,
            onChanged: (value) {
              Provider.of<themeManager>(context, listen: false).changeMode();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextField(
                controller: _searchC,
                onChanged: (text) {
                  setState(() {
                    searchText = text;
                  });
                },
                enabled: true,
                decoration: InputDecoration(
                  label: Text("Search"),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: Consumer<comicListManager>(builder: (context, value, child) {
              return GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.25),
                children: value.listComic
                    .where((element) => element.judul
                        .toLowerCase()
                        .contains(searchText.toLowerCase()))
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: comicCard(
                              comicData: e,
                              id: e.id,
                              judul: e.judul,
                              cover: e.cover),
                        ))
                    .toList(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
