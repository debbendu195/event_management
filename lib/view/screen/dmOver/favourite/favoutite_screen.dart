import 'package:flutter/material.dart';
import 'package:time/utils/app_colors/app_colors.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

class FavoutiteScreen extends StatelessWidget {
  const FavoutiteScreen({super.key});

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
                CustomRoyelAppbar(titleName: 'Favorite'),
                Stack(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomImage(imageSrc: AppImages.img1),
                      ),
                      color: AppColors.green,
                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: CustomText(
                          text: 'Bar',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 23,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.white,
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: AppColors.green_01,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
