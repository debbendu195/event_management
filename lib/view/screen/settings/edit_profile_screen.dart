import 'package:flutter/material.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRoyelAppbar(titleName: 'Edit Profile'),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 110,
                          width: 110,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/img.jpg',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 210,
                          top: 70,
                          child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Icon(Icons.edit,size: 20,),
                      )
                      ),
                    ],
                  ),
                  CustomFormCard(
                    title: 'Name',
                    hintText: 'Debbendu Paul',
                    controller: TextEditingController(),
                  ),
                  CustomFormCard(
                    title: 'Email;',
                    hintText: 'debbendu195@gmail.com',
                    controller: TextEditingController(),
                  ),
                  CustomFormCard(
                    title: 'Password',
                    hintText: 'asdkjfhk',
                    controller: TextEditingController(),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'About',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        SizedBox(height: 8),
                        CustomText(
                          text:
                              'Event organizer with 5+ years of experience specializing in music festivals and tech conferences. Passionate about creating memorable experiences.',
                          color: AppColors.grey,
                          fontSize: 14,
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomButton(onTap: () {}, title: 'Save Changes',fillColor: AppColors.grey_21,),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }
}
