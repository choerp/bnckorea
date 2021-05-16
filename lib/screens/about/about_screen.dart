import 'package:bnckorea/constants.dart';
import 'package:bnckorea/models/about.dart';
import 'package:bnckorea/screens/appbar.dart';
import 'package:flutter/material.dart';

import '../topbody.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBody(
              imgPath: "assets/images/about_top.jpg",
              category: "ABOUT",
              explain: "건강한 사육장을 만들어갑니다.",
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Text(" * Our Purpose",
                style: TextStyle(
                  fontFamily: 'BlackHanSans',
                  fontSize: 30
                ),
                textAlign: TextAlign.start,),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: 300,
                    color: Colors.black,
                  ),
                  Container(
                    width: size.width,
                    height: 300,
                    color: Colors.black,
                  ),
                  Container(
                    width: size.width,
                    height: 300,
                    color: Colors.black,
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

