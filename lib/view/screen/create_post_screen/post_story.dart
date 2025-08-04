import 'package:flutter/material.dart';
import '../../../utils/app_images/app_images.dart';
import '../../components/custom_image/custom_image.dart';

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
