import 'package:flutter/material.dart';
import 'actions_with_icon_and_text.dart';
import 'home_header.dart';
import 'live_users.dart';
import 'post_card.dart';
import 'search_box_with_avatar.dart';
import 'section_divider.dart';
import 'users_status.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HomeHeader(),
          SearchBoxWithAvatar(),
          ActionsWithIconAndText(),
          SectionDivider(),
          LiveUsers(),
          SectionDivider(),
          UsersStatus(),
          SectionDivider(),
          PostCard(
            avatar: "assets/images/me.jpg",
            name: "Osama M Babiker",
            date: "5m"
          ),
          SectionDivider(),
          PostCard(
            avatar: "assets/images/1.jpg",
            name: "Ali Osman",
            date: "9m"
          ),
        ],
      ),
    );
  }
}





