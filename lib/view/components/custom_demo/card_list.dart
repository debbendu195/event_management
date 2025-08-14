import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../../screen/host/home_screen/widget/custom_event_upcoming.dart';
import '../custom_button/custom_button.dart';
import '../custom_gradient/custom_gradient.dart';
import '../custom_image/custom_image.dart';
import '../custom_nav_bar/navbar.dart';
import '../custom_text/custom_text.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 80,
                ),
                child: Column(
                  children: List.generate(2, (value) {
                    return CustomEventUpcoming()
                    ;
                  }
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavBar(currentIndex: 0),
      ),
    );
  }
}
