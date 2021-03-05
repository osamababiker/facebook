import 'package:flutter/material.dart';
import 'post_actions.dart';
import 'post_body.dart';
import 'post_header.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key, this.avatar, this.name, this.date, this.text,
  }) : super(key: key);

  final String avatar , name , date , text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(
          avatar: avatar,
          name: name,
          date: date,
        ), 
        PostBody(),
        Divider(),
        PostActions()
      ]
    );
  }
}