import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';
import 'package:portfolio/widgets/show_blog.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionBlog extends StatefulWidget {
  @override
  _SectionBlogState createState() => _SectionBlogState();
}

class _SectionBlogState extends State<SectionBlog> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Container(
          width: SizeConfig().screenWidth / 2,
          height: SizeConfig().screenHeight - 100.toHeight,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40.toWidth),
                    child: Text(
                      'Blogs',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Nunito',
                          color: Color(0xff000080),
                          fontSize: 56.toFont),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            left: 40.toWidth,
                            top: 30.toHeight,
                          ),
                          child: Row(
                            children: [
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://techblog.geekyants.com/getx-for-your-flutter-applications-part-2-state-management');
                                },
                                image: 'assets/b1.png',
                                title:
                                    'GetX for your Flutter Applications Part 2: State Management',
                              ),
                              SizedBox(
                                width: 20.toWidth,
                              ),
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://techblog.geekyants.com/getx-for-your-flutter-applications-part-1');
                                },
                                image: 'assets/b2.png',
                                title: 'GetX for your Flutter applications - Part 1',
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 40.toHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            left: 40.toWidth,
                            top: 10.toHeight,
                          ),
                          child: Row(
                            children: [
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://techblog.geekyants.com/experimenting-with-null-safety-on-flutter-20');
                                },
                                image: 'assets/b3.png',
                                title: 'Experimenting with Null Safety on Flutter 2.0',
                              ),
                              SizedBox(
                                width: 20.toWidth,
                              ),
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://medium.com/@gayuga/dsc-salem-fd946ae770c6');
                                },
                                image: 'assets/b4.png',
                                title: 'DSC SALEM',
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 40.toHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            left: 40.toWidth,
                            top: 10.toHeight,
                          ),
                          child: Row(
                            children: [
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://medium.com/@gayuga/mozilla-global-sprint-sal-27f1fabace7e');
                                },
                                image: 'assets/b5.jpeg',
                                title: 'Mozilla Global Sprint-Salem',
                              ),
                              SizedBox(
                                width: 20.toWidth,
                              ),
                              ShowBlogBox(
                                onTap: () {
                                  _launchInBrowser(
                                      'https://medium.com/@gayuga/common-voice-100-hours-sprint-9a2574d5d429');
                                },
                                image: 'assets/b6.jpeg',
                                title: 'Common Voice 100 Hours Sprint',
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ))
    ]);
  }
}
