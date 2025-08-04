import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../../screen/dmOver/favourite/favoutite_screen.dart';
import '../../screen/dmOver/home/dm_home_screen.dart';
import '../../screen/message_screen/view/message_list_screen.dart';
import '../../screen/profile_screen/view/profile_screen.dart';
import '../../screen/social_screen/view/social_feed.dart';

class DmNab extends StatefulWidget {
  final int currentIndex;
  const DmNab({required this.currentIndex, super.key});

  @override
  State<DmNab> createState() => _DmNabState();
}

class _DmNabState extends State<DmNab> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppImages.home2,
    AppImages.heart_bold,
    AppImages.group,
    AppImages.comment,
    AppImages.user,
  ];
  final List<String> unselectedIcon = [
    AppImages.home2,
    AppImages.heart_bold,
    AppImages.comments,
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
          Get.offAll(() => DmHomeScreen());
          break;
        case 1:
          Get.to(() => FavoutiteScreen());
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


