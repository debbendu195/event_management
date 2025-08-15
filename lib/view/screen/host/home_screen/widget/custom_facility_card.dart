import 'package:flutter/material.dart';
import 'package:time/utils/app_colors/app_colors.dart';
import 'package:time/utils/app_images/app_images.dart';

import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class CustomFacilityCard extends StatefulWidget {
  final String title;
  final String description;
  final Widget? preicon;
  final Widget? posticonUp; // custom posticon for expanded state
  final Widget? posticonDown; // custom posticon for collapsed state

  const CustomFacilityCard({
    super.key,
    this.title = "",
    this.description = "",
    this.preicon,
    this.posticonUp,
    this.posticonDown,
  });

  @override
  State<CustomFacilityCard> createState() => _CustomFacilityCardState();
}

class _CustomFacilityCardState extends State<CustomFacilityCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white_10,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                color: AppColors.white_10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        widget.preicon ?? const SizedBox(),
                        if (widget.preicon != null) const SizedBox(width: 12),
                        CustomText(
                          text: widget.title,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ],
                    ),
                    //
                    widget.posticonUp != null && widget.posticonDown != null
                        ? (isExpanded ? widget.posticonUp! : widget.posticonDown!)
                        : CustomImage(
                      imageSrc: isExpanded
                          ? AppImages.uparrow
                          : AppImages.downarrow,
                    ),
                  ],
                ),
              ),
            ),

            // Expanded Content
            if (isExpanded)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top:3),
                    child: Container(
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
                    /*CustomText(
                      text: widget.description,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.8),
                      maxLines: 10,
                      textAlign: TextAlign.start,
                    ),*/
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}