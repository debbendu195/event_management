import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_image/custom_image.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';
import '../../components/custom_text_field/custom_text_field.dart';

class CreateStoryScreen extends StatelessWidget {
  const CreateStoryScreen({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoyelAppbar(titleName: 'Create a Story'),
                  SizedBox(height: 10),
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(imageSrc: AppImages.upload),
                        CustomText(
                          text: 'Upload a photo or video',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.black_06,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomText(text: 'Add a Message', fontSize: 16),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CustomTextField(hintText: 'Whats on your mind'),
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.createStoryScreen);
                    },
                    title: 'Post to Story',
                    fillColor: AppColors.green_01,
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
