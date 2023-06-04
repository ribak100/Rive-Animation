import 'package:flutter/material.dart';

class AnimatedSideBar extends StatelessWidget {
  const AnimatedSideBar({
    Key? key, required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 300),
      height: 55,
      width: isActive ? 280 : 0,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: const Color(0xFF6792FF), borderRadius: BorderRadius.circular(15)),);
  }
}
