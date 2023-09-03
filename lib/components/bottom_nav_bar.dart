// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTapChange;
  MyBottomNavBar({super.key, required this.onTapChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTapChange!(value),
        color: Colors.grey.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey.shade700,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          const GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          const GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
