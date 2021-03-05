import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';



class ActionsWithIconAndText extends StatelessWidget {
  const ActionsWithIconAndText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/video.svg", color: Colors.red)
                ), 
                onPressed: (){}
              ),
              Row(
                children: [
                  Text(
                    "Live",
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "|",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/photos.svg")
                ), 
                onPressed: (){}
              ),
              Row(
                children: [
                  Text(
                    "Photos",
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "|",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SizedBox(
                  width: 20,
                  child: SvgPicture.asset("assets/icons/video-camera-with-play-button.svg", color: Colors.purple)
                ), 
                onPressed: (){}
              ),
              Text(
                "Room",
                style: TextStyle(
                  fontSize: 13
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
