import 'package:flutter/material.dart';

import '../../screen/host/home_screen/widget/custom_event_upcoming.dart';
import '../custom_gradient/custom_gradient.dart';
import '../custom_nav_bar/navbar.dart';

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
