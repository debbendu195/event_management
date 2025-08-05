import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
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
                        CustomText(text: 'Live Event'),
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
                        CustomText(text: 'Live Event'),
                      ],
                    ),
                    SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/map_dm.png', // your background map image
                            width: double.infinity,
                            height: 267,
                            fit: BoxFit.cover,
                          ),

                          // Center Green Marker
                          Positioned(
                            top: 120,
                            left: 130,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.withOpacity(0.3),
                              ),
                              child: Center(
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(16.0),
                    //   child: Container(
                    //     height: 80,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xFF004D3C), // Dark green background
                    //       borderRadius: BorderRadius.circular(40),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children: [
                    //         // Home - Selected
                    //         Container(
                    //           width: 50,
                    //           height: 50,
                    //           decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             shape: BoxShape.circle,
                    //           ),
                    //           child: Icon(Icons.home, color: Colors.black),
                    //         ),
                    //         // Favorite
                    //         Icon(Icons.favorite, color: Colors.grey.shade300, size: 30),
                    //         // Chat
                    //         Icon(Icons.chat_bubble_outline, color: Colors.grey.shade300, size: 30),
                    //         // Globe
                    //         Icon(Icons.language, color: Colors.grey.shade300, size: 30),
                    //         // Profile
                    //         Icon(Icons.person, color: Colors.grey.shade300, size: 30),
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
