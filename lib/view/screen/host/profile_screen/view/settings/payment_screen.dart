import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_image/custom_image.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
                  text: "Payment Setup",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              CustomText(
                text: 'Add Payment Setup',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              SizedBox(height: 20),
              Container(
                height: 285,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Choose Payment Platform',
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.stripeScreen);
                            },
                            child: Container(
                              height: 82,
                              width: 158,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.green_05, // Border width
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImage(imageSrc: AppImages.stripe),
                                  CustomText(
                                    text: 'Stripe',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 82,
                            width: 158,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.green_05, // Border width
                              ),
                              borderRadius: BorderRadius.circular(5),
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
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 82,
                            width: 158,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.green_05, // Border width
                              ),
                              borderRadius: BorderRadius.circular(5),
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
                          SizedBox(width: 10),
                          Container(
                            height: 82,
                            width: 158,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.green_05, // Border width
                              ),
                              borderRadius: BorderRadius.circular(5),
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                onTap: () {},
                title: 'Save & Verity',
                fillColor: AppColors.grey_21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
