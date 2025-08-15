import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';
import 'package:time/view/screen/host/home_screen/widget/custom_facility_card.dart';
import 'package:time/view/screen/host/home_screen/widget/custom_menu_button.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppColors.grey_13,
                    shape: BoxShape.circle,
                  ),
                  child: BackButton(color: AppColors.black),
                ),
                title: CustomText(
                  text: "Create Event",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
              CustomText(
                text: 'Event Title',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              SizedBox(height: 10),
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomTextField(hintText: 'Give your name'),
              ),
              SizedBox(height: 29),
              CustomText(
                text: 'Description',
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.w,
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomTextField(hintText: 'Describe Your Event'),
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Upload Cover Image',
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.w,
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(imageSrc: AppImages.upload),
                    CustomText(
                      text: 'Upload event image',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.black_06,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),
              CustomText(
                text: 'Date',
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.w,
              ),
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'mm/dd/yyyy'),
                      CustomImage(imageSrc: AppImages.calendar, imageColor: AppColors.green_01,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Start Time',
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.w,
                  ),
                  CustomText(
                    text: 'End Time',
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.w,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 58,
                    width: 186,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Clock'),
                          CustomImage(imageSrc: AppImages.clock),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 58,
                    width: 186,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Clock'),
                          CustomImage(imageSrc: AppImages.clock),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

             /* SizedBox(height: 10),
              CustomText(text: 'Event Type', color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.w,),
              SizedBox(height: 10),
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomMenuButton(
                        items: ['Event 1', 'Event 2', 'Event 3', 'Event 4'],
                        hint: 'Choose Event Type Event',
                      ),
                    ],
                  ),
                ),
              ),*/

              SizedBox(height: 20,),
              CustomText(text: 'Venue Facilities', fontWeight: FontWeight.w500, fontSize: 16,),
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomMenuButton(
                        items: ['Event 1', 'Event 2', 'Event 3', 'Event 4'],
                        hint: '+ Add a Venue Facility',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomText(text: 'Event Category', fontWeight: FontWeight.w500, fontSize: 16,),
              SizedBox(height: 10,),
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomMenuButton(
                        items: ['Parties', 'Food Festivals', 'Neighborhood Event', 'Family-Friendly', 'Sports', 'Concerts', 'Custom'],
                        hint: 'Choose Event Category',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomText(text: 'Event Features', fontWeight: FontWeight.w500, fontSize: 16,),
              SizedBox(height: 10,),
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomMenuButton(
                        items: ['Pet Friendly', 'ASL Interpreter', 'wheelchair accessible', 'Indoor', 'Outdoor'],
                        hint: 'Choose Event Features',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.span),
                          SizedBox(width: 10,),
                          CustomText(text: 'Audience & Settings', color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.w,),
                        ],
                      ),
                      CustomImage(imageSrc: AppImages.frame),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Age Filter', fontSize: 12, fontWeight: FontWeight.w500, textAlign: TextAlign.start,),
                      CustomMenuButton(
                            items: ['18+', '21+'],
                            hint: 'Choose Event Category',
                          ),
                      SizedBox(height: 20,),
                      CustomFormCard(title: 'Max Capacity', fontSize: 12, controller: TextEditingController(), hintText: 'No Age Restriction',),
                      CustomText(text: 'Visibility'),
                      Row(
                        children: [
                          CustomText(text: 'Public'),
                          SizedBox(width: 50,),
                          CustomText(text: 'Private'),
                        ],
                      ),
                      CustomText(text: 'RSVP Deadline'),
                      Container(
                        height: 58,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: 'mm/dd/yyyy', color: AppColors.black,),
                              CustomImage(imageSrc: AppImages.date, imageColor: AppColors.black,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomFacilityCard(preicon: CustomImage(imageSrc: AppImages.gellary), title: 'Media & Social',),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.bell),
                          SizedBox(width: 10,),
                          CustomText(text: 'Notification', color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.w,),
                        ],
                      ),
                      CustomImage(imageSrc: AppImages.frame),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(text: 'Allow photo/video uploads'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(text: 'Allow photo/video uploads'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(text: 'Allow photo/video uploads'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(text: 'Allow photo/video uploads'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.ticket),
                          SizedBox(width: 10,),
                          CustomText(text: 'Ticketing', color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.w,),
                        ],
                      ),
                      CustomImage(imageSrc: AppImages.frame),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Ticket Price'),
                      Row(
                        children: [
                          CustomText(text: 'Free'),
                          SizedBox(width: 50,),
                          CustomText(text: 'Paid'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          CustomText(text: 'Allow photo/video uploads'),
                        ],
                      ),
                      Center(
                        child: Container(
                          height: 35,
                          width: 311,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(child: CustomText(text: '\$ price', textAlign: TextAlign.start,)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Discount'),
                      Row(
                        children: [
                          Container(
                            height: 58,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: CustomText(text: 'Clock', textAlign: TextAlign.start,),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 58,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: CustomText(text: 'Clock', textAlign: TextAlign.start,),
                            ),
                          ),
                        ],
                      ),
                      CustomText(text: 'Discount'),
                      Row(
                        children: [
                          Container(
                            height: 58,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: CustomText(text: 'Clock', textAlign: TextAlign.start,),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 58,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: CustomText(text: 'Clock', textAlign: TextAlign.start,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 60,),
              CustomButton(onTap: (){}, title: 'Show time', fontSize: 16, fontWeight: FontWeight.w600, fillColor: AppColors.green_01, borderRadius: 30,),
              SizedBox(height: 30,),





            ],
          ),
        ),
      ),
    );
  }
}
