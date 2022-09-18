

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/all_category_controller.dart';
import '../widgets/category_carts.dart';

class Choice {
  final String title;
  final String link, image;
  final List fields;
  Choice({required this.title, required this.link, required this.image, required this.fields});

}
class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key}) : super(key: key);
  AllCategoryController _controller = Get.put(AllCategoryController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/background.png',),
          fit: BoxFit.cover,
          opacity: 0.4,
        )
      ),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Wrap(

                children: List.generate(_controller.controllPlacesCategory.length, (index){
                  return CategoryCart(categoryData:_controller.controllPlacesCategory, index: index,);
                },)
            ),
          ),
        ],
      ),
    );
  }
}
