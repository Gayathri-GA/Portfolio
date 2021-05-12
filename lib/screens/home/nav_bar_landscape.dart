import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widgets/menu_item.dart';
import 'package:portfolio/utils/size_utils.dart';

class NavBarLandscape extends StatefulWidget {
  @override
  _NavBarLandscapeState createState() => _NavBarLandscapeState();
}

class _NavBarLandscapeState extends State<NavBarLandscape> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.toHeight),
      width: SizeConfig().screenWidth,
      height: 100.toHeight,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.toWidth),
                child: Text(
                  'Gayathri Devi',
                  style: TextStyle(
                    fontSize: 30.toFont,
                    color: Color(0xff000080),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      MenuItem(
                        menuItem: 'Youtube',
                        onTap: () {},
                      ),
                      MenuItem(
                        menuItem: 'Blogs',
                        onTap: () {},
                      ),
                      MenuItem(
                        menuItem: 'Tech Talks',
                        onTap: () {},
                      ),
                      MenuItem(
                        menuItem: 'Open Source Contribution',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
