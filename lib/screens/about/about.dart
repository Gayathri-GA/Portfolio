import 'package:flutter/material.dart';
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
            height: SizeConfig().screenHeight - 100.toHeight,
            color: Colors.blueGrey,
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.blueGrey,
          );
  }

  Widget bgLine() {
    return Container(
        height: SizeConfig().screenHeight - 100.toHeight,
        child: VerticalDivider(thickness: 0.8.toWidth, color: Color(0xff000080)));
  }
}
