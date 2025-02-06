import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g_drive/configs/_string_ext.dart';
import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:g_drive/configs/app_typography.dart';
import 'package:g_drive/screens/Home/data/folder_data.dart';
import 'package:g_drive/screens/details/details.dart';
import 'package:g_drive/screens/folder/data/folder_list_data.dart';
import 'package:g_drive/screens/home/models/folder_item.dart';
part 'widgets/_body.dart';
part 'widgets/_folder_list_tile.dart';

class FolderScreen extends StatelessWidget {
  const FolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final FolderItem? folder = args?['folder'] as FolderItem?;

    return _Body(
      folder: folder,
    );
  }
}
