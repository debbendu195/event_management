import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_button/custom_button.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';

class FliterEventScreen extends StatelessWidget {
  const FliterEventScreen({super.key});

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRoyelAppbar(titleName: 'Filter Events'),
                      CustomText(text: 'Event Type', fontWeight: FontWeight.w500, fontSize: 16,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Concerts', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Sports', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Family-Friendly', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Center(child: CustomText(text: 'Neighborhood Events', fontSize: 16, fontWeight: FontWeight.w500,)),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Food Festivals', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          // this is card
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Sports', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Others', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(height: 10,),
                      CustomText(text: 'Price Range', fontWeight: FontWeight.w500, fontSize: 16,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Free', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Paid', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      CustomText(text: 'Timeline', fontWeight: FontWeight.w500, fontSize: 16,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Today', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Tomorrow', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'This Weekend', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Center(child: CustomText(text: 'Next Week', fontSize: 16, fontWeight: FontWeight.w500,)),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      CustomText(text: 'Access Type', fontWeight: FontWeight.w500, fontSize: 16,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Today', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Tomorrow', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      CustomText(text: 'Event Features', fontWeight: FontWeight.w500, fontSize: 16,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Outdoor', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Indoor', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'wheelchair accessible', fontSize: 14, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Pet Friendly', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'ASL Interpreter', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(onTap: (){}, title: 'Apply Filters', width: 169, height: 56, fillColor: AppColors.green_01,),

                            CustomButton(onTap: (){}, title: 'Apply Filters', width: 169, height: 56, borderWidth: 2, borderRadius: 30,),
                          ],
                        ),
                      )
                    ],
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
