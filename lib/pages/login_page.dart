// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/myrouts.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'assets_images/images/image_hey.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                changeButton ? 'Done' : 'Welcome',
                style:
                    GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter User name',
                        labelText: 'Ueser name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "user name can not be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 40,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
