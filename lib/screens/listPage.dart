import 'package:flutter/material.dart';
import 'package:project01/data/listComic.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/widgets/comicCard.dart';
import 'package:provider/provider.dart';

class listPage extends StatefulWidget {
  listPage({super.key, required this.genre});

  String genre;

  @override
  State<listPage> createState() => _listPageState();
}

class _listPageState extends State<listPage> {
  List<comicModel> listComic = comicListManager().listComic;
  Set<String> listGenre = {};
  Set<String> selectedGenre = {};

  double _sliderValue = 2;

  void initState() {
    for (dynamic i in listComic) {
      for (dynamic j in i.genre) {
        listGenre.add(j);
      }
    }
    if (widget.genre != "") {
      selectedGenre.add(widget.genre);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listGenre
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FilterChip(
                              selected: selectedGenre.contains(e),
                              label: Text(e.toUpperCase()),
                              onSelected: (value) {
                                setState(() {
                                  if (selectedGenre.contains(e)) {
                                    selectedGenre.remove(e);
                                  } else {
                                    selectedGenre.add(e);
                                  }
                                });
                              }),
                        ))
                    .toList(),
              ),
            )),
          ),
          Slider(
              value: _sliderValue,
              divisions: 3,
              min: 1,
              max: 4,
              activeColor: Colors.purple,
              thumbColor: Colors.purple,
              overlayColor: MaterialStatePropertyAll(Colors.purple),
              label: "${_sliderValue.toInt()}",
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              }),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Expanded(
            child: Consumer<comicListManager>(builder: (context, value, child) {
              return GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    crossAxisCount: _sliderValue.toInt(),
                    childAspectRatio: 1 / 1.25),
                children: value.listComic
                    .where((element) {
                      if (selectedGenre.isEmpty) {
                        return true;
                      } else {
                        return element.genre
                            .any((genre) => selectedGenre.contains(genre));
                      }
                    })
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
