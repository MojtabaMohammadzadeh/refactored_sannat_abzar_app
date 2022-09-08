


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10,),
        Text('title',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
        SizedBox(height: 10,),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: TextStyle(fontSize: 12),textDirection: TextDirection.rtl,),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: ()=>Navigator.of(context).pop(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff182f41)),

              shadowColor: MaterialStateProperty.all(Colors.black),
              elevation: MaterialStateProperty.all(10),
              padding:MaterialStateProperty.all(const EdgeInsets.only(right: 10, left: 10,top: 5,bottom: 5)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25))),
            ),
            child: Text('بستن') ),
        SizedBox(height: 100,),
      ],
    );
  }
}
