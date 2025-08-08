import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_nav_bar/dm_nab.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_text/custom_text.dart';

class DmLiveEventScreen extends StatelessWidget {
  const DmLiveEventScreen({super.key});

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
                children: [
                  CustomRoyelAppbar(titleName: 'Live Events',),
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
                                          horizontal: 20.w,
                                          vertical: 4.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.green_01,
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: CustomText(
                                          text: 'live',
                                          fontSize: 12.sp,
                                          color: AppColors.white,
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
                                        horizontal: 20.w,
                                        vertical: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.green_01,
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                      ),
                                      child: CustomText(
                                        text: 'live',
                                        fontSize: 12.sp,
                                        color: AppColors.white,
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
          ),
        ],
      ),
      bottomNavigationBar: DmNab(currentIndex: 0),
    );
  }
}
