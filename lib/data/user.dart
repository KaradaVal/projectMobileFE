import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project01/models/comicModel.dart';
import 'package:project01/models/userModel.dart';

class userManager with ChangeNotifier {
  List<userModel> listUsers = [
    userModel(username: "root", email: "test@gmail.com", password: "a"),
    userModel(
        username: "budiono siregar",
        email: "budi@gmail.com",
        password: "12345678"),
  ];

  void checkBookmark(item) {
    if (!currentUser.bookmark.contains(item)) {
      currentUser.bookmark.add(item);
    } else {
      currentUser.bookmark.remove(item);
    }
    notifyListeners();
  }

  late userModel currentUser;

  bool isLogin = false;

  void addUser(username, email, passwd) {
    listUsers
        .add(userModel(username: username, email: email, password: passwd));
    print(listUsers);
  }

  bool checkUser(String username, String passwd) {
    notifyListeners();
    List<userModel> userList = listUsers;
    for (var element in userList) {
      if (element.email == username && element.password == passwd) {
        return true;
      }
    }
    return false;
  }

  bool availableUser(String email) {
    notifyListeners();
    List<userModel> userList = listUsers;
    for (var element in userList) {
      if (element.email == email) {
        return false;
      }
    }
    return true;
  }

  void changeUser(value) {
    currentUser = value;
    isLogin = true;
  }

  void logOut() {
    isLogin = false;
  }
}
