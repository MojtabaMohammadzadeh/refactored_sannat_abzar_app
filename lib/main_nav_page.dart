
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:main_abzar_sanat_app/core/main_widgets/drawe.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/all_brands_viwe.dart';
import 'package:main_abzar_sanat_app/features/category_viwes/presentation/all_category_viwe.dart';
import 'package:main_abzar_sanat_app/features/news/presentation/news_viwe.dart';
import 'package:main_abzar_sanat_app/features/store/presentation/main_store_viwe.dart';



class MainNavPage extends StatefulWidget {
  const MainNavPage({Key? key}) : super(key: key);

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  int _currentIndex = 0;
  List pages=[
    AllBrandsViwe(),
     StoreViwe(),
    CategoryPage(),
     NewsViwe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: const Text('صنعت ابزار',style: TextStyle(fontWeight:FontWeight.w500)),
        backgroundColor: const Color(0xff0F1B6D),
      ),
      endDrawer: const EndDrawer(),

      // ********************Bottom Nav Bar********************
      bottomNavigationBar:  GNav(
        onTabChange: (index){
          setState((){
            _currentIndex = index;
          });
        },
        gap: 10,
        backgroundColor: const Color(0xff36212D),
        color: Colors.white70,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.withOpacity(0.7),
        padding: const EdgeInsets.symmetric(horizontal:16, vertical: 10),
        tabMargin: const EdgeInsets.all(5),
        tabs: const [
          GButton(
              icon: Icons.home_outlined,
              text: 'خانه',
          ),
          GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'فروشگاه',
          ),
          GButton(
              icon: Icons.apps_outlined,
              text: 'دسته بندی',
          ),
          GButton(
              icon: Icons.newspaper_outlined,
              text: 'اخبار',
          ),
        ],

      ),
      // **********************End Bottom Nav Bar****************

      body: pages[_currentIndex],

    );
  }
}
