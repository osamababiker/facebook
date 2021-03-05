import 'package:flutter/material.dart';
import '../../constants.dart';


class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key, this.avatar, this.name, this.date,
  }) : super(key: key);

  final String avatar , name , date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 3,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white)
                      )
                    ),
                  )
                ],
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(date),
                      Text(".",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Icon(Icons.public,size: 18)
                    ],
                  )
                ],
              )
            ]
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_horiz), 
          onPressed: () {}
        )
      ]
    );
  }
}
