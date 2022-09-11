


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/main_widgets/image_slider.dart';
import '../../../main_nav_page.dart';
import '../widgets/contact_about_us.dart';
import '../widgets/last_price.dart';
import '../widgets/single_list_viwe.dart';

class SingleBrand extends StatelessWidget {
  const SingleBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleBrand'),
        centerTitle: true,
        backgroundColor: Color(0xff0F1B6D),
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
        children: [
          Expanded(
            child:ListView(
              children: [
                const SizedBox(height: 15,),
                // ImageSlider(),
                const SizedBox(height: 20,),
                LastPrice(),
                const SizedBox(height: 15,),
                const Text('دسته بندی 1'),
                const Divider(
                  height: 2,
                  thickness: 1,
                  indent: 10,

                  endIndent: 10,
                  color: Colors.black12,
                ),
                SizedBox(height: 5,),
                SingleListViwe(),
              ],
            ),

          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton.icon(
                  onPressed:() {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context)=> ContactUs());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff0F1B6D)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15))),
                  ),
                  icon: const Icon(Icons.person),
                  label: const Text(
                      "درباره ما"
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20,left: 20),
                child: ElevatedButton.icon(
                  onPressed:() {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context)=> ContactUs());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff0F1B6D)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15))),

                  ),
                  icon: const Icon(Icons.phone),
                  label: const Text(
                      "تماس با ما"
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
