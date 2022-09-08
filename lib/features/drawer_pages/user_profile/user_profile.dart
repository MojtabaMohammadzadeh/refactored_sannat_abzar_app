



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';

class UserProfile extends StatelessWidget {
   UserProfile({Key? key}) : super(key: key);
  TextEditingController _name = TextEditingController();
  TextEditingController _family = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('پروفایل کاربری'),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background.png'),
                fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),

        child: ListView(


          children: [


            Column(

              children: [
                // ************************Name Text Field************************
                Container(
                  width: 70.w,
                  margin: EdgeInsets.only(top: 10.h, bottom: 5.h),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(

                      controller: _name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            )),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        hintText: 'نام',

                          filled: true,

                        hintTextDirection: TextDirection.rtl,


                      ),
                    ),
                  ),
                ),

                // ***************************End Name Text*************************

                // ************************Name Text Field************************
                Container(
                  width: 70.w,
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(

                      controller: _family,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            )),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        hintText: 'نام خانوادگی',
                        filled: true,

                        hintTextDirection: TextDirection.rtl,


                      ),
                    ),
                  ),
                ),

                // ***************************End Name Text*************************




                ElevatedButton.icon(onPressed: (){},
                  style: ButtonStyle(
                   padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                    
                  ),
                  icon: Icon(Icons.edit),
                  label: Text('ثبت تغییرات'),),
                
              ],
            ),

            
          ],
        ),
      ),
    );
  }
}
