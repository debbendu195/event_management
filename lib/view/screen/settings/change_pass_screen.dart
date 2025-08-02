import 'package:flutter/material.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../components/custom_button/custom_button.dart';
import '../../components/custom_from_card/custom_from_card.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

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
              CustomRoyelAppbar(titleName: 'Change Password'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Change Password'),
                    CustomFormCard(title: '', controller: TextEditingController(), hintText: 'Your Name',),
                    CustomFormCard(title: '', controller: TextEditingController(), hintText: 'email@gmail.com',),
                    CustomFormCard(title: '', controller: TextEditingController(), hintText: 'Select A Subject',),
                    CustomButton(onTap: (){}, title: 'Save Changes', fillColor: AppColors.grey_21,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }
}
