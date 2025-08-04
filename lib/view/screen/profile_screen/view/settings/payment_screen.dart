import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
          Column(
            children: [
              CustomRoyelAppbar(
                titleName: 'Payment Setup',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Add Payment Setup',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 300,
                      width: 352,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Column(
                        children: [
                          CustomText(text: 'Choose Payment Platform'),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Get.toNamed(AppRoutes.stripeScreen);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      color: AppColors.red,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomImage(imageSrc: AppImages.stripe),
                                        CustomText(
                                          text: 'Stripe',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: AppColors.black_06,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 100,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImage(imageSrc: AppImages.paypal),
                                      CustomText(
                                        text: 'PauPal',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_06,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImage(imageSrc: AppImages.bank),
                                      CustomText(
                                        text: 'Bank',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_06,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 100,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImage(imageSrc: AppImages.upi),
                                      CustomText(
                                        text: 'UPI',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_06,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),
                    CustomButton(onTap: (){}, title: 'Save & Verity', fillColor: AppColors.grey_21,)
                  ],
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
