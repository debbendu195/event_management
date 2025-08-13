import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/utils/app_images/app_images.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class CustomEventCard extends StatefulWidget {
  const CustomEventCard({super.key, this.img, this.title, this.subtitle, this.icon1, this.icon2, this.icon3});

  final ImageProvider? img;
  final String? title;
  final String? subtitle;
  final ImageProvider? icon1;
  final ImageProvider? icon2;
  final ImageProvider? icon3;

  @override
  State<CustomEventCard> createState() => _CustomEventCardState();
}

class _CustomEventCardState extends State<CustomEventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.groupEventScreen);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: widget.img ?? const AssetImage('assets/images/card.png'),
              fit: BoxFit.cover,
              height: 158.h,
              width: double.infinity,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: widget.title ?? 'Summer Music Festival',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        height: 27.h,
                        width: 73.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.green_01,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: widget.icon1 ?? AssetImage(AppImages.live),
                              height: 16.h,
                              width: 16.w,
                              fit: BoxFit.contain,
                            ),

                            // CustomImage(
                            //   imageSrc: icon ?? AppImages.live,
                            //   imageColor: AppColors.red,
                            //   height: 16.h,
                            //   width: 16.w,
                            // ),
                            SizedBox(width: 2.95.w),
                            CustomText(
                              text: 'live',
                              fontSize: 12,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),

                  // Date & Time
                  Row(
                    children: [
                      Image(
                        image: widget.icon2 ?? AssetImage(AppImages.date),
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.contain,
                      ),
                      // Image(image: widget.icon2 ?? AssetImage(AppImages.live)),
                      // Icon.widget.icon ?? AssetImage(AppImages.calendar),

                      // CustomImage(
                      //   imageSrc: AppImages.calendar,
                      //   imageColor: AppColors.black,
                      //   height: 20.h,
                      //   width: 20.w,
                      // ),
                      SizedBox(width: 10.w),
                      CustomText(
                        text: widget.subtitle ?? 'Aug 15, 2025 • 4:00PM',
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 21.5.h),

                  // Attendees
                  Row(
                    children: [
                      Image(
                        image: widget.icon3 ?? AssetImage(AppImages.users),
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.contain,
                      ),
                      // Image(image: widget.icon3 ?? AssetImage(AppImages.live)),

                      // CustomImage(
                      //   imageSrc: AppImages.users,
                      //   imageColor: AppColors.black,
                      //   height: 20.h,
                      //   width: 20.w,
                      // ),

                      SizedBox(width: 10.w),
                      CustomText(
                        text: widget.subtitle ?? '245 attendees',
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                      Spacer(),
                      Image(
                        image: widget.icon3 ?? AssetImage(AppImages.pen),
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.contain,
                        color: AppColors.blue1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
