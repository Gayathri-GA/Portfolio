import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class NavBarPortrait extends StatefulWidget {
  @override
  _NavBarPortraitState createState() => _NavBarPortraitState();
}

class _NavBarPortraitState extends State<NavBarPortrait> {
  double menuHeight = 0.0;
  IconData menuIcon = Icons.menu;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.toWidth),
      width: SizeConfig().screenWidth,
      height: 130.toHeight,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gayathri Devi',
                style: TextStyle(
                  fontSize: 36.toFont,
                  color: Color(0xff000080),
                ),
              ),
              navMenuButton(50)
            ],
          ),
        ],
      ),
    );
  }

  Widget navMenuButton(double height) {
    return InkWell(
      onTap: () {
        if (menuHeight == 0.0) {
          setState(() {
            menuIcon = Icons.close;
            menuHeight = SizeConfig().screenHeight;
          });
        } else if (menuHeight == SizeConfig().screenHeight) {
          setState(() {
            menuIcon = Icons.menu;
            menuHeight = 0.0;
          });
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.toWidth, vertical: 10.toHeight),
        width: 100.toWidth,
        height: height,
        child: Center(
          child: Icon(
            menuIcon,
            color: Color(0xff000080),
            size: 50.toFont,
          ),
        ),
      ),
    );
  }
}
