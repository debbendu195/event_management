import 'package:flutter/material.dart';
import 'package:time/utils/app_colors/app_colors.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

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
                  CustomRoyelAppbar(titleName: 'Update & Reports'),
                  CustomTextField(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Live Update',
                  ),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // Adjust size
                                    backgroundImage: AssetImage(
                                      'assets/images/img.jpg',
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Alex Johnson'),
                                      Row(
                                        children: [
                                          CustomImage(
                                            imageSrc: AppImages.trafic,
                                          ),
                                          CustomText(text: 'traffic'),
                                          SizedBox(width: 5),
                                          CustomText(text: '15m ago'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.report_problem_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CustomText(
                                  text:
                                      'Heavy traffic on Main Street due to an accident. Avoid if possible and use 5th Avenue instead.',
                                  maxLines: 3,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 4),
                                    CustomText(text: 'Main Street, 7th Avenue'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      size: 18,
                                      color: AppColors.green_01,
                                    ),
                                    const SizedBox(width: 4),
                                    CustomText(text: '24'),
                                    SizedBox(width: 16),
                                    Spacer(),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      size: 18,
                                      color: AppColors.green_01,
                                    ),
                                    const SizedBox(width: 4),
                                    CustomText(text: '6'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30, // Adjust size
                                    backgroundImage: AssetImage(
                                      'assets/images/img.jpg',
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Alex Johnson'),
                                      Row(
                                        children: [
                                          CustomImage(
                                            imageSrc: AppImages.trafic,
                                          ),
                                          CustomText(text: 'traffic'),
                                          SizedBox(width: 5),
                                          CustomText(text: '15m ago'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.report_problem_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CustomText(
                                  text:
                                      'Heavy traffic on Main Street due to an accident. Avoid if possible and use 5th Avenue instead.',
                                  maxLines: 3,
                                ),
                                SizedBox(height: 10),
                                CustomImage(imageSrc: AppImages.product),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 4),
                                    CustomText(text: 'Main Street, 7th Avenue'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      size: 18,
                                      color: AppColors.green_01,
                                    ),
                                    const SizedBox(width: 4),
                                    CustomText(text: '24'),
                                    SizedBox(width: 16),
                                    Spacer(),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      size: 18,
                                      color: AppColors.green_01,
                                    ),
                                    const SizedBox(width: 4),
                                    CustomText(text: '6'),
                                  ],
                                ),
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
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: AppColors.green_01, child: Icon(Icons.add,color: AppColors.white,),),
    );
  }
}
