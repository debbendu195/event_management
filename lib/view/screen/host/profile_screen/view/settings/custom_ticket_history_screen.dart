import 'package:flutter/material.dart';
import 'package:time/utils/app_colors/app_colors.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

class CustomTicketHistoryScreen extends StatelessWidget {
  const CustomTicketHistoryScreen({
    super.key,
    this.inPerson = true,
  });

  final bool? inPerson;

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        appBar: CustomRoyelAppbar(),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title + Status
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'CityGroove Fest',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    Row(
                      children: [
                        CustomImage(imageSrc: AppImages.complete),
                        const SizedBox(width: 8),
                        CustomText(
                          text: 'Complete',
                          color: AppColors.green_10,
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 17),

                /// Date & Time
                Row(
                  children: [
                    CustomImage(imageSrc: AppImages.date),
                    const SizedBox(width: 5),
                    CustomText(
                      text: '2025-11-15',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_14,
                      left: 8,
                      right: 10,
                    ),
                    Icon(Icons.circle, size: 5, color: AppColors.grey_14),
                    CustomText(
                      text: '18:00 - 20:00',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      left: 10,
                      color: AppColors.grey_14,
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                /// Location
                Row(
                  children: [
                    CustomImage(imageSrc: AppImages.date),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Digital Innovation Hub',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_14,
                      left: 8,
                      right: 10,
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                /// Event Type
                Row(
                  children: [
                    CustomText(text: 'Event Type:', right: 16),
                    (inPerson != true)
                        ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.color_15,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CustomText(text: 'In-person'),
                    )
                        : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.color_15,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CustomText(text: 'Upcoming'),
                    ),
                  ],
                ),

                CustomText(text: 'Your rating:  🔥', fontSize: 14, fontWeight: FontWeight.w400,),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          color: AppColors.color_17,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Row(
                        children: [
                          CustomImage(imageSrc: AppImages.complete),
                          CustomText(text: 'View Event', )
                        ],
                      )
                    ),
                    SizedBox(width: 10,),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.color_17,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            CustomImage(imageSrc: AppImages.complete),
                            CustomText(text: 'View Event', )
                          ],
                        )
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
