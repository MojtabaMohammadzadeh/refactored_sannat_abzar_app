

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تماس با ما'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Get.to(MainNavPage());
              // do something
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/icons8-instagram-48.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/icons8-telegram-50.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/icons8-whatsapp-60.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/icons8-web-64.png')),
            ],
          ),
          SizedBox(height: 50,),
          SizedBox(
            width: 80.w,
            child: Text('is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',textAlign:TextAlign.center,),
          )
        ],
      ),
    );
  }
}
