import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';
import 'package:time/view/screen/dmOver/home_screen/view/google_map/google_map_page.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_nav_bar/dm_nab.dart';
import '../../../../components/custom_text/custom_text.dart';

class DmHomeScreen extends StatelessWidget {
  DmHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Top Bar
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomText(
                              text: 'Good Morning',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              text: 'Alexa',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Container(
                              height: 38.5,
                              width: 38.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.white,
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.notifications_none),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.notificationScreen);
                                },
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 12,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    /// Headings
                    const CustomText(
                      text: 'Find Best Events',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                    const CustomText(
                      text: 'Near You.',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),

                    const SizedBox(height: 20),

                    /// Search
                    CustomTextField(
                      prefixIcon: const Icon(Icons.search, color: AppColors.green),
                      hintText: 'Explore events',
                      readOnly: true,
                      onTap: () {
                        Get.toNamed(AppRoutes.eventExploreScreen);
                      },
                    ),

                    const SizedBox(height: 10),

                    /// Filters
                    Row(
                      children: [
                        CustomTextField(
                          onTap: () {
                            Get.toNamed(AppRoutes.fliterEventScreen);
                          },
                          weight: 182,
                          fieldBorderRadius: 30,
                          readOnly: true,
                          prefixIcon: const Icon(Icons.menu),
                          hintText: 'Explore Filters',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          suffixIcon: const Icon(Icons.arrow_downward),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.white,
                          ),
                          child: const Center(
                            child: CustomText(
                              text: 'Non Event',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    /// Location
                    Row(
                      children: const [
                        Text(
                          'Find events near ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          'New York,NY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.edit, size: 18),
                      ],
                    ),

                    const SizedBox(height: 20),

                    /// Tags
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.dmLiveEventScreen);
                          },
                          child: const CustomText(
                            text: 'Live Event',
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: AppColors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          child: const CustomText(
                            text: 'Up Coming Live',
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const GoogleMapPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: DmNab(currentIndex: 0),
      ),
    );
  }
}
