import 'package:flutter/material.dart';
import 'package:flutter4_login_page/theme/appcolors/app_colors.dart';

import '../theme/appFonts/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.controller,
    required this.extra,
    this.obscureText = false,
    this.onChanged,
    this.errorText,
    this.helperText,
    this.suffix,
    this.maxlength,
     this.prefixIcon,
  });
  final String text;
  final String? helperText;
  final String extra;
  final String hintText;
  final Icon? prefixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffix;
  final String? errorText;
  final Function(String)? onChanged;
  final int? maxlength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppFonts.w400s20.copyWith(color: AppColors.white),
            ),
            Text(
              extra,
              style: AppFonts.w400s20
                  .copyWith(color: const Color.fromARGB(255, 255, 0, 0)),
            ),
          ],
        ),
        SizedBox(
          height: 70,
          child: TextField(
            onChanged: onChanged,
            obscureText: obscureText,
            controller: controller,
            maxLength: maxlength,
            decoration: InputDecoration(
              errorText: errorText,
              errorStyle: AppFonts.w400s14.copyWith(color: const Color.fromARGB(255, 253, 0, 0)),
              suffix: suffix,
              prefixIcon:prefixIcon ,
              filled: true,
              fillColor: Colors.white,
              helperText: helperText,
              helperStyle: const TextStyle(color: AppColors.lightGrey),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: hintText,
              hintStyle: AppFonts.w400s16,
            ),
          ),
        ),
      ],
    );
  }
}
