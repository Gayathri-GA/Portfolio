import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';
import 'package:portfolio/widgets/show_box.dart';
import 'package:url_launcher/url_launcher.dart';

class Channel extends StatefulWidget {
  @override
  _ChannelState createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
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
    return Column(
      children: [
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
                      'Talk To Grow',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Nunito',
                          color: Color(0xff000080),
                          fontSize: 56.toFont),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        left: 40.toWidth,
                      ),
                      child: Image.asset(
                        'assets/quote.png',
                        width: 45.toFont,
                        height: 45.toFont,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 5.toWidth, top: 60.toHeight),
                    child: Text(
                      'Are you the one who is looking for a youtube channel where you are able\nto get distinct information on various domains ? with no doubt you are\nnow at the right place ya it\'s our ‘Talk to Grow\’.',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color(0xff25c6da),
                          fontFamily: 'Lato',
                          fontSize: 14.toFont),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40.toWidth, top: 30.toHeight),
                    child: Text(
                      'Through this youtube channel we are discussing Work life balance, Productivity,\nFinancial independence, How to transform yourself as an entrepreneur ?\nOpportunities available for entrepreneurs in India, Open source clubs, Keynote\nof every important tech conference, And more and more….. To add the queue.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Color(0xff000080), fontFamily: 'Lato', fontSize: 16.toFont),
                    ),
                  ),
                ],
              ),
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
                          ShowBox(
                              onTap: () {
                                _launchInBrowser('https://youtu.be/CaOCeiE5_kA?t=5');
                              },
                              image: 'assets/firstvideo.png',
                              title:
                                  'Highlights of Flutter Engage 2021 | English | Gayathri Devi Srinivasan',
                              description:
                                  '#flutter #flutterengage. These video will brief out the highlights of flutter engage 2021event.'),
                          SizedBox(
                            width: 20.toWidth,
                          ),
                          ShowBox(
                              onTap: () {
                                _launchInBrowser('https://youtu.be/AWJZ7EKtI2w');
                              },
                              image: 'assets/secondvideo.png',
                              title: 'Work From Home - Teaser | English | Gayathri Devi Srinivasan',
                              description:
                                  'A a series from our channel \'Talk to Grow\'. Through which you can able to get tips for work from home with distinct episodes going to offer you various tips on making you work from more productive, tips on making work from more healthier and stress free  and more to add.This is our teaser for WORK FROM HOME series.')
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 40.toWidth, top: 60.toHeight),
                      child: InkWell(
                        onTap: () {
                          _launchInBrowser(
                              'https://www.youtube.com/channel/UCYrrpRsfnZno6zhr1CgWA6Q?sub_confirmation=1');
                        },
                        child: Row(
                          children: [
                            Text(
                              'Subscribe🔔',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  letterSpacing: 1.toFont,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red[800],
                                  fontSize: 20.toFont),
                            ),
                            SizedBox(
                              width: 4.toWidth,
                            ),
                            Text(
                              'to our channel for latest updates. Stay Tuned !',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000080),
                                  fontFamily: 'Lato',
                                  fontSize: 18.toFont),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
