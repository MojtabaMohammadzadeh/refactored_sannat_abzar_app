


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/main_widgets/horizental_list_widget.dart';
import '../../../core/main_widgets/image_slider.dart';
import '../../../core/main_widgets/search.dart';
import '../../../core/main_widgets/title_widget.dart';
import '../widgets/last_price.dart';
import '../widgets/tab_bars.dart';
import '../widgets/wrap_list_viwe.dart';

class AllBrandsViwe extends StatelessWidget {
   AllBrandsViwe({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [

          BuildSearch(text: '',),
          const ImageSlider(),
          TabBarWidget(tabsData: ['ابزار','صنعت','ساختمان','ایمنی','کشاورزی','برق'],),
          const SizedBox(height: 20,),
          TitleWidget(title: 'پربازدیدها', bottomText: 'موارد بیشتر',link: '/listbrands',),
          const SizedBox(height: 5,),
          const Divider(
            height: 2,
            thickness: 1,
            indent: 10,

            endIndent: 10,
            color: Colors.black12,
          ),
          const SizedBox(height: 5,),
          HorizentalListWidget(),
          const SizedBox(height: 15,),


          LastPrice(),
          const SizedBox(height: 15,),
          TitleWidget(title: 'جدیدترین ها', bottomText: 'موارد بیشتر', link: '/allbrands',),
          Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),
          const SizedBox(height: 15,),
          HorizentalListWidget(),
          const SizedBox(height: 25,),
          ImageSlider(),
          const SizedBox(height: 25,),

          TitleWidget(title: 'همه', bottomText: 'موارد بیشتر',link: '/allbrands',),
          Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),

          WrapListViwe(),

        ],
      ),

    );
  }
}
