import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/utils/size_utils.dart';

class Youtube extends StatefulWidget {
  final Portfolio portfolio;
  Youtube({@required this.portfolio});
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 100.toHeight,
            color: Colors.blue,
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.blue,
          );
  }
}
