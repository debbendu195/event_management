import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class ItalianoScreen extends StatelessWidget {
  const ItalianoScreen({super.key});

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
                  CustomRoyelAppbar(titleName: 'Italiano Pucchini'),
                  Card(
                    color: AppColors.white,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CustomImage(imageSrc: AppImages.img2),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.green_02,
                                ),
                                child: CustomText(
                                  text: 'Bar',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              bottom: 20,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.green_02,
                                ),
                                child: Icon(
                                  Icons.share,
                                  size: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Live Jazz Night',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'New York, NY',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Live Event (In Person)',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Right Column (Time & Date)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '8:00 PM',
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Fri, Jan 5',
                                    style: TextStyle(
                                      color: AppColors.green,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    color: AppColors.white,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomImage(imageSrc: AppImages.live),
                                      SizedBox(width: 5),
                                      CustomText(text: 'Live Comments'),
                                      Spacer(),
                                      CustomImage(imageSrc: AppImages.clock),
                                      CustomText(text: '01:20 Hours'),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors
                                              .white, // Optional background color
                                          border: Border.all(
                                            color:
                                                AppColors.green, // Border color
                                            width: 4, // Border width
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ), // Optional rounded corners
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            text: 'Good',
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(thickness: 1, color: AppColors.black),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              AppImages.img,
                                            ), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            color: AppColors
                                                .white, // You can use AppColors
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: 'Good Morning',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text:
                                                "This is going to be amazing!  \n Can't wait for the jazz night",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              AppImages.img,
                                            ), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            color: AppColors
                                                .white, // You can use AppColors
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: 'Good Morning',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text:
                                                "This is going to be amazing!  \n Can't wait for the jazz night",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                AppImages.img,
                                              ), // Replace with your image path
                                              fit: BoxFit.cover,
                                            ),
                                            border: Border.all(
                                              color: AppColors
                                                  .white, // You can use AppColors
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: 'Good Morning',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          CustomText(
                                            text:
                                                "This is going to be amazing!  \n Can't wait for the jazz night",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                AppImages.img,
                                              ), // Replace with your image path
                                              fit: BoxFit.cover,
                                            ),
                                            border: Border.all(
                                              color: AppColors
                                                  .white, // You can use AppColors
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        CustomTextField(
                                          height: 45,
                                          weight: 180,
                                          fillColor: AppColors.grey_01,
                                          hintText: 'Write a comment',
                                        ),
                                        SizedBox(width: 10),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: AppColors.green_01,
                                              ),
                                              child: CustomImage(
                                                imageSrc: AppImages.telegram,
                                              ),
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
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.galleryScreen);
                        },
                        title: 'Gallery',
                        fontSize: 16,
                        width: 169,
                        height: 56,
                        fillColor: AppColors.green_01,
                      ),
                      CustomButton(
                        fillColor: AppColors.orange_01,
                        onTap: () {
                          Get.toNamed(AppRoutes.updateScreen);
                        },
                        title: 'Update & Report',
                        fontSize: 16,
                        width: 169,
                        height: 56,
                        borderWidth: 2,
                        borderRadius: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Profile Image
                            Container(
                              height: 50.r,
                              width: 50.r,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.img),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Host'),
                                SizedBox(height: 2,),
                                CustomText(text: 'Alex Willam Follow'),
                                SizedBox(height: 2,),
                                CustomText(text: 'Host'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            CustomButton(
                              fillColor: AppColors.green_01,
                              title: 'Message',
                              height: 30.h,
                              width: 80.w,
                              fontSize: 12.sp, onTap: () {  },
                            ),
                            SizedBox(width: 8.h),
                            CustomButton(
                              title: 'Collaboration',
                              fillColor: AppColors.black,
                              height: 30.h,
                              width: 110.w,
                              fontSize: 12.sp,
                              textColor: Colors.white, onTap: () {  },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'About Event',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 8.h),
                        CustomText(
                          text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante elit.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis ante elit.',
                          fontSize: 14.sp,
                          color: AppColors.green_01,
                        ),
                        SizedBox(height: 12.h),
                        CustomText(
                          text: 'Join the event',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Padding(
                                padding: EdgeInsets.only(right: 4.w),
                                child: CircleAvatar(
                                  radius: 16.r,
                                  backgroundImage:
                                  AssetImage(AppImages.img), // Add real paths
                                ),
                              ),
                            CustomText(
                              text: '+10',
                              fontSize: 12.sp,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),

                  // Location Card
                  Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 20.sp, color: AppColors.black),
                            SizedBox(width: 6.w),
                            CustomText(
                              text: 'Location',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        CustomText(
                          text:
                          '55 Hudson Yards, 10th Floor\nNew York, NY 10001, United States',
                          fontSize: 14.sp,
                          color: AppColors.green_01,
                        ),
                        SizedBox(height: 12.h),
                        CustomButton(
                          title: 'Map',
                          fillColor: AppColors.green_01,
                          height: 36.h,
                          width: 80.w,
                          fontSize: 14.sp,
                          textColor: Colors.white, onTap: () {  },
                        )
                      ],
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
