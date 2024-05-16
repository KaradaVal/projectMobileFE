import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/screens/mainPage.dart';
import 'package:project01/screens/registerPage.dart';
import 'package:provider/provider.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _controllerUser = TextEditingController();
  final _controllerPass = TextEditingController();
  bool _validUser = true;
  bool _validPass = true;
  bool _isObscured = true;

  void checkValid() {
    setState(() {
      _validUser = !_controllerUser.text.isEmpty;
      _validPass = !_controllerPass.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              color: Provider.of<themeManager>(context).mode
                  ? Colors.grey.shade800
                  : Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black54),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.white70,
                          size: 50,
                        ),
                      ),
                    ),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _controllerUser,
                      onChanged: (text) {
                        checkValid();
                      },
                      enabled: true,
                      decoration: InputDecoration(
                        errorText:
                            _validUser ? null : "Username must be filled",
                        helperText: "Input Username",
                        label: Text("Username"),
                        prefixIcon: Icon(Icons.person), //! Didalam
                      ),
                    ),
                    TextField(
                      controller: _controllerPass,
                      onChanged: (text) {
                        checkValid();
                      },
                      enabled: true,
                      obscureText: _isObscured, //! PASSWORD
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        helperText: "Input Password",
                        label: Text("Password"),
                        errorText:
                            _validPass ? null : "Password must be filled",
                        prefixIcon: Icon(Icons.lock), //! Didalam
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                            icon: _isObscured
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)), //! Diujung dalam
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            checkValid();
                            if (_validUser && _validPass) {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (context) => mainPage(
                                            currentPage: 0,
                                            genre: "",
                                          )));
                            }
                          },
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      height: 30,
                      width: double.infinity,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => registerPage()));
                        },
                        child:
                            Text("Dont Have Account? Click Here To Register"))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
