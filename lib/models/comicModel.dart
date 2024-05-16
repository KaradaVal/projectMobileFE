class comicModel {
  String judul;
  String desc;
  int id;
  String cover;
  String date;
  String lastChapter;
  Set<String> genre;
  bool isBookmark;

  List<Map<String, dynamic>> chapter;
  //! NOTE CHAPTER LIST;
  // List <Map<String,dynamic>> chapter = [
  //   {
  //     "chapter":0,
  //     "pageComic":[
  //       "imglink",
  //       "imglink",
  //     ],
  //   },
  // ];

  comicModel(
      {required this.judul,
      required this.desc,
      required this.id,
      required this.cover,
      required this.date,
      required this.chapter,
      required this.lastChapter,
      required this.genre,
      required this.isBookmark});
}
