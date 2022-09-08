


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesModal extends StatelessWidget {
  const MessagesModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('title',style: TextStyle(fontSize: 24),),
        SizedBox(height: 15,),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: TextStyle(fontSize: 12),textDirection: TextDirection.rtl,),
        SizedBox(height: 15,),
        ElevatedButton(onPressed:(){
          Navigator.of(context).pop();
        }, child: Text('بستن')),
        SizedBox(height: 50),


      ],
    );
  }
}
