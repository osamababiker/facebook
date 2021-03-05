import 'package:flutter/material.dart';

import '../../constants.dart';

class LiveAvatarCard extends StatelessWidget {
  const LiveAvatarCard({
    Key key, 
    this.image, 
    this.press, 
    this.isLive = true,
  }) : super(key: key);

  final String image;
  final Function press;
  final bool isLive;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding / 4),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image)
          ),
          isLive ? Positioned(
            bottom: 2,
            right: 2,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white)
              ),
            ),
          )
          : Text("")
        ],
      ),
    );
  }
}

