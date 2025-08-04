import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_text/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
              child: Column(
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
                            text: 'Md Kamran Khan',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: 'Event Host',
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
                  Stack(
                    children: [
                      CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.createEventScreen);
                        },
                        title: 'Create Event',
                        fillColor: AppColors.green_01,
                        borderRadius: 30,
                      ),
                      Positioned(
                        left: 70,
                        top: 14,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: AppColors.white,
                          ),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.createEventScreen);
                            },
                            child: Icon(Icons.add, color: AppColors.green_01),
                          ),
                        ),
                      ),
                    ],
                  ),
            
                  // Container(
                  //   height: 50,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //     color: AppColors.green_01,
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Container(
                  //         height: 30,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.all(Radius.circular(8)),
                  //           color: AppColors.white,
                  //         ),
                  //         child: Row(
                  //           children: [
                  //             Icon(Icons.add, color: AppColors.green_01),
                  //             SizedBox(width: 20,),
                  //             CustomText(text: 'Create Event'),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 36.4),
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: '3',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 10),
                            CustomText(
                              text: 'Upcoming Events',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              maxLines: 2,
                              color: AppColors.grey_11,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 130,
                        width: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: '315',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 10),
                            CustomText(
                              text: 'Total Attendees',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey_11,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 130,
                        width: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: '5.0',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 10),
                            CustomText(
                              text: 'Avg. \n Rating',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey_11,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.groupEventScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Top image section
                            Image.asset(
                              'assets/images/card.png',
                              fit: BoxFit.cover,
                              height: 150.h,
                              width: double.infinity,
                            ),
            
                            // Bottom content section
                            Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Title and Status
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Summer Music Festival',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                          vertical: 4.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade100,
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: CustomText(
                                          text: 'upcoming',
                                          fontSize: 12.sp,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
            
                                  // Date & Time
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 18.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: 'Aug 15, 2025 • 4:00PM',
                                        fontSize: 14.sp,
                                        color: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
            
                                  // Attendees
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people_outline,
                                        size: 18.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: '245 attendees',
                                        fontSize: 14.sp,
                                        color: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/card.png',
                            fit: BoxFit.cover,
                            height: 150.h,
                            width: double.infinity,
                          ),
            
                          // Bottom content section
                          Padding(
                            padding: EdgeInsets.all(12.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Title and Status
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Summer Music Festival',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.w,
                                        vertical: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.yellow.shade100,
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                      ),
                                      child: CustomText(
                                        text: 'upcoming',
                                        fontSize: 12.sp,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
            
                                // Date & Time
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: 18.r,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: 'Aug 15, 2025 • 4:00PM',
                                      fontSize: 14.sp,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
            
                                // Attendees
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_outline,
                                      size: 18.r,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: '245 attendees',
                                      fontSize: 14.sp,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }
}
