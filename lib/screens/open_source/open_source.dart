import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/utils/size_utils.dart';

class OpenSource extends StatefulWidget {
  final Portfolio portfolio;
  OpenSource({@required this.portfolio});
  @override
  _OpenSourceState createState() => _OpenSourceState();
}

class _OpenSourceState extends State<OpenSource> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return (SizeConfig().screenWidth > 1000)
        ? Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 100.toHeight,
            color: Colors.orange,
          )
        : Container(
            width: SizeConfig().screenWidth,
            height: SizeConfig().screenHeight - 130.toHeight,
            color: Colors.orange,
          );
  }
}
