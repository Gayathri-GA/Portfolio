import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/widgets/about_description.dart';
import 'package:portfolio/utils/size_utils.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 90.toHeight,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AboutDescription(),
                    Container(
                      height: SizeConfig().screenHeight / 1.075,
                      width: SizeConfig().screenWidth / 2,
                      color: Colors.white,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            height: SizeConfig().screenHeight / 1.075,
                            width: SizeConfig().screenWidth / 3.8,
                            decoration: new BoxDecoration(
                              color: Color(0xff000080),
                              boxShadow: [BoxShadow(color: Colors.blueGrey, blurRadius: 15.toFont)],
                              image: DecorationImage(
                                  image: AssetImage('assets/aboutbg.gif'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(500.toFont),
                                  bottomLeft: Radius.circular(500.toFont)),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_avatar_child_kid-512.png'),
                                // backgroundImage: NetworkImage(
                                //     'https://cdn.hashnode.com/res/hashnode/image/upload/v1617111315341/R5m5XIFLQ.jpeg?w=500&h=500&fit=crop&crop=entropy&auto=compress'),
                                radius: 200.toFont,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AboutDescription(),
                Row(
                  children: [
                    Container(
                      height: SizeConfig().screenHeight / 1.9,
                      width: SizeConfig().screenWidth,
                      color: Colors.white,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: SizeConfig().screenHeight / 3.4,
                            width: SizeConfig().screenWidth,
                            decoration: new BoxDecoration(
                              color: Color(0xff000080),
                              boxShadow: [BoxShadow(color: Colors.blueGrey, blurRadius: 15.toFont)],
                              image: DecorationImage(
                                  image: AssetImage('assets/aboutbg.gif'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(500.toFont),
                                  topRight: Radius.circular(500.toFont)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 200.toHeight),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_avatar_child_kid-512.png'),
                              // backgroundImage: NetworkImage(
                              //     'https://cdn.hashnode.com/res/hashnode/image/upload/v1617111315341/R5m5XIFLQ.jpeg?w=500&h=500&fit=crop&crop=entropy&auto=compress'),
                              radius: 160.toFont,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
  }

  Widget bgLine() {
    return Container(
        height: SizeConfig().screenHeight - 100.toHeight,
        child: VerticalDivider(thickness: 0.8.toWidth, color: Color(0xff000080)));
  }
}
