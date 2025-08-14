import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/utils/app_const/app_const.dart';
import 'package:time/utils/app_icons/app_icons.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_netwrok_image/custom_network_image.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../widget/custom_event_upcoming.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30, // Adjust size
                          backgroundImage: AssetImage(AppImages.img),
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
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.notificationScreen);
                              },
                              child: Container(
                                height: 38.5,
                                width: 38.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.white,
                                ),
                                child: CustomImage(
                                  imageSrc: AppImages.notification,
                                ),
                                /*IconButton(
                                  icon: Icon(Icons.notifications_none),
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.notificationScreen);
                                  },
                                ),*/
                              ),
                            ),
                            Positioned(
                              right: 11,
                              bottom: 24,
                              child: Container(
                                height: 6,
                                width: 6,
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
                    SizedBox(height: 30),
                    Stack(
                      children: [
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.createEventScreen);
                          },
                          title: 'Create Event',
                          fillColor: AppColors.green_01,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          borderRadius: 30,
                          left: 50,
                        ),
                        Positioned(
                          left: 106,
                          top: 14,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: AppColors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(AppRoutes.createEventScreen);
                              },
                              child: Icon(Icons.add, color: AppColors.green_01),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Container(
                    //   height: 50,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(30)),
                    //     color: AppColors.green_01,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         height: 30,
                    //         width: 30,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.all(Radius.circular(8)),
                    //           color: AppColors.white,
                    //         ),
                    //         child: Row(
                    //           children: [
                    //             Icon(Icons.add, color: AppColors.green_01),
                    //             SizedBox(width: 20,),
                    //             CustomText(text: 'Create Event'),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 20),

                    Column(
                      children: List.generate(2, (value) {
                        return CustomEventUpcoming(
                          img: AppConstants.ntrition1,
                          title: "Summer Music Festival",
                          onTap: (){
                            Get.toNamed(AppRoutes.groupEventScreen);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavBar(currentIndex: 0),
      ),
    );
  }
}
