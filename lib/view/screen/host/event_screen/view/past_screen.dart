import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_nav_bar/navbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class PastScreen extends StatelessWidget {
  const PastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFD0F2D3), Color(0xFF5BCDA4)],
                ),
              ),
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
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
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
                          fillColor: AppColors.white,
                          height: 43,
                          width: 59,
                          borderRadius: 30,
                          fontSize: 12,
                          textColor: AppColors.black,
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
                          fillColor: AppColors.green_01,
                          height: 43,
                          width: 59,
                          borderRadius: 30,
                          fontSize: 12,
                          textColor: AppColors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.r),
                              ),
                              child: CustomImage(imageSrc: AppImages.card),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                        text: 'Summer Music Festival',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade100,
                                          borderRadius: BorderRadius.circular(12.r),
                                        ),
                                        child: Column(
                                          children: [
                                            CustomText(
                                              text: 'upcoming',
                                              fontSize: 12.sp,
                                              color: Colors.black87,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 19.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: 'Aug 15, 2025, 4:00PM',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people_outline,
                                        size: 20.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: '245 attendees',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.edit,
                                        size: 18.r,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.r),
                              ),
                              child: CustomImage(imageSrc: AppImages.card),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                        text: 'Summer Music Festival',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade100,
                                          borderRadius: BorderRadius.circular(12.r),
                                        ),
                                        child: Column(
                                          children: [
                                            CustomText(
                                              text: 'upcoming',
                                              fontSize: 12.sp,
                                              color: Colors.black87,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 19.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: 'Aug 15, 2025, 4:00PM',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people_outline,
                                        size: 20.r,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      CustomText(
                                        text: '245 attendees',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.edit,
                                        size: 18.r,
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
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 1),
    );
  }
}
