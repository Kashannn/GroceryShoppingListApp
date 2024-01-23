// bottom_navigation_bar.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavigationBarWidget({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/List.svg',
            width: 32,
            height: 32,
          ),
          label: "Lists",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Trash_icon.svg',
            width: 32,
            height: 32,
          ),
          label: "Trash",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Setting.svg',
            width: 32,
            height: 32,
          ),
          label: "Setting",
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
