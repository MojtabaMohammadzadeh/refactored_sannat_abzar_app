


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';
import 'my_drop_down.dart';

class AddCompany extends StatefulWidget {
   AddCompany({Key? key}) : super(key: key);

  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  String? valueChoose;
  List <String> listStates = ['item01','item02','item03','item04'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('افزودن شرکت و فروشگاه'),
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

        children: [
          Expanded(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height:5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('افزودن عکس',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),SizedBox(width:10,),Icon(Icons.camera_alt,size: 32,color:Color(0xff9AFFA3),)],),
                  const Divider( height: 3,thickness: 2,indent: 10, endIndent: 10, color: Colors.black12, ),
                  ElevatedButton.icon(
                    onPressed: ()=> PickImage(),
                    label:Text('انتخاب تصویر') ,
                    icon:Icon(Icons.camera) ,
                  ),
                  // *******************************Part 02 ****************
                  MyDropDown(title: 'استان', listitems: ['ssslf']),

                  // *******************************Part 03 ****************
                 MyDropDown(title: 'شهر', listitems: ['saeee']),
                  // **************** Part 04 *********************************
                  MyDropDown(title: 'دسته بندی', listitems: ['sss']),
                  // **************** Part 05 *********************************
                  MyDropDown(title: 'زیر مجموعه', listitems: ['sss']),
                  // **************** Part 06 *********************************
                  MyDropDown(title: 'زیر دسته', listitems: ['sss']),
                  // *****************Part 07***********************************
                  SizedBox(height: 20,),
                  Directionality(textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 80.w,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'آدرس خود را وارد نمایید',
                            icon: Icon(Icons.location_pin),
                       ),
                        ),
                      )),
                  // *****************Part 08***********************************
                  SizedBox(height: 20,),
                  Directionality(textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 80.w,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'تلفن خود را وارد نمایید',
                            icon: Icon(Icons.phone),
                          ),
                        ),
                      )),

                  // *****************Part 09***********************************
                  SizedBox(height: 20,),
                  Directionality(textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 80.w,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'نام شرکت خود را وارد نمایید',
                            icon: Icon(Icons.store),
                          ),
                        ),
                      )),
                  // *****************Part 10***********************************
                  SizedBox(height: 20,),
                  Directionality(textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 80.w,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'توضیحات',

                          ),
                        ),
                      )),

                  // *****************Part 11***********************************
                  SizedBox(height: 40,),
                  ElevatedButton.icon(onPressed: (){},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
                      elevation: MaterialStateProperty.all(15),
                      
                    ),
                  label: Text('ثبت اطلاعات'),
                  icon: Icon(Icons.edit),),
                  SizedBox(height:25.h,)
                ],
              ) ),
        ],
      ),

    );
  }
}


Future PickImage() async{
  ImagePicker().pickImage(source: ImageSource.gallery);
}
