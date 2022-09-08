


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WrapListViwe extends StatelessWidget {
   WrapListViwe({Key? key}) : super(key: key);
  List<Choice> choices =  <Choice>[
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png''', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
    Choice(title: 'عنوان', link: '/link', image: 'assets/img/ronix-png.png', fields: []),
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(

          children: List.generate(choices.length, (index){
            return AllCart(title: choices[index].title, link: choices[index].link, image:choices[index].image ,fields:choices[index].fields);
          },)
      ),
    );
  }
}


class Choice {
  final String title;
  final String link, image;
  final List fields;
  Choice({required this.title, required this.link, required this.image, required this.fields});

}


class AllCart extends StatelessWidget {
  final String title;
  final String link;
  final String image;
  final List fields;
  const AllCart({Key? key,
    required this.title,
    required this.link,
    required this.image,
    required this.fields,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: const EdgeInsets.all(15),
        width: 40.w,
        height: 20.h,

        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF1F1F1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(
                1.0,
                5.0,
              ),
              spreadRadius: 1,
              blurRadius: 3,
            ), //BoxShadow
            //BoxShadow
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 25.w,
              height: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(this.image),
                    fit: BoxFit.fitWidth,
                  )
              ),
            ),
            const Text('رونیکس',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
            const SizedBox(height: 5,),
            const Text(' محصولات 3535 مورد',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black45),),
          ],
        ),
      ),
    );
  }
}
