import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';

class EventExploreScreen extends StatelessWidget {
  const EventExploreScreen({super.key});

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRoyelAppbar(),
                      CustomTextField(
                        prefixIcon: Icon(Icons.search, color: AppColors.green),
                        hintText: 'Explore events',
                        readOnly: true,
                        onTap: (){
                          Get.toNamed(AppRoutes.eventExploreScreen);
                        },
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.menu),
                                CustomText(text: 'Explore Filters', fontSize: 16, fontWeight: FontWeight.w500,),
                                Icon(Icons.arrow_downward),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Bars', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(child: CustomText(text: 'Restaurants', fontSize: 16, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          CustomText(text: 'Live Event', fontWeight: FontWeight.w500,),
                          SizedBox(width: 20),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          CustomText(text: 'UP Coming Live', fontWeight: FontWeight.w500,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/map_dm.png', // your background map image
                      width: double.infinity,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                    Card(
                      color: AppColors.grey,
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
