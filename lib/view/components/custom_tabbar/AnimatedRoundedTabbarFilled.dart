import 'package:flutter/material.dart';

class AnimatedRoundedTabbarFilled extends StatefulWidget {
  final double borderRadius;
  const AnimatedRoundedTabbarFilled({super.key, this.borderRadius = 30});

  @override
  State<AnimatedRoundedTabbarFilled> createState() =>
      _AnimatedRoundedTabbarFilledState();
}

class _AnimatedRoundedTabbarFilledState
    extends State<AnimatedRoundedTabbarFilled> {
  late List<bool> isHoverList = [false, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
            (index) {
          return InkWell(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            onHover: (value) {
              setState(() {
                isHoverList[index] = value;
              });
            },
            child: AnimatedContainer(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: _currentIndex == index || isHoverList[index]
                    ? const Color(0xFF00BAAB)
                    : null,
              ),
              child: Text(
                ['Home', 'Contact', 'About'][index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}