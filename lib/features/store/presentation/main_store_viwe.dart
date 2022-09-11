


import 'package:flutter/cupertino.dart';

import '../../../core/main_widgets/image_slider.dart';
import '../../../core/main_widgets/search.dart';
import '../../../core/main_widgets/title_widget.dart';
import '../widget/shop_horizental_list.dart';

class StoreViwe extends StatelessWidget {
  const StoreViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BuildSearch(text: '',),
        // ImageSlider(),
        SizedBox(height: 25,),

        TitleWidget(bottomText: 'همه موارد', title: 'فروشگاه نیکوکار',link: '/shopallproducts',),
        SizedBox(height: 10,),
        ShopHorizentalList(),




      ],
    );
  }
}
