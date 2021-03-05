import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key key, 
    this.icon, 
    this.press, 
    this.count, 
    this.isActive = false, 
    this.hasCount = false,
  }) : super(key: key);

  final String icon;
  final Function press;
  final int count;
  final bool isActive , hasCount;
  @override
  Widget build(BuildContext context) {
    return !hasCount ? 
      Container(
        width: 40,
        child: IconButton(
          icon: isActive ? SvgPicture.asset(icon, color: kPrimaryColor) : SvgPicture.asset(icon), 
          onPressed: press
        ),
      )
    : Stack(
        children: [
          Container(
            width: 40,
            child: IconButton(
              icon: isActive ? SvgPicture.asset(icon, color: kPrimaryColor) : SvgPicture.asset(icon), 
              onPressed: press
            ),
          ),
          Positioned(
            top: 3,
            right: 3,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Text(
                "$count",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
        ] 
    );
  }
}