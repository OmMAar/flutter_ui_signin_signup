import 'package:flutter/material.dart';
import 'package:learn_flutter_auth_design/constants/app_colors.dart';

class AppButtonWidget extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? minWidth;
  final double? height;
  final double? radius;
  final String? textStr;

  const AppButtonWidget(
      {Key? key,
      required this.onPressed,
      this.height,
      this.textColor,
      this.backgroundColor,
      this.radius,
      this.textStr,
      this.minWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor??AppColors.primaryColor,
      minWidth: minWidth,
      height: height??45,
      textColor: textColor??AppColors.appWhite,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0.0)),
      child: Text(
        textStr ?? "",
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
