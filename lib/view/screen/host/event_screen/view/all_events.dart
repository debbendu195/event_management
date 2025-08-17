import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/screen/host/home_screen/widget/custom_event_upcoming.dart';
import 'package:time/view/screen/host/home_screen/controller/home_controller.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../home_screen/widget/custom_home_tabbar.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({super.key});

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                CustomText(
                  text: 'My Event',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 18,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.createEventScreen);
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: AppColors.green_01,
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Obx(() {
                  return CustomHomeTabBar(
                    curentIndex: homeController.selectedIndex.value,
                    onTab: () {
                      // This callback can be used for additional actions when any tab is pressed
                    },
                    tabs: ['All', 'Live', 'Upcoming', 'Past'],
                    onTabChanged: (index) {
                      // Update the selected index
                      homeController.selectedIndex.value = index;

                      // Navigate to different screens based on tab index
                      switch (index) {
                        case 0: // All
                          Get.toNamed(AppRoutes.allEvents); // or your route name
                          break;
                        case 1: // Live
                          Get.toNamed(AppRoutes.upcomingScreen);
                          break;
                        case 2: // Upcoming
                          Get.toNamed(AppRoutes.pastScreen);
                          break;
                        case 3: // Past
                          Get.toNamed(AppRoutes.updateScreen);
                          break;
                        default:
                          break;
                      }
                    },
                  );
                }),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 118,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: '3', fontSize: 24, fontWeight: FontWeight.w600,),
                          CustomText(text: 'Events', fontSize: 16, fontWeight: FontWeight.w400,),
                        ],
                      ),
                    ),
                    Container(
                      height: 118,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: '5.0', fontSize: 24, fontWeight: FontWeight.w600,),
                          CustomText(text: 'Total \n Attendance', fontSize: 16, fontWeight: FontWeight.w400,),
                        ],
                      ),
                    ),
                    Container(
                      height: 118,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: '5.0', fontSize: 24, fontWeight: FontWeight.w600,),
                          CustomText(text: 'Ratings', fontSize: 16, fontWeight: FontWeight.w400,),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 25,),
                Column(
                  children: List.generate(1, (value) {
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
          bottomNavigationBar: NavBar(currentIndex: 1),
        ),
      ),
    );
  }
}

/*Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'My Event',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.white,
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 18,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: AppColors.green_01,
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.allEvents);
                      },
                      title: 'All',
                      fillColor: AppColors.green_01,
                      height: 43,
                      width: 59,
                      borderRadius: 30,
                      fontSize: 12,
                    ),
                    SizedBox(width: 5),
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.upcomingScreen);
                      },
                      title: 'Upcoming',
                      fillColor: AppColors.white,
                      height: 43,
                      width: 107,
                      borderRadius: 30,
                      fontSize: 12,
                      textColor: AppColors.black,
                    ),
                    SizedBox(width: 5),
                    CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.pastScreen);
                      },
                      title: 'Past',
                      fillColor: AppColors.white,
                      height: 43,
                      width: 59,
                      borderRadius: 30,
                      fontSize: 12,
                      textColor: AppColors.black,
                    ),
                  ],
                ),

                // SizedBox(height: 21,),

                Column(
                  children: List.generate(2, (value) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 21),
                      child: CustomEventUpcoming(
                        img: AppConstants.ntrition1,
                        title: "Summer Music Festival",
                        onTap: (){
                          Get.toNamed(AppRoutes.groupEventScreen);
                        },
                      ),
                    );
                  }),
                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 1),
      ),*/
