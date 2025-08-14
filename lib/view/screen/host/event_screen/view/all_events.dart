import 'package:buttons_tabbar/buttons_tabbar.dart';
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
  AllEvents({super.key});

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
          body: Column(
            children: [
              Obx(() {
                return CustomHomeTabBar(
                  curentIndex: homeController.selectedIndex.value,
                  onTab: () {},
                  tabs: ['All', 'Live', 'Upcoming', 'Past'],
                  onTabChanged: (index) {
                    homeController.selectedIndex.value = index;
                  },
                );
              }),
            ],
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
