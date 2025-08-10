import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class GroupEventScreen extends StatelessWidget {
  const GroupEventScreen({super.key});

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: false,
                      title: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.r),
                            ),
                            child: CustomImage(
                              imageSrc: AppImages.card,
                              fit: BoxFit.cover,
                              height: 150.h,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: 'Live Jazz Night',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                CustomText(text: 'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididuntut laboore at dolore magna aliqua', maxLines: 3, textAlign: TextAlign.left,),
                                Row(
                                  children: [
                                    CustomText(text: 'Public Group'),
                                    SizedBox(width: 40),
                                    CustomImage(imageSrc: AppImages.users),
                                    CustomText(text: 'Public Group'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 48,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          color: AppColors.grey_32,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomImage(
                                              imageSrc: AppImages.join,
                                            ),
                                            SizedBox(width: 5),
                                            CustomText(
                                              text: 'Joined',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 25),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.inviteScreen);
                                      },
                                      child: Container(
                                        height: 48,
                                        width: 104,
                                        decoration: BoxDecoration(
                                          color: AppColors.red_03,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImage(
                                              imageSrc: AppImages.invita,
                                            ),
                                            SizedBox(width: 5),
                                            CustomText(
                                              text: 'Invite',
                                              color: AppColors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 25),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 48,
                                        width: 62,
                                        decoration: BoxDecoration(
                                          color: AppColors.grey_32,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            text: '18+',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {
                                        Get.toNamed(
                                          AppRoutes.vanueFacilitiesScreen,
                                        );
                                      },
                                      title: 'Venue Facility',
                                      fillColor: AppColors.grey_32,
                                      height: 43,
                                      width: 110,
                                      borderRadius: 6,
                                      fontSize: 12,
                                      textColor: AppColors.black,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 30, // Adjust size
                                      backgroundImage: AssetImage(
                                        'assets/images/img.jpg',
                                      ),
                                    ),
                                    // CustomFormCard(title: '', controller: TextEditingController()),
                                    CustomTextField(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.createPostScreen,);
                                      },
                                      weight: 250,
                                      hintText: 'Write Something...',
                                      readOnly: true,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.createPostScreen);
                                      },
                                      child: CustomImage(
                                        imageSrc: AppImages.Vector,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30, // Adjust size
                                      backgroundImage: AssetImage(
                                        'assets/images/img.jpg',
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:MainAxisAlignment.start,
                                      children: [
                                        CustomText(text: 'Jane Cooper Follow', textAlign: TextAlign.start, fontWeight: FontWeight.w500, fontSize: 12,),
                                        CustomText(text: 'with Jane Cooper and 5 others \n@alexJhon.2h ago', textAlign: TextAlign.start,),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                    text:
                                        'That sounds awesome! 🎶 Which \nartists or bands were your \nfavorite?', textAlign: TextAlign.start,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    maxLines: 3,
                                  ),
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                    bottom: Radius.circular(10.r),
                                  ),
                                  child: CustomImage(imageSrc: AppImages.card),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CustomImage(imageSrc: AppImages.map),
                                    SizedBox(width: 10),
                                    CustomText(
                                      text:
                                          'Summer Music Festival   Central Park',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.green_01,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImage(imageSrc: AppImages.heart),
                                        CustomText(text: '24'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomImage(
                                          imageSrc: AppImages.comments,
                                        ),
                                        CustomText(text: '6'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomImage(imageSrc: AppImages.share),
                                        CustomText(text: '05'),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                    bottom: Radius.circular(10.r),
                                  ),
                                  child: CustomImage(imageSrc: AppImages.card),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CustomImage(imageSrc: AppImages.map),
                                    SizedBox(width: 10),
                                    CustomText(
                                      text:
                                          'Summer Music Festival   Central Park',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.green_01,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImage(imageSrc: AppImages.heart),
                                        CustomText(text: '24'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomImage(
                                          imageSrc: AppImages.comments,
                                        ),
                                        CustomText(text: '6'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomImage(imageSrc: AppImages.share),
                                        CustomText(text: '05'),
                                      ],
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
          ),
        ],
      ),
    );
  }
}
