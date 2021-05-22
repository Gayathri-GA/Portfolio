import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_utils.dart';

class MenuItem extends StatelessWidget {
  final String menuItem;
  final int position;
  final Function onTap;
  MenuItem(this.menuItem, this.position, this.onTap);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.toWidth),
      child: InkWell(
        onTap: onTap,
        child: Text(
          menuItem,
          style: TextStyle(color: Color(0xff000080), fontSize: 15.toFont),
        ),
      ),
    );
  }
}
