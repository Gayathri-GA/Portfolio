import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class ShowBox extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Function onTap;
  ShowBox({this.image, this.title, this.description, this.onTap});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 130.toWidth,
        height: 610.toHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.toFont),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.blueGrey, blurRadius: 5)]),
        child: Column(
          children: [
            Container(
              width: 130.toWidth,
              height: 300.toHeight,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.toFont), topRight: Radius.circular(15.toFont)),
              ),
            ),
            SizedBox(
              height: 10.toHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.toWidth),
              child: Text(
                title ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    height: 3.toHeight,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000080),
                    fontFamily: 'Lato',
                    fontSize: 16.toFont),
              ),
            ),
            SizedBox(
              height: 10.toHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.toWidth),
              child: Text(
                description ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                    height: 3.toHeight,
                    color: Color(0xff000080),
                    fontFamily: 'Lato',
                    fontSize: 14.toFont),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
