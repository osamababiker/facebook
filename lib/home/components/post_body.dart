import 'package:flutter/material.dart';
import '../../constants.dart';

class PostBody extends StatelessWidget {
  const PostBody({
    Key key, this.text,
  }) : super(key: key);


  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: " يا جماعة رايكم شنو في التطبيق دة \n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Jozoor"
                  )
                ),
                TextSpan(
                  text: " هو عبارة عن محاكاة لتطبيق فيسبوك باستخدام فلتر",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Jozoor"
                  )
                )
              ]
            )
          ),
        ),
      ),
    );
  }
}