import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_nav_bar/dm_nab.dart';
import '../../../../components/custom_text/custom_text.dart';

class DmHomeScreen extends StatelessWidget {
  DmHomeScreen({super.key});

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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30, // Adjust size
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                        SizedBox(width: 20),
                        // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Good Morning',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              text: 'Alexa',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Spacer(),
                        Stack(
                          children: [
                            Container(
                              height: 38.5,
                              width: 38.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.white,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.notifications_none),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.notificationScreen);
                                },
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 12,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Find Best Events',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        CustomText(
                          text: 'Near You.',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      prefixIcon: Icon(Icons.search, color: AppColors.green),
                      hintText: 'Explore events',
                      readOnly: true,
                      onTap: (){
                        Get.toNamed(AppRoutes.eventExploreScreen);
                      },
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      onTap: (){
                        Get.toNamed(AppRoutes.fliterEventScreen);
                      },
                      weight: 182,
                      fieldBorderRadius: 30,
                      readOnly: true,
                      prefixIcon: Icon(Icons.menu),
                      hintText: 'Explore Filters',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      suffixIcon: Icon(Icons.arrow_downward),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Find events near ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'New York,NY',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.edit, size: 18),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(onPressed: (){Get.toNamed(AppRoutes.dmLiveEventScreen);}, child: CustomText(text: 'Live Event', color: AppColors.black,)),
                        // CustomText(text: 'Live Event'),
                        SizedBox(width: 20),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(onPressed: (){}, child: CustomText(text: 'Up Coming Live', color: AppColors.black,),)
                        // CustomText(text: 'Up Coming Live'),
                      ],
                    ),
                    SizedBox(width: 10),
                    Center(child: CustomImage(imageSrc: AppImages.map_dm, height: 268,))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
     bottomNavigationBar: DmNab(currentIndex: 0),
    );
  }
}
