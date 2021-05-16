import 'package:bnckorea/screens/appbar.dart';
import 'package:flutter/material.dart';
import 'package:bnckorea/models/product.dart';
import 'package:bnckorea/constants.dart';

import '../topbody.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBody(
              imgPath: "assets/images/product_top.jpg",
              category: "PRODUCT",
              explain: "전국 50개 사육장에 공급중인 제품",
            ),
        Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text(" * Our Products",
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
          child: ProductBody(),)
          ],
        ),
      ),
    );
  }
}


class ProductBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: index.isEven ? products[index].picture : Text(products[index-1].explain),
          );
        }
    );
  }
}

