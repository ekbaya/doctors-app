import 'package:doctors_app/pages/home/HomePage.dart';
import 'package:doctors_app/pages/login/LoginPage.dart';
import 'package:doctors_app/utils/PageTransistor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                      "Sign up Account",
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
                          "Create An Account",
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
                            hintText: 'Confirm Password',
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
                      CheckboxListTile(
                        title: Row(
                          children: [
                            Text(
                              "I accept",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text(
                                "Terms and conditions",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    fontSize: 12),
                              ),
                              onTap: () {
                                //oppening terms
                              },
                            ),
                          ],
                        ),
                        value: _value,
                        onChanged: (newValue) {
                          setState(() {
                            _value = newValue;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
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
                              "Register",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                                children: <TextSpan>[
                                  new TextSpan(text: "Already have an account?"),
                                  new TextSpan(
                                    text: " Login.",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                child: LoginPage()));
                                      },
                                  ),
                                ]),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    child: LoginPage()));
                          },
                        ),
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
