import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../utils/app_colors/app_colors.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: 'Event Create'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomFormCard(
                title: 'Event Title',
                controller: TextEditingController(),
                hintText: 'Give your event a name',
              ),
              CustomText(
                text: 'Description',
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.w,
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CustomTextField(hintText: 'Describe Your Event'),
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Upload Cover Image',
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.w,
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
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
              SizedBox(height: 18),
              Row(
                children: [
                  Container(
                    height: 58,
                    width: 175,
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
                          CustomImage(imageSrc: AppImages.calendar),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 58,
                    width: 175,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(8),
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
              SizedBox(height: 10),
              CustomText(text: 'End Time', color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.w,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CustomImage(imageSrc: AppImages.clock),
              ),
              SizedBox(height: 10),
              CustomText(text: 'Location',color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.w,),
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
                    children: [
                      CustomImage(imageSrc: AppImages.map),
                      CustomText(text: 'Enter Location'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              CustomText(text: 'Event Type', color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.w,),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey_12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('data',),
                    Text('data',),
                    Text('data',),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey_12,
                  borderRadius: BorderRadius.circular(8),
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
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomFormCard(title: 'Age Filter', controller: TextEditingController(), hintText: 'No Age Restriction',),
                      CustomFormCard(title: 'Max Capacity', controller: TextEditingController(), hintText: 'No Age Restriction',),
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: 'mm/dd/yyyy'),
                              CustomImage(imageSrc: AppImages.calendar),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey_12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.gellary),
                          SizedBox(width: 10,),
                          CustomText(text: 'Media & Social', color: AppColors.black,
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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
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
                  color: AppColors.grey_12,
                  borderRadius: BorderRadius.circular(8),
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
                          CustomText(text: 'Interactivity', color: AppColors.black,
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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(8),
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
                  color: AppColors.grey_12,
                  borderRadius: BorderRadius.circular(8),
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
                          CustomText(text: 'Interactivity', color: AppColors.black,
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
                height: 120,
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(onTap: (){}, title: 'Publish Now', fillColor: AppColors.green_01, borderRadius: 30,),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
