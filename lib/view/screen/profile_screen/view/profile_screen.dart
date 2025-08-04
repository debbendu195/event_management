import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_text/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Profile
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/images/img.jpg'),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Awesome Event Co.',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          CustomText(text: '4.8 Host Rating'),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.logout),
                ],
              ),

              SizedBox(height: 20),

              // About Box
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

              // Recent Events Box
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
                    Row(
                      children: [
                        CustomText(
                          text: 'Recent Events',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        Spacer(),
                        CustomText(
                          text: 'See All',
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    eventItem(),
                    SizedBox(height: 8),
                    eventItem(),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Settings Box
              CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.settingsScreen);
                },
                title: 'Settings',
                fillColor: AppColors.green_01,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }

  // Event Card Widget
  Widget eventItem() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.lightGreen.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.calendar_today, color: Colors.white, size: 20),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Summer Music Festival',
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Aug 15, 2025',
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.people, size: 18, color: Colors.grey),
              SizedBox(width: 4),
              CustomText(text: '245'),
            ],
          ),
        ],
      ),
    );
  }
}
