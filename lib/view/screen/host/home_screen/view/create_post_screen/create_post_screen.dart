import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_image/custom_image.dart';
import '../../../../../components/custom_text/custom_text.dart';
import '../../../../../components/custom_text_field/custom_text_field.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: BackButton(color: AppColors.black),
            ),
          ),
          title: CustomText(
            text: "Create a Post",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.green_06,
                    border: Border.all(color: AppColors.green_07),
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
                        color: AppColors.green_09,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomText(
                  text: 'Caption',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 10),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.green_06,
                    border: Border.all(color: AppColors.green_07),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      fillColor: AppColors.green_06,
                      hintText: 'write a caption',
                      hintColor: AppColors.green_09,
                      maxLines: 6,
                    ),
                    // CustomText(text: 'Write a caption', textAlign: TextAlign.start, fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grey,),
                  ),
                ),
                SizedBox(height: 35),
                CustomText(
                  text: 'Tag People (Optimal)',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 4),
                Wrap(
                  spacing: 8, // horizontal space between items
                  runSpacing: 8, // vertical space between rows
                  children: List.generate(4, (index) {
                    // try with more than 3 to test wrap
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize
                            .min, // keeps container only as wide as content
                        children: [
                          CustomText(
                            text: 'Jane Cooper',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.clear),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(height: 15),
                Stack(
                  children: [
                    CustomTextField(
                      hintText: 'Enter a name',
                      color: AppColors.green_01,
                      fieldBorderColor: AppColors.green_07,
                      fieldBorderRadius: 15,
                      fillColor: AppColors.green_06,
                    ),
                    Positioned(
                      top:0,
                      right: 0,
                      child: GestureDetector(
                        onTap: ()
                        {

                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                          decoration: BoxDecoration(
                            color: AppColors.green_01,
                            border: Border.all(color: AppColors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: CustomText(
                            text: 'Add',
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                CustomButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.createStoryScreen);
                  },
                  title: 'Post',
                  fontSize: 16,
                  fillColor: AppColors.green_01,
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
