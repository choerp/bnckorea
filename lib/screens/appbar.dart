import 'package:flutter/material.dart';
import 'package:bnckorea/constants.dart';
import 'package:path/path.dart';


// decide Size of main AppBar
PreferredSize buildPreferredSize() {
  return PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TopBar(),
        CategoryList(),
      ],
    ),
  );
}

// company name and explain in the TopBar
class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: HomeLogoText(homeName: "비앤씨 코리아", routeName: '/',),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding),
              child: Text("대한민국 최고의 은나노 항균제",
                style: TextStyle(
                  fontFamily: 'NanumBrush',
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: kTextLightColor,
                ),),
            ),
          ),
        ],
      ),
    );
  }
}

// HomeLogo Text(Company name) and navigate to HomePage
class HomeLogoText extends StatefulWidget {
  final String homeName;
  final String routeName;
  const HomeLogoText({
    Key key,
    this.homeName,
    this.routeName
  }) : super(key: key);

  @override
  _HomeLogoTextState createState() => _HomeLogoTextState();
}

class _HomeLogoTextState extends State<HomeLogoText> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.pushNamed(context, widget.routeName);
      },
      child: Text(
        widget.homeName,
        style: TextStyle(
          fontFamily: 'BlackHanSans',
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}

// TopCategory & Page Navigator
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> categories = ["HOME", "ABOUT", "PRODUCT", "NEWS", "CONTACT"];
  List<String> pushCategory = ["/", "/about", "/product", "/news", "/contact"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.centerRight,
      height:40,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => buildCategory(index, context))
    );
  }

  // Display TopCategory
  Padding buildCategory(int index, BuildContext context) {
    var route = ModalRoute.of(context).settings.name;
    int selectedCategory = pushCategory.indexOf(route);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedCategory = index;
            Navigator.pushNamed(context, pushCategory[index]);
          },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
                  style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w200,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 3,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedCategory
                      ? Color(0xFFF2B705)
                      : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ), // PageNavigator
    );
  }
}
