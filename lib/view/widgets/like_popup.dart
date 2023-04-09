import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LikePopUp extends StatefulWidget {
  const LikePopUp({super.key});

  @override
  State<LikePopUp> createState() => _LikePopUpState();
}

class _LikePopUpState extends State<LikePopUp> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 800),
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (BuildContext context, dynamic value, Widget? child) {
        if (value < 0.05) {
          Get.back();
        }
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Opacity(
            opacity: value,
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 200,
            ),
          ),
        );
      },
    );
  }
}
