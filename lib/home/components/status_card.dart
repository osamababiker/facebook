import 'package:flutter/material.dart';
import '../../constants.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key key, 
    this.image, 
    this.name, 
    this.avatar, 
    this.isUser = true, 
    this.press,
  }) : super(key: key);

  final String image , name, avatar;
  final bool isUser;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return 
      !isUser ? GestureDetector(
        onTap: press,
        child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: kDefaultPadding / 2),
            child:Stack(
              children: [
                Container(
                  width: 120,
                  height: 184,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/4, vertical: kDefaultPadding/2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar)
                        ),
                      ),
                      SizedBox(height: 100),
                      RichText(
                        text: TextSpan(
                          text: name,
                          style: TextStyle(
                            color: Colors.white
                          )
                        )
                      )
                    ],
                  ),
                )
              ]
            ),
          ),
        ) 
      : 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 40,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: kPrimaryColor)
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: 120,
              height: 92,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.grey
                  ),
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.grey
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Colors.grey
                  ),
                  left: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)
                ),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
                  child: Text(
                    "Create a Story",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
}

