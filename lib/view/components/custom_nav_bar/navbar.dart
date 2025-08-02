import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:time/view/screen/home/home_screen.dart';
import 'package:time/view/utils/app_images/app_images.dart';


import '../../screen/event/all_events.dart';
import '../../screen/messageList/message_list_screen.dart';
import '../../screen/profile/profile_screen.dart';
import '../../screen/social_feed/social_feed.dart';
import '../../utils/app_colors/app_colors.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<NavBar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppImages.home2,
    AppImages.calendar,
    AppImages.group,
    AppImages.comment,
    AppImages.user,
  ];
  final List<String> unselectedIcon = [
    AppImages.home2,
    AppImages.calendar,
    AppImages.group,
    AppImages.comment,
    AppImages.user,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: AppColors.green_01,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
        border: Border.all(color: AppColors.grey_03,width: .2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 0,
            offset: const Offset(3, 0),
          ),
        ]
      ),
      height: 85.h,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          selectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 13.h,),
                Container(
                  height: 40.h,
                  width: 40.w,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    index == bottomNavIndex ? selectedIcon[index] : unselectedIcon[index],
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      setState(() {
        bottomNavIndex = index;
      });

      switch (index) {
        case 0:
          Get.offAll(() => HomeScreen());
          break;
        case 1:
         Get.to(() => AllEvents());
          break;
        case 2:
         Get.to(() => SocialFeed());
          break;
        case 3:
         Get.to(() => MessageListScreen());
          break;
        case 4:
         Get.to(() => ProfileScreen());
          break;
      }
    }
  }
}




