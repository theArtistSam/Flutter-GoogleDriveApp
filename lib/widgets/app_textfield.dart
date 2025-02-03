import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/configs/app_typography.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          children: [
            SvgPicture.asset(
              AppIcons.search,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  print('Text changed: $value');
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  hintText: 'Search Files',
                  border: InputBorder.none,
                  hintStyle: AppTypography.normalRegular(
                    color: AppTheme.text3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
