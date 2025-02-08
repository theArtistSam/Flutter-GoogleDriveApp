import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_drive/configs/_string_ext.dart';
import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/configs/app_images.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/configs/app_typography.dart';
import 'package:g_drive/router/routes.dart';
import 'package:g_drive/screens/home/data/drawer_data.dart';

import '../home/models/drawer_item.dart';

import 'package:g_drive/screens/home/data/folder_data.dart';
import 'package:g_drive/widgets/app_textfield.dart';

part 'widgets/_body.dart';
part 'widgets/_storage_card.dart';
part 'widgets/_folder.dart';
part 'widgets/_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Drawer();
  }
}
