import 'package:flutter/material.dart';
import '../../constants.dart';
import 'create_room_btn.dart';
import 'live_avatar_card.dart';

class LiveUsers extends StatelessWidget {
  const LiveUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CreateRoomBtn(),
            SizedBox(width: kDefaultPadding / 2),
            Row(
              children: [
                LiveAvatarCard(
                  image: "assets/images/1.jpg",
                  press: (){},
                ),
                LiveAvatarCard(
                  image: "assets/images/2.jpg",
                  press: (){},
                ),
                LiveAvatarCard(
                  image: "assets/images/3.jpg",
                  press: (){},
                ),
                LiveAvatarCard(
                  image: "assets/images/4.jpg",
                  press: (){},
                ),
                LiveAvatarCard(
                  image: "assets/images/avatar.png",
                  press: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

