import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class ShowBlogBox extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Function onTap;
  ShowBlogBox({this.image, this.title, this.description, this.onTap});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 130.toWidth,
        height: 330.toHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.toFont),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.blueGrey, blurRadius: 5)]),
        child: Column(
          children: [
            Container(
              width: 130.toWidth,
              height: 200.toHeight,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.toFont), topRight: Radius.circular(10.toFont)),
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
          ],
        ),
      ),
    );
  }
}
