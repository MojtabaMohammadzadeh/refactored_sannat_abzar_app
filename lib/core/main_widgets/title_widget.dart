



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TitleWidget extends StatelessWidget {
  final String bottomText, link, title;
  TitleWidget({Key? key,
    required this.bottomText,
    required this.title,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          GestureDetector(
            onTap: (){
              Get.toNamed(link);
            },
            child: Text(
                bottomText
            ),
          ),
          Text(
              title
          ),

        ],
      ),
    );
  }
}
