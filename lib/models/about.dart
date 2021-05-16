import 'package:flutter/cupertino.dart';

class About {
  final int id;
  final Widget item;

  About({
    this.id,
    this.item,
  });
}

List<About> abouts = [
  About(
    id: 1,
    item: Container(
        height: 600,
        width: 600,
        child: Image.asset("assets/images/calcitop.png")),
  ),
  About(
    id: 2,
    item: Text("너무 좋아"),
  ),
  About(
    id: 3,
    item: Text("정말정말 좋아"),
  ),
  About(
    id: 4,
    item: Container(
        height: 1000,
        width: 1000,
        child: Image.asset("assets/images/echosol.png")),
  ),
];