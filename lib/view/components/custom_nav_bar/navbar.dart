import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../../screen/host/event_screen/view/all_events.dart';
import '../../screen/host/home_screen/view/home_screen.dart';
import '../../screen/host/message_screen/view/message_list_screen.dart';
import '../../screen/host/profile_screen/view/profile_screen.dart';
import '../../screen/host/social_screen/view/social_feed.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<NavBar> {
  late int bottomNavIndex;

  final List<String> icons = [
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
        // border: Border.all(color: AppColors.grey_03, width: .2),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     spreadRadius: 1,
        //     blurRadius: 0,
        //     offset: const Offset(3, 0),
        //   ),
        // ],
      ),
      height: 85.h,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          icons.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            borderRadius: BorderRadius.circular(20.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 13.h),
                Container(
                  height: 47.62.h,
                  width: 47.62.w,
                  decoration: BoxDecoration(
                    color: index == bottomNavIndex
                        ? Colors.white
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    icons[index],
                    height: 25.h,
                    width: 25.w,
                    color: index == bottomNavIndex
                        ? Colors.black
                        : Colors.white,
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
          Get.offAll(() => AllEvents());
          break;
        case 2:
          Get.offAll(() => SocialFeed());
          break;
        case 3:
          Get.offAll(() => MessageListScreen());
          break;
        case 4:
          Get.to(() => ProfileScreen());
          break;
      }
    }
  }
  }




