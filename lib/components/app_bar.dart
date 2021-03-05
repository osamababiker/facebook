import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

 AppBar buildAppBar(Size size) {
    return AppBar(
      elevation: 0,
      actions: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.4,
                  height: size.height ,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/logo.png")
                    )
                  ),
                ),
                SizedBox(width: 80.0),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding / 2.5),
                    child: SvgPicture.asset("assets/icons/search.svg"),
                  ),
                ),
                SizedBox(width: 5.0),
                Stack(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding / 2.5),
                        child: SvgPicture.asset("assets/icons/messenger.svg"),
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
                          "8",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ],
            ),
          ),
        )
      ],
    );
  }