import 'package:flutter/material.dart';

import '../../constants.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonWithCounter(
                icon: "assets/icons/home.svg",
                isActive: true,
                press: () {},
              ),
              IconButtonWithCounter(
                icon: "assets/icons/multiple-users-silhouette.svg",
                press: () {},
              ),
              IconButtonWithCounter(
                icon: "assets/icons/watching-tv.svg",
                hasCount: true,
                count: 3,
                press: () {},
              ),
              IconButtonWithCounter(
                icon: "assets/icons/flag.svg",
                press: () {},
              ),
              IconButtonWithCounter(
                icon: "assets/icons/bell.svg",
                press: () {},
              ),
              IconButtonWithCounter(
                icon: "assets/icons/menu.svg",
                press: () {},
              ),
            ]
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.withOpacity(0.5)
            ),
          )
        ], 
      ),
    );
  }
}

