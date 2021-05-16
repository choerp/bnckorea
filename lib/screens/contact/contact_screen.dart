import 'package:bnckorea/screens/appbar.dart';
import 'package:flutter/material.dart';

import '../topbody.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildPreferredSize(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBody(
              imgPath: "assets/images/contact_top.jpg",
              category: "CONTACT",
              explain: "찾아오시는 길.",
            )
          ],
        ),
      ),
    );
  }
}
