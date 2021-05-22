import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/blogs/blogs.dart';
import 'package:portfolio/screens/home/widgets/menu_item.dart';
import 'package:portfolio/screens/home/widgets/nav_bar_mobile.dart';
import 'package:portfolio/screens/open_source/open_source.dart';
import 'package:portfolio/screens/tech_talks/tech_talks.dart';
import 'package:portfolio/screens/youtube/youtube.dart';
import 'package:portfolio/utils/size_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = new ScrollController();
  double menuHeight = 0.0;
  IconData menuIcon = Icons.menu;
  var pageTitle = ['About', 'Youtube', 'Blogs', 'Tech Talks', 'Open Source Contribution'];
  final List pageList = [AboutSection(), Youtube(), Blogs(), TechTalks(), OpenSource()];
  void containerSize() {
    setState(() {
      menuIcon = Icons.menu;
      menuHeight = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Scaffold(
            backgroundColor: Colors.white,
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
                          Container(
                            width: 90.toWidth,
                            height: 90.toHeight,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'), fit: BoxFit.contain),
                            ),
                          ),
                          // Text(
                          //   'G',
                          //   style: TextStyle(
                          //     fontSize: 36.toFont,
                          //     color: Color(0xff000080),
                          //   ),
                          // ),
                          Column(
                            children: [
                              Container(
                                width: SizeConfig().screenWidth / 1.8,
                                child: Row(
                                  children: [navBarLandscape(scrollController)],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    width: SizeConfig().screenWidth,
                    height: SizeConfig().screenHeight - 100.toHeight,
                    color: Colors.white,
                    child: ListView.builder(
                        controller: scrollController,
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return pageList[index];
                        }))
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
                              Container(
                                width: 110.toWidth,
                                height: 110.toHeight,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/logo.png'), fit: BoxFit.contain),
                                ),
                              ),
                              // Text(
                              //   'G',
                              //   style: TextStyle(
                              //     fontSize: 60.toFont,
                              //     color: Color(0xff000080),
                              //   ),
                              // ),
                              navMenuButton(50)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: SizeConfig().screenWidth,
                        height: SizeConfig().screenHeight - 130.toHeight,
                        color: Colors.white,
                        child: ListView.builder(
                            controller: scrollController,
                            physics: BouncingScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return pageList[index];
                            }))
                  ],
                ),
                AnimatedContainer(
                  margin: EdgeInsets.only(top: 128.toHeight),
                  duration: Duration(milliseconds: 375),
                  curve: Curves.easeInSine,
                  height: menuHeight,
                  width: double.infinity,
                  color: Color(0xff000080),
                  child: SingleChildScrollView(child: navBarPortrait(scrollController)),
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

  Widget navBarPortrait(ScrollController scrollController) {
    return Column(
      children: [
        NavBarItem('About', 1, () {
          containerSize();
          scrollController.animateTo(
            scrollController.position.minScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        NavBarItem('Youtube', 2, () {
          containerSize();
          scrollController.animateTo(
            0.25 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        NavBarItem('Blogs', 3, () {
          containerSize();
          scrollController.animateTo(
            0.50 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        NavBarItem('Tech Talks', 4, () {
          containerSize();
          scrollController.animateTo(
            0.75 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        NavBarItem('Open Source Contribution', 5, () {
          containerSize();
          scrollController.animateTo(
            1 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
      ],
    );
  }

  Widget navBarLandscape(ScrollController scrollController) {
    return Row(
      children: [
        MenuItem('About', 1, () {
          scrollController.animateTo(
            scrollController.position.minScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        MenuItem('Youtube', 2, () {
          scrollController.animateTo(
            0.25 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        MenuItem('Blogs', 3, () {
          scrollController.animateTo(
            0.50 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        MenuItem('Tech Talks', 4, () {
          scrollController.animateTo(
            0.75 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        MenuItem('Open Source Contribution', 5, () {
          scrollController.animateTo(
            1 * scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
      ],
    );
  }
}
