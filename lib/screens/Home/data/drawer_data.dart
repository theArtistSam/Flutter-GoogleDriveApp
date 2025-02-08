import 'package:g_drive/configs/app_icons.dart';
import 'package:g_drive/screens/home/models/drawer_item.dart';

List<DrawerItem> drawerItems = [
  const DrawerItem(
    icon: AppIcons.clock,
    label: 'Recent',
    route: '/recent',
  ),
  const DrawerItem(
    icon: AppIcons.star,
    label: 'Favorite',
    route: '/favorite',
  ),
  const DrawerItem(
    icon: AppIcons.trash,
    label: 'Trash',
    route: '/trash',
  ),
  const DrawerItem(
    icon: AppIcons.bell,
    label: 'Notifications',
    route: '/notifications',
  ),
  const DrawerItem(
    icon: AppIcons.uploadCloud,
    label: 'Backups',
    route: '/backups',
  ),
  const DrawerItem(
    icon: AppIcons.settings,
    label: 'Settings',
    route: '/help',
  ),
  const DrawerItem(
    icon: AppIcons.helpCircle,
    label: 'Help & Feedback',
    route: '/help',
  ),
  // Add more items as needed
];
