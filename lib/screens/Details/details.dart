import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_drive/configs/_string_ext.dart';
import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/configs/app_typography.dart';
import 'package:g_drive/router/routes.dart';
import 'package:g_drive/screens/Details/data/storage_data.dart';
import 'package:g_drive/screens/Home/home.dart';
import 'package:pie_chart/pie_chart.dart';

part 'widgets/_body.dart';
part 'widgets/_storage_tile.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
