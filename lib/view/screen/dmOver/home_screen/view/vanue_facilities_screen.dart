import 'package:flutter/material.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class VanueFacilitiesScreen extends StatelessWidget {
  const VanueFacilitiesScreen({super.key});

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
            child: Column(
              children: [
                CustomRoyelAppbar(titleName: 'Message List'),
                SizedBox(height: 10),
                Card(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImage(imageSrc: AppImages.woman),
                          CustomText(
                            text: 'Chat with Andrew',
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          CustomImage(imageSrc: AppImages.frame),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImage(imageSrc: AppImages.woman),
                          CustomText(
                            text: 'Chat with Andrew',
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          CustomImage(imageSrc: AppImages.frame),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImage(imageSrc: AppImages.woman),
                          CustomText(
                            text: 'Chat with Andrew',
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          CustomImage(imageSrc: AppImages.frame),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImage(imageSrc: AppImages.woman),
                          CustomText(
                            text: 'Chat with Andrew',
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          CustomImage(imageSrc: AppImages.frame),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImage(imageSrc: AppImages.woman),
                          CustomText(
                            text: 'Chat with Andrew',
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          CustomImage(imageSrc: AppImages.frame),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
