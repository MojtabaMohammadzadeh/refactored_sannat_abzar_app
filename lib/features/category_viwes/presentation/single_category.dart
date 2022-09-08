


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../main_nav_page.dart';
import '../widgets/category_horizental_list.dart';

class SingleCategory extends StatelessWidget {
  const SingleCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عنوان دسته بندی'),
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

      body: ListView(
        children:  [
          SizedBox(height: 25,),
          Text('دسته بندی',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),textAlign: TextAlign.right,),
          CategoryHorizentalList(),
          SizedBox(height: 25,),

        ],
      ),
    );
  }
}
