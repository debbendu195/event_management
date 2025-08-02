import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_image/custom_image.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';
import '../../components/custom_text_field/custom_text_field.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_images/app_images.dart';

class PostStory extends StatelessWidget {
  const PostStory({super.key});

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
          Stack(children: [
            CustomImage(imageSrc: AppImages.post, boxFit: BoxFit.cover, height: 900, width: double.infinity,),
            Positioned(child: Text('data'))
          ]),
        ],
      ),
    );
  }
}
