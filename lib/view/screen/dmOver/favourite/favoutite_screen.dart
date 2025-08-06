import 'package:flutter/material.dart';
import 'package:time/utils/app_colors/app_colors.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_nav_bar/dm_nab.dart';
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: AppColors.green_01,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CustomImage(imageSrc: AppImages.img1),
                            ),
                            Positioned(
                              top: 7,
                              left: 10,
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
                            Positioned(
                              right: 20,
                              bottom: 20,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.white,
                                ),
                                child: Icon(
                                  Icons.share,
                                  size: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Live Jazz Night',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'New York, NY',
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'View Details →',
                                      style: TextStyle(
                                        color: Color(0xFF5FFFB2),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Right Column (Time & Date)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '8:00 PM',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Fri, Jan 5',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: AppColors.green_01,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CustomImage(imageSrc: AppImages.img1),
                            ),
                            Positioned(
                              top: 7,
                              left: 10,
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
                            Positioned(
                              right: 20,
                              bottom: 20,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.white,
                                ),
                                child: Icon(
                                  Icons.share,
                                  size: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Left Column (Text Info)
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Live Jazz Night',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'New York, NY',
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'View Details →',
                                      style: TextStyle(
                                        color: Color(0xFF5FFFB2),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Right Column (Time & Date)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '8:00 PM',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Fri, Jan 5',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: DmNab(currentIndex: 1),
    );
  }
}
