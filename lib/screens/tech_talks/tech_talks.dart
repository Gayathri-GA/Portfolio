import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/utils/size_utils.dart';

class TechTalks extends StatefulWidget {
  final Portfolio portfolio;
  TechTalks({@required this.portfolio});
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
            color: Colors.purple,
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.purple,
          );
  }
}
