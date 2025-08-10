import 'package:flutter/material.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_button/custom_button.dart';
import '../../../../../components/custom_text/custom_text.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

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
              CustomRoyelAppbar(titleName: 'Support And Feedback'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Contact Support', fontSize: 16, fontWeight: FontWeight.w500,),
                    CustomText(text: 'Reach out to us anytime. Our team is available 24/7'),
                    CustomFormCard(title: 'Name', controller: TextEditingController(), hintText: 'Your Name',),
                    CustomFormCard(title: 'Email', controller: TextEditingController(), hintText: 'email@gmail.com',),
                    CustomFormCard(title: 'Select Subject', controller: TextEditingController(), hintText: 'Select A Subject',),
                    CustomFormCard(title: 'Message', controller: TextEditingController(), hintText: 'Write Your Message here...',),
                    CustomButton(onTap: (){}, title: 'Send Request', fillColor: AppColors.green_01,),
                    SizedBox(height: 20,),
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Feedback & Suggestions'),
                            CustomText(text: 'Help us to improve your event experience'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                              ],
                            ),
                            CustomText(text: 'Select Your rating'),
                            SizedBox(height: 20,),
                            CustomButton(onTap: (){}, title: 'Send Rating', fillColor: AppColors.green_01,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
