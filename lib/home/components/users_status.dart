import 'package:flutter/material.dart';
import 'status_card.dart';


class UsersStatus extends StatelessWidget {
  const UsersStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StatusCard(
            avatar: "assets/images/me.jpg",
            name: "Osama Mohammed",
            press: () {},
          ),
          StatusCard(
            image: "assets/images/status_1.jpg",
            avatar: "assets/images/2.jpg",
            name: "alia Ahmed",
            press: () {},
            isUser: false,
          ),
          StatusCard(
            image: "assets/images/status_2.jpg",
            avatar: "assets/images/3.jpg",
            name: "Omer Ali",
            press: () {},
            isUser: false,
          ),
          StatusCard(
            image: "assets/images/status_3.jpg",
            avatar: "assets/images/1.jpg",
            name: "Yasin",
            press: () {},
            isUser: false,
          ),
        ],
      ),
    );
  }
}

