import 'package:flutter/material.dart';

class TopBody extends StatelessWidget {

  final String imgPath, category, explain;

  TopBody({this.imgPath, this.category, this.explain});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(1)
                  ])
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(category,
                  style: TextStyle(
                    fontFamily: 'BlackHanSans',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 8,
                  ),),
                Divider(height: 20,),
                Text(explain)
              ],
            ),
          ),
        )
      ],
    );
  }
}
