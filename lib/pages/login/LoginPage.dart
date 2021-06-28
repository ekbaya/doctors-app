import 'package:doctors_app/pages/home/HomePage.dart';
import 'package:doctors_app/pages/signup/SignupPage.dart';
import 'package:doctors_app/utils/PageTransistor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerRight,
              colors: [
                Colors.blueAccent,
                Colors.blue,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "Sign In Account",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Container(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Welcom Back",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.indigo,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                                fontSize: 14.0, color: Colors.black54),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.indigo,
                          ),
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                                fontSize: 14.0, color: Colors.black54),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value ? _value = false : _value = true;
                                      });
                                    }),
                                Text(
                                  "Remember me",
                                  style: TextStyle(
                                      color: Colors.indigo[300],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Colors.indigo[300],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: HomePage()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Login in",
                              style: TextStyle(
                                  color: Colors.grey[100],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                              children: <TextSpan>[
                                new TextSpan(text: "Do not have an account?"),
                                new TextSpan(
                                  text: " Register.",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              child: SignupPage()));
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: SignupPage()));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
