import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/screens/home/widgets/menu_item.dart';
import 'package:portfolio/screens/home/widgets/nav_bar_mobile.dart';
import 'package:portfolio/utils/size_utils.dart';

class HomeScreen extends StatefulWidget {
  final Widget portfolioPage;
  final List<Portfolio> pageName;
  final ValueChanged<Portfolio> showPage;
  HomeScreen({@required this.pageName, @required this.showPage, this.portfolioPage});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double menuHeight = 0.0;
  IconData menuIcon = Icons.menu;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Scaffold(
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.toWidth),
                  width: SizeConfig().screenWidth,
                  height: 100.toHeight,
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
                              fontSize: 30.toFont,
                              color: Color(0xff000080),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: SizeConfig().screenWidth / 1.8,
                                child: Row(
                                  children: [
                                    for (var pageTitle in widget.pageName)
                                      MenuItem(
                                        menuItem: pageTitle.page,
                                        onTap: () {
                                          print(widget.pageName);
                                          print('Hiiiiiiiiiiiiiiiiiiiiiiiii');
                                          print(pageTitle.pageName);
                                          widget.showPage(pageTitle);
                                        },
                                      )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                widget.portfolioPage
              ],
            ),
          )
        : Scaffold(
            body: Stack(
              children: [
                Column(
                  children: [
                    Container(
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
                    ),
                    widget.portfolioPage
                  ],
                ),
                AnimatedContainer(
                  margin: EdgeInsets.only(top: 128.toHeight),
                  duration: Duration(milliseconds: 375),
                  curve: Curves.easeInSine,
                  height: menuHeight,
                  width: double.infinity,
                  color: Color(0xff000080),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var pageHeading in widget.pageName)
                          NavBarItem(
                            menuItem: pageHeading.page,
                            onTap: () {
                              setState(() {
                                menuIcon = Icons.menu;
                                menuHeight = 0.0;
                              });
                              widget.showPage(pageHeading);
                            },
                          )
                      ],
                    ),
                  ),
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