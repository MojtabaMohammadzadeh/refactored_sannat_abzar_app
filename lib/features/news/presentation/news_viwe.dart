

import 'package:flutter/cupertino.dart';

import '../widgets/news_list.dart';
import '../widgets/news_tab_bar.dart';

class NewsViwe extends StatelessWidget {
  const NewsViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTabbarNews(),
        SizedBox(height: 15,),
        Expanded(child: NewsList(),),
      ],

    );
  }
}
