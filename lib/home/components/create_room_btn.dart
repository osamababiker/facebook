import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class CreateRoomBtn extends StatelessWidget {
  const CreateRoomBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2, vertical: 2),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              child: SvgPicture.asset("assets/icons/video-camera-with-play-button.svg",color: Colors.purple)
            ),
            SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Create\n",
                    style: TextStyle(
                      color: kPrimaryColor
                    )
                  ),
                  TextSpan(
                    text: "Room",
                    style: TextStyle(
                      color: kPrimaryColor
                    )
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

