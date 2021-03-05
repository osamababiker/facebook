import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class PostActions extends StatelessWidget {
  const PostActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/like.svg")
                ), 
                onPressed: (){}
              ),
              Text(
                "Like",
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/comment.svg")
                ), 
                onPressed: (){}
              ),
              Text(
                "comment",
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/share.svg")
                ), 
                onPressed: (){}
              ),
              Text(
                "share",
              )
            ],
          ),
        ],
      ),
    );
  }
}
