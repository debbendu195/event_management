import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

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
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  CustomRoyelAppbar(titleName: 'Gallery'),
                  CustomButton(
                    title: "Upload Photos / Videos",
                    height: 45.h,
                    width: double.infinity,
                    textColor: Colors.white, onTap: () {  },
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.green_01,
                        ),
                        child: Center(child: CustomText(text: 'All', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.white,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Center(child: CustomText(text: 'Photo', fontSize: 16, fontWeight: FontWeight.w500,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Center(child: CustomText(text: 'Videos', fontSize: 16, fontWeight: FontWeight.w500,)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

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
                            'assets/images/host_card.png',
                            fit: BoxFit.cover,
                            height: 200.h,
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
                                CustomText(
                                  text: 'By Alex k.',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 18.r,
                                      color: AppColors.red,
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: '24',
                                      fontSize: 14.sp,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),


                              ],
                            ),
                          ),
                        ],
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
                            'assets/images/host_card.png',
                            fit: BoxFit.cover,
                            height: 200.h,
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
                                CustomText(
                                  text: 'By Alex k.',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 18.r,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: '24',
                                      fontSize: 14.sp,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                              ],
                            ),
                          ),
                        ],
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
                            'assets/images/host_card.png',
                            fit: BoxFit.cover,
                            height: 200.h,
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
                                CustomText(
                                  text: 'By Alex k.',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 18.r,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(width: 6.w),
                                    CustomText(
                                      text: '24',
                                      fontSize: 14.sp,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),


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
    );
  }
}
