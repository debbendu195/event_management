import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_const/app_const.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class ProfileRoleScreen extends StatelessWidget {
  const ProfileRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD0F2D3),
              Color(0xFF5BCDA4),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Choose Your Role',
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text:
                'What type of account you want? \n Who are you? Select an option \n to continue',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey_01,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 240,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.green_01,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(
                          imageSrc: AppImages.card_img,
                          height: 103.57,
                          width: 56.2,
                        ),
                        CustomText(
                          text: 'Host',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.white,
                        ),
                        CustomText(
                          text:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 240,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.lightWhite,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(
                          imageSrc: AppImages.card_img2,
                          height: 103.57,
                          width: 113.54,
                        ),
                        SizedBox(height: 7),
                        CustomText(
                          text: 'DMOVER',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        CustomText(
                          text:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          maxLines: 4,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.homeScreen);
                  },
                  title: 'Continue',
                  fillColor: AppColors.green_01,
                  borderRadius: 30,
                ),
              ),
            ],
          ),
        ),
    ),
    );
  }
}
