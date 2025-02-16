import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/configs/app_typography.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      style: AppTypography.normalRegular(
        color: AppTheme.text3,
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 17,
            right: 16,
          ), // Adjust spacing here
          child: SvgPicture.asset(
            AppIcons.search,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 18,
        ),
        hintText: 'Search Files',
        hintStyle: AppTypography.normalRegular(
          color: AppTheme.text3,
        ),

        // Border when NOT focused
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),

        // Border when focused
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: AppTheme.text3,
            width: 1.5,
          ),
        ),

        // Background color
        filled: true,
        fillColor: AppTheme.white,
      ),
    );
  }
}
