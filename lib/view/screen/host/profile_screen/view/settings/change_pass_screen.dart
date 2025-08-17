import 'package:flutter/material.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_button/custom_button.dart';
import '../../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../components/custom_text/custom_text.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomRoyelAppbar(titleName: 'Change Password'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Change Password', fontSize: 16,
                          fontWeight: FontWeight.w500,),
                        SizedBox(height: 10,),
                        CustomTextField(fillColor: Colors.transparent, fieldBorderColor: AppColors.green_08, isPassword: true, hintText: 'Current Password', fontSize: 16, fontWeight: FontWeight.w400,),
                        SizedBox(height: 10,),
                        CustomTextField(fillColor: Colors.transparent, fieldBorderColor: AppColors.green_08, isPassword: true, hintText: 'New Password', fontSize: 16, fontWeight: FontWeight.w400,),
                        SizedBox(height: 10,),
                        CustomTextField(fillColor: Colors.transparent, fieldBorderColor: AppColors.green_08, isPassword: true, hintText: 'Retype Password', fontSize: 16, fontWeight: FontWeight.w400,),
              
                        SizedBox(height: 180,),
                        CustomButton(onTap: (){}, title: 'Save Changes', fillColor: AppColors.grey_21,),
                      ],
                    ),
                  )
                ],
              ),
            ),
        bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }
}
