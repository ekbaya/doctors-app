import 'dart:async';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctors_app/pages/landing/components/FirstSlide.dart';
import 'package:doctors_app/pages/landing/components/SecondSlide.dart';
import 'package:doctors_app/pages/landing/components/ThirdSlide.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<bool> _onWillPop() async {
    return (AwesomeDialog(
            context: context,
            dialogType: DialogType.WARNING,
            headerAnimationLoop: false,
            animType: AnimType.TOPSLIDE,
            showCloseIcon: true,
            closeIcon: Icon(Icons.close_fullscreen_outlined),
            title: 'Warning',
            desc: 'You are about to exit from the app!',
            btnCancelOnPress: () {
              
            },
            onDissmissCallback: (type) {
              debugPrint('Dialog Dissmiss from callback $type');
            },
            btnOkOnPress: () {
              exit(0);
            })
          ..show()) ??
        false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: PageView(
          onPageChanged: (index) {
          },
          children: <Widget>[
           FirstSlide(),
           SecondSlide(),
           ThirdSlide(),
          ],
        ),
      ),
    );
  }
}
