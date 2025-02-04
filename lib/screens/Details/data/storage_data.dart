import 'package:flutter/material.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/screens/Details/models/storage_type.dart';

List<StorageType> items = [
  StorageType(name: "Images", value: 3.0, color: AppTheme.brandPrimary),
  StorageType(name: "Videos", value: 2.5, color: AppTheme.brandSecondary),
  StorageType(name: "Documents", value: 2.0, color: AppTheme.brandTertiary),
  StorageType(name: "Music", value: 1.5, color: AppTheme.redAccent1),
  StorageType(name: "Applications", value: 1.0, color: AppTheme.brandPrimary2),
];

List<Color> itemColors = items.map((item) => item.color).toList();
Map<String, double> itemsMap = {
  for (var item in items) item.name: item.value,
};
