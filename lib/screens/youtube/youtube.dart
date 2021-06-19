import 'package:flutter/material.dart';
import 'package:portfolio/screens/youtube/blogs.dart';
import 'package:portfolio/screens/youtube/channel.dart';
import 'package:portfolio/utils/size_utils.dart';

class Youtube extends StatefulWidget {
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
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Channel(),
                    SectionBlog(),
                  ],
                ),
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
