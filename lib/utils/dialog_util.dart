import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graz_project/view/widgets/like_popup.dart';

class DialogUtil {
  void ShowCircleIndicator() {
    Get.dialog(Center(child: CircularProgressIndicator()));
  }

  void ShowErrorDialog({String? message}) {
    Get.defaultDialog(
      title: "Alert",
      content: Text(message ?? "Something Went Wrong"),
    );
  }

  void showLikePopUp() {
    Get.dialog(LikePopUp(), barrierColor: Colors.transparent);
  }
}
