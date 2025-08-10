import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFD0F2D3), Color(0xFF5BCDA4)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'My Event',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.white,
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 18,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: AppColors.green_01,
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.allEvents);
                      },
                      title: 'All',
                      fillColor: AppColors.green_01,
                      height: 43,
                      width: 59,
                      borderRadius: 30,
                      fontSize: 12,
                    ),
                    SizedBox(width: 5),
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.upcomingScreen);
                      },
                      title: 'Upcoming',
                      fillColor: AppColors.white,
                      height: 43,
                      width: 107,
                      borderRadius: 30,
                      fontSize: 12,
                      textColor: AppColors.black,
                    ),
                    SizedBox(width: 5),
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.pastScreen);
                      },
                      title: 'Past',
                      fillColor: AppColors.white,
                      height: 43,
                      width: 59,
                      borderRadius: 30,
                      fontSize: 12,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                Card(
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
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
                                CustomImage(
                                  imageSrc: AppImages.calendar,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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
                                CustomImage(
                                  imageSrc: AppImages.users,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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
                Card(
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
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
                                CustomImage(
                                  imageSrc: AppImages.calendar,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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
                                CustomImage(
                                  imageSrc: AppImages.users,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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
                Card(
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
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
                                CustomImage(
                                  imageSrc: AppImages.calendar,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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
                                CustomImage(
                                  imageSrc: AppImages.users,
                                  imageColor: AppColors.grey,
                                  height: 20,
                                  width: 20,
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

              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 1),
      ),
    );
  }
}

//hi bro!!
