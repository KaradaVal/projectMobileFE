import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project01/data/theme.dart';
import 'package:project01/screens/loginPage.dart';
import 'package:provider/provider.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final _controllerUser = TextEditingController();
  final _controllerPass = TextEditingController();
  final _controllerConfirmPass = TextEditingController();
  bool _validUser = true;
  bool _validPass = true;
  bool _validConfirmPass = true;
  String specialError = "";
  bool _isObscured = true;
  bool _isObscuredC = true;

  void checkValid() {
    setState(() {
      _validUser = !_controllerUser.text.isEmpty;
      _validPass = !_controllerPass.text.isEmpty;
      _validConfirmPass = !_controllerConfirmPass.text.isEmpty;
      if (_controllerConfirmPass.text != _controllerPass.text) {
        specialError = "Confirm Pass does not match";
        _validConfirmPass = false;
      }
      if (_controllerConfirmPass.text.isEmpty) {
        specialError = "Confirm Pass must be filled";
        _validConfirmPass = false;
      }
    });
  }

  void dispose() {
    _controllerUser.dispose();
    _controllerPass.dispose();
    _controllerConfirmPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
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
                      "REGISTER",
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
                            _validUser ? null : "Username Must be filled",
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
                        errorText:
                            _validPass ? null : "Password Must be filled",
                        helperText: "Input Password",
                        label: Text("Password"),
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
                    TextField(
                      controller: _controllerConfirmPass,
                      onChanged: (text) {
                        checkValid();
                      },
                      enabled: true,
                      obscureText: _isObscuredC, //! PASSWORD
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        errorText: _validConfirmPass ? null : specialError,
                        helperText: "Confirm Password",
                        label: Text("Confirm Password"),
                        prefixIcon: Icon(Icons.lock), //! Didalam
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscuredC = !_isObscuredC;
                              });
                            },
                            icon: _isObscuredC
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
                            if (_validConfirmPass && _validPass && _validUser) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => loginPage()));
                            }
                          },
                          child: Text(
                            "REGISTER",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      height: 30,
                      width: double.infinity,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => loginPage()));
                        },
                        child:
                            Text("Already Have Account? Click Here To Login"))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
