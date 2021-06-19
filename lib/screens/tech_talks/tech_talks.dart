import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class TechTalks extends StatefulWidget {
  @override
  _TechTalksState createState() => _TechTalksState();
}

class _TechTalksState extends State<TechTalks> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 100.toHeight,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.toWidth),
                      child: Text(
                        'Tech Talks',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Nunito',
                            color: Color(0xff000080),
                            fontSize: 56.toFont),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/talk.gif'),
                        radius: 150.toFont,
                      ),
                      SizedBox(
                        height: 80.toHeight,
                      ),
                      Text(
                        'To be updated',
                        style: TextStyle(
                            letterSpacing: 1.toFont,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            color: Color(0xff000080),
                            fontSize: 22.toFont),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.blue,
          );
  }
}
