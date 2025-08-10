import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../../core/app_routes/app_routes.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFD0F2D3), Color(0xFF5BCDA4)],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoyelAppbar(),
                  Center(
                    child: Container(
                      height: 110,
                      width: 110,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/img.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CustomText(
                      text: 'Debbendu Paul Oni',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Center(
                    child: CustomText(
                      text: '4.8 Host Rating',
                      fontSize: 14,
                    ),
                  ),
                  TextButton(onPressed: (){
                    Get.toNamed(AppRoutes.editProfileScreen);
                  },
                  child: CustomText(text: 'Edit Profile', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){
                    Get.toNamed(AppRoutes.paymentScreen);
                  }, child: CustomText(text: 'Add Payment Method', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){
                    Get.toNamed(AppRoutes.privacyScreen);
                  }, child: CustomText(text: 'Privacy Policy', fontSize: 16, fontWeight: FontWeight.w500,)),
                  Row(
                    children: [
                      TextButton(onPressed: (){
                        Get.toNamed(AppRoutes.privacyScreen);
                      }, child: CustomText(text: 'Push notification', fontSize: 16, fontWeight: FontWeight.w500,)),
                      Spacer(),
                      Stack(
                        children: [
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: AppColors.white,
                            ),
                          ),
                          Positioned(
                            left: 23,
                            top: 5,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.black,
                            ),
                          )
                          )
                        ],
                      )
                    ],
                  ),
                  TextButton(onPressed: (){}, child: CustomText(text: 'Terms & Condition', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){
                    Get.toNamed(AppRoutes.changePassScreen);
                  }, child: CustomText(text: 'Change Password', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){
                    Get.toNamed(AppRoutes.supportScreen);
                  }, child: CustomText(text: 'Support & Feedback', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){}, child: CustomText(text: 'Followers', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){}, child: CustomText(text: 'Following', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){}, child: CustomText(text: 'Delete Account', fontSize: 16, fontWeight: FontWeight.w500,)),
                  TextButton(onPressed: (){}, child: CustomText(text: 'Logout', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.green,)),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }
}
