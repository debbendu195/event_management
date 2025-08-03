import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';
import '../../components/custom_text_field/custom_text_field.dart';
import '../../utils/app_colors/app_colors.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomRoyelAppbar(titleName: 'Invite'),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CustomTextField(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ),
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage(
                        'assets/images/img.jpg',
                      ), // or NetworkImage(...)
                    ),
                    SizedBox(width: 20),
                    // CustomImage(imageSrc: AppImages.img, height: 50, width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Md Kamran Khan',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                SizedBox(height: 20),
                CustomButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.groupEventScreen);
                  },
                  title: 'Send Invites (8)',
                  fillColor: AppColors.green_01,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
