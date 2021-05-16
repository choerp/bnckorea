import 'package:bnckorea/constants.dart';
import 'package:bnckorea/screens/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildPreferredSize(), // AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/home_body.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Be Free From Disease",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Anton',
                    fontWeight: FontWeight.w100,
                    fontSize: 50,
                    letterSpacing: 4,
                  ),),
                  Divider(
                    indent: size.width/4,
                    endIndent: size.width/4,
                    color: Colors.black.withOpacity(.5),
                    height: 50,
                  ),
                  Text("질병으로부터 양계장을 보호하세요",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 30,
                      letterSpacing: 8,
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


