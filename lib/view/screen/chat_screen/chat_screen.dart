import 'package:flutter/material.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../utils/app_colors/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
          CustomRoyelAppbar(
            titleName: 'Summer Music Festival',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    SizedBox(width: 5, height: 20,),
                    Container(
                      width: 230,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Column(
                        children: [
                          Text('Sarah Miller'),
                          Text('That sounds exciting! 🎉 Which festival are you going to?')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Adjust size
                      backgroundImage: AssetImage('assets/images/img.jpg'),
                    ),
                    SizedBox(width: 5, height: 20,),
                    Container(
                      width: 230,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Column(
                        children: [
                          Text('Sarah Miller'),
                          Text('That sounds exciting! 🎉 Which festival are you going to?')
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
