import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_image/custom_image.dart';
import '../../../../../components/custom_text/custom_text.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: BackButton(color: AppColors.black),
                ),
                title: CustomText(
                  text: "Create a Post",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.green_06,
                  border: Border.all(
                    color: AppColors.green_07,

                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(imageSrc: AppImages.upload),
                    CustomText(
                      text: 'Upload a photo or video',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.black_06,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomText(text: 'Caption', fontSize: 16, fontWeight: FontWeight.w400,),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.green_06,
                  border: Border.all(
                    color: AppColors.green_07,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(text: 'Write a caption', textAlign: TextAlign.start, fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grey,),
                ),
              ),
              SizedBox(height: 10),
              CustomText(text: 'Tag People (Optimal)', fontSize: 16, fontWeight: FontWeight.w400,),
              Column(
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            CustomText(text: 'Jane Cooper', fontSize: 14),
                            Icon(Icons.clear),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            CustomText(text: 'Jane Cooper', fontSize: 14),
                            Icon(Icons.clear),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomFormCard(
                title: '',
                controller: TextEditingController(),
                hintText: 'Enter a name',
              ),
              SizedBox(height: 10),
              CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.createStoryScreen);
                },
                title: 'Post',
                fontSize: 16,
                fillColor: AppColors.green_01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
