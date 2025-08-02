import 'package:flutter/material.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              CustomRoyelAppbar(titleName: 'Notification'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'Sunset Cinema announced \n Outdoor Movie Night this Friday',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(text: '3h'),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.green_01,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'Sunset Cinema announced \n Outdoor Movie Night this Friday',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(text: '3h'),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.green_01,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'Sunset Cinema announced \n Outdoor Movie Night this Friday',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(text: '3h'),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.green_01,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'Sunset Cinema announced \n Outdoor Movie Night this Friday',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                        ),
                        CustomText(
                          text: 'Event Host',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(text: '3h'),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.green_01,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
