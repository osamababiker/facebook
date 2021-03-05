import 'package:flutter/material.dart';
import '../../constants.dart';


class SearchBoxWithAvatar extends StatelessWidget {
  const SearchBoxWithAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            left: kDefaultPadding / 2,
            right: kDefaultPadding / 2,
            bottom: 12.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/me.jpg")
              ),
              Container(
                width: size.width * 0.8,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                      gapPadding: 10
                    ),  
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(0.5)
          ),
        )
      ]
    );
  }
}

