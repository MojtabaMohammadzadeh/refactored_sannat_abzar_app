


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../main_nav_page.dart';
import '../controller/sub_category_controller.dart';
import '../widgets/category_horizental_list.dart';

class SingleCategory extends StatefulWidget {
  String categoryId;
   SingleCategory({Key? key,required this.categoryId}) : super(key: key);

  @override
  State<SingleCategory> createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  SubCategoryController _controller = Get.put(SubCategoryController());
@override
  void initState() {
    // TODO: implement initState
  _controller.fetchSubCategory(widget.categoryId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<SubCategoryController>(builder:(_)=> Text(_controller.controllPageTitle,style:TextStyle(fontSize:12),),),
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
        children:  [
          SizedBox(height: 25,),

          Expanded(
              child:GetBuilder<SubCategoryController>
                (builder:(_)=> CategoryHorizentalList(ListData: _controller.controllSubCategoryList,),) ),


        ],
      ),
    );
  }
}
