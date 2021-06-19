import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDescription extends StatefulWidget {
  @override
  _AboutDescriptionState createState() => _AboutDescriptionState();
}

class _AboutDescriptionState extends State<AboutDescription> {
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
    return (SizeConfig().screenWidth > 1000)
        ? Container(
            height: SizeConfig().screenHeight / 1.075,
            width: SizeConfig().screenWidth / 2,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.toWidth),
                      child: Text(
                        'I\'m Gayathri Devi',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto-Bold',
                            color: Color(0xff000080),
                            fontSize: 50.toFont),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 27.toWidth, top: 30.toHeight),
                      width: SizeConfig().screenWidth / 2.2,
                      child: Text(
                        'Software Engineer, GeekyAnts India Pvt Ltd, Bangalore',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Color(0xff000080).withOpacity(0.8),
                            fontSize: 18.toFont,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 27.toWidth, top: 30.toHeight),
                      width: SizeConfig().screenWidth / 2.2,
                      child: Text(
                        'I am an enthusiastic coder interested in learning new things and exploring new places. I am good in public speaking and taking presentation,webinars.  Youtuber at \'Talk to Grow\'.Passionate on building mobile applications and solving real world problems.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'Lato',
                            color: Color(0xff000080).withOpacity(0.7),
                            fontSize: 16.toFont),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 25.toWidth, top: 50.toHeight),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        connect(
                          iconName: 'assets/twitter.png',
                          onTap: () {
                            _launchInBrowser('https://twitter.com/gayuga99');
                          },
                        ),
                        connect(
                          iconName: 'assets/linkedin.png',
                          onTap: () {
                            _launchInBrowser(
                                'https://www.linkedin.com/in/gayathri-devi-srinivasan-961bbb147/');
                          },
                        ),
                        connect(
                          iconName: 'assets/github.png',
                          onTap: () {
                            _launchInBrowser('https://github.com/Gayathri-GA');
                          },
                        ),
                      ],
                    )),
              ],
            ),
          )
        : Container(
            height: SizeConfig().screenHeight / 2.7,
            width: SizeConfig().screenWidth,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I\'m Gayathri Devi',
                      style: TextStyle(color: Color(0xff000080), fontSize: 50.toFont),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.toHeight),
                      width: SizeConfig().screenWidth / 1.5,
                      child: Text(
                        'Software Engineer,\nGeekyAnts India Pvt Ltd, Bangalore',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff000080).withOpacity(0.8),
                            fontSize: 20.toFont,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.toHeight),
                      width: SizeConfig().screenWidth / 1.3,
                      child: Text(
                        'I am an enthusiastic coder interested in learning new things and exploring new places. I am good in public speaking and taking presentation,webinars.Passionate on building mobile applications.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'Lato',
                            color: Color(0xff000080).withOpacity(0.7),
                            fontSize: 17.toFont),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20.toHeight),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        connect(
                          iconName: 'assets/twitter.png',
                          onTap: () {
                            _launchInBrowser('https://twitter.com/gayuga99');
                          },
                        ),
                        SizedBox(
                          width: 20.toWidth,
                        ),
                        connect(
                          iconName: 'assets/linkedin.png',
                          onTap: () {
                            _launchInBrowser(
                                'https://www.linkedin.com/in/gayathri-devi-srinivasan-961bbb147/');
                          },
                        ),
                        SizedBox(
                          width: 20.toWidth,
                        ),
                        connect(
                          iconName: 'assets/github.png',
                          onTap: () {
                            _launchInBrowser('https://github.com/Gayathri-GA');
                          },
                        ),
                      ],
                    )),
              ],
            ),
          );
  }

  Widget connect({String iconName, Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60.toWidth,
        height: 100.toHeight,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(iconName), fit: BoxFit.contain)),
      ),
    );
  }
}
