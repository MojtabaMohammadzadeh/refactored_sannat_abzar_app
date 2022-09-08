


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../features/drawer_pages/add_company/add_company.dart';
import '../../features/drawer_pages/contact_us/contact_us.dart';
import '../../features/drawer_pages/favorites/favorite_list.dart';
import '../../features/drawer_pages/messages/messages.dart';
import '../../features/drawer_pages/shop_list/shop_list.dart';
import '../../features/drawer_pages/shoping_cart/shoping_cart.dart';
import '../../features/drawer_pages/user_profile/user_profile.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Header of Drawer
    Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top
      ),
      color: Colors.blue.shade700,
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('assets/img/profile-img.jpg'),
          ),
          SizedBox(height: 15,),
          Text('Mojtaba Mohammadzadeh',),
          SizedBox(height: 15,),


        ],
      ),
    );

    //Items of Drawer
    Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(

          children: [
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('پروفایل کاربری'),

              onTap: (){
                      Get.to(UserProfile());
              }


            ),
            ListTile(
                leading: const Icon(Icons.message_outlined),
                title: const Text('پیام ها'),
                onTap: (){
                    Get.to(MessagesPage());
                }
            ),
            ListTile(
                leading: const Icon(Icons.shopping_bag_outlined),
                title: const Text('لیست سفارشات'),
                onTap: (){
                  Get.to(ShopList());
                }
            ),
            ListTile(
                leading: const Icon(Icons.favorite_outline),
                title: const Text('علاقه مندی ها'),
                onTap: (){
                    Get.to(FavoriteList());
                }
            ),
            ListTile(
                leading: const Icon(Icons.store_outlined),
                title: const Text('ثبت فروشگاه'),
                onTap: (){
                  Get.to(AddCompany());
                }
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined),
              title: const Text('سبد خرید'),
              onTap: (){
                Get.to(ShoppingCart());
              },

            ),

            ListTile(
              leading: const Icon(Icons.contact_mail_outlined),
              title: const Text('تماس با ما'),
              onTap: (){
                Get.to(const ContactUsPage());
              },

            ),

            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined),
              title: const Text('خروج'),
              onTap: (){},

            ),

          ],
        ),
      ),
    );


    return Drawer(

      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );


  }
}
