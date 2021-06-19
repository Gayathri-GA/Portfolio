import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class Investment extends StatefulWidget {
  @override
  _InvestmentState createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
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
                        'Investments Portfolio',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Nunito',
                            color: Color(0xff000080),
                            fontSize: 36.toFont),
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
                        backgroundImage: AssetImage('assets/stock.gif'),
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
