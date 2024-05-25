import 'package:project01/models/comicModel.dart';

class userModel {
  String username;
  String email;
  String password;

  final Set<comicModel> _bookmark = {};
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

  userModel({
    required this.username,
    required this.email,
    required this.password,
  });
}
