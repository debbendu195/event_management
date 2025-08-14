import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../widget/custom_event_upcoming.dart';
import '../widget/custom_live_comment.dart';
import '../widget/custom_live_details.dart';

class GroupEventScreen extends StatelessWidget {
  const GroupEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              leading: BackButton(color: AppColors.black),
            ),
            body:  SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        // card ing
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.r),
                          ),
                          child: CustomImage(
                            imageSrc: AppImages.card,
                            fit: BoxFit.cover,
                            height: 150.h,
                            width: double.infinity,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    text: 'Live Jazz Night',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    bottom: 4,
                                  ),
                                ],
                              ),

                              CustomText(
                                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididuntut laboore at dolore magna aliqua',
                                maxLines: 3,
                                textAlign: TextAlign.start,
                                bottom: 8,
                              ),
                              // public group
                              Row(
                                children: [
                                  CustomText(text: 'Public Group',fontSize: 14,),
                                  SizedBox(width: 40),
                                  CustomImage(imageSrc: AppImages.users),
                                  CustomText(text: '4k members',fontSize: 14,left: 5,),
                                ],
                              ),
                              SizedBox(height: 11.03),
                              // joined+Invited+18+
                              Row(
                                children: [
                                  //joined
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 48,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          color: AppColors.white4,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                  ),
                                  SizedBox(width: 25),

                                  Expanded(
                                    child: GestureDetector(
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
                                  ),

                                  SizedBox(width: 25),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 48,
                                      width: 62,
                                      decoration: BoxDecoration(
                                        color: AppColors.white4,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Center(
                                        child: CustomText(
                                          text: '18+',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13),

                              //Venue
                              GestureDetector(
                                onTap: () {
                                  // Get.toNamed(AppRoutes.venueFacility);
                                },
                                child: Container(
                                  height: 48,
                                  width: 121,
                                  decoration: BoxDecoration(
                                    color: AppColors.white4,
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: CustomText(
                                    text: 'Venue Facility',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),

                                ),
                              ),

                              SizedBox(height: 14.4),
                              Divider(thickness: 1,color: AppColors.green_01,),
                              SizedBox(height: 16),
                              // write something

                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 20, // Adjust size
                                    backgroundImage: AssetImage(
                                      'assets/images/img.jpg',
                                    ),
                                  ),
                                  // CustomFormCard(title: '', controller: TextEditingController()),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: CustomTextField(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.createPostScreen,);
                                      },
                                      hintText: 'Write Something...',
                                      height: 28,
                                      fontSize: 12,
                                      color: Colors.black,
                                      fillColor: Colors.transparent,
                                      fieldBorderColor: Colors.black,
                                      readOnly: true,
                                      fieldBorderRadius: 15,

                                    ),
                                  ),
                                  SizedBox(width: 22,),
                                  InkWell(
                                    onTap: () {
                                      // Get.toNamed(AppRoutes.createPostScreen);
                                    },
                                    child: CustomImage(
                                      imageSrc: AppImages.gellary,

                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 39.21),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImage(imageSrc: AppImages.live),
                                  SizedBox(width: 5),
                                  CustomText(
                                    text: 'Live Comments',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Spacer(),
                                  CustomImage(
                                    imageSrc: AppImages.clock,
                                    height: 22.6,
                                    width: 22.6,
                                  ),
                                  CustomText(text: '01:20 Hours', left: 5),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 37.83,
                                    width: 37.83,
                                    decoration: BoxDecoration(
                                      color: Colors.white, // Optional background color
                                      border: Border.all(
                                        color: AppColors.green, // Border color
                                        width: 4, // Border width
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        30,
                                      ), // Optional rounded corners
                                    ),
                                    child: Center(
                                      child: CustomText(
                                        text: 'Good',
                                        fontSize: 8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.09),
                              Divider(thickness: 1, color: AppColors.black),

                              ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                itemCount: 4,
                                separatorBuilder: (_, __) => const SizedBox(height: 20),
                                itemBuilder: (context, index) {
                                  return CustomLiveComment(
                                    title2: '01:31',
                                    subtitle: "I've been to their previous events. "
                                        "The music is always top notch!",
                                  );
                                },
                              ),

                              SizedBox(height: 20),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            AppImages.img,
                                          ), // Replace with your image path
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                          color: AppColors.white, // You can use AppColors
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                    CustomTextField(
                                      height: 45,
                                      weight: 180,
                                      fillColor: AppColors.green4,
                                      color: Colors.white,
                                      hintText: 'Write a comment',
                                      fieldBorderRadius: 15,
                                    ),
                                    SizedBox(width: 10),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: AppColors.green_01,
                                          ),
                                          child: CustomImage(imageSrc: AppImages.telegram, imageColor: Colors.white,),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 30,),

                              Column(
                                children: List.generate(2, (value) {
                                  return Column(
                                    children: [
                                      CustomLiveDetails(),
                                      if(value != 1)
                                      Divider(color: Colors.black, thickness: 1,)
                                    ],
                                  );
                                }),
                              ),

                              SizedBox(height: 188),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );

  }
}

    /*Scaffold(
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
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: BackButton(color: AppColors.black),
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
    );*/

