import 'package:flutter/material.dart';
import 'package:g_drive/configs/app_theme.dart';

class FolderItem {
  final String name;
  final String date;
  final Color primary;
  final Color secondary;
  final double size;

  FolderItem({
    required this.name,
    this.date = "20 Dec 2020",
    this.primary = AppTheme.brandPrimary,
    this.secondary = AppTheme.brandPrimary2,
    this.size = 0,
  });
}
