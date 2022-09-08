

import 'package:flutter/cupertino.dart';

import '../widgets/category_carts.dart';

class Choice {
  final String title;
  final String link, image;
  final List fields;
  Choice({required this.title, required this.link, required this.image, required this.fields});

}
class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key}) : super(key: key);
  List<Choice> ctegory =  <Choice>[
    Choice(title: ' جوش و برش', link: '/resturant', image: 'assets/category/welder.png', fields: []),
    Choice(title: 'فروشگاه های ابزارآلات و تجهیزات صنعتی', link: '/order', image: 'assets/category/tools.png',fields: [ ]),
    Choice(title: 'ابزار و تجهیزات ساختمانی',link: '/order', image: 'assets/category/building.png',fields: []),
    Choice(title: 'تولیدی ابزارآلات و تجهیزات صنعتی', link: '/order', image: 'assets/category/tools02.png',fields: []),
    Choice(title: 'ابزار تراش', link: '/order', image: 'assets/category/turning.png',fields: []),
    Choice(title: 'ابزارآلات کمپرسور بادی', link: '/order', image: 'assets/category/compressor.png',fields: []),
    Choice(title: 'چسب و رنگ',link: '/order', image: 'assets/category/color.png',fields: []),
    Choice(title: 'الکتروموتور و گیربکس', link: '/order', image: 'assets/category/gearbox.png',fields: []),

  ];
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

                children: List.generate(ctegory.length, (index){
                  return CategoryCart(title: ctegory[index].title, link: ctegory[index].link, image:ctegory[index].image ,fields:ctegory[index].fields);
                },)
            ),
          ),
        ],
      ),
    );
  }
}
