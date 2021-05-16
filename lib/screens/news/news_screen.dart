import 'package:bnckorea/screens/appbar.dart';
import 'package:flutter/material.dart';

import '../topbody.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildPreferredSize(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBody(
              imgPath: "assets/images/news_top.jpg",
              category: "NEWS",
              explain: "비앤씨 코리아 소식",
            )
          ],
        ),
      ),
    );
  }
}
