import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../widget/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Scaffold(
          backgroundColor: Colors.transparent, // lets gradient show
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent, // transparent for gradient
            elevation: 0,
            leading: Container(
              height: 38.5.h,
              width: 38.5.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: BackButton(color: AppColors.black),
            ),
            title: CustomText(
              text: "Notification",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (_, __) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                return NotificationCard(
                  img: AssetImage(AppImages.img),
                  title:
                  'Sunset Cinema announced Outdoor Movie Night this Friday ',
                  subtitle: "Free Entry + Popcorn!",
                  time: "3h",
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
