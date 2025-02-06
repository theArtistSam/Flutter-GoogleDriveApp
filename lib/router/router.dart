import 'package:flutter/material.dart';
import 'package:g_drive/router/routes.dart';
import 'package:g_drive/screens/details/details.dart';
import 'package:g_drive/screens/folder/folder.dart';
import 'package:g_drive/screens/home/home.dart';

final Map<String, Widget Function(dynamic)> appRoutes = {
  AppRoutes.details: (_) => const DetailsScreen(),
  AppRoutes.home: (_) => const HomeScreen(),
  AppRoutes.folder: (_) => const FolderScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.details:
      return FadeRoute(
        settings: settings,
        child: const DetailsScreen(),
      );
    case AppRoutes.home:
      return FadeRoute(
        settings: settings,
        child: const HomeScreen(),
      );
    case AppRoutes.folder:
      return FadeRoute(
        settings: settings,
        child: const FolderScreen(),
      );

    default:
      return null;
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  FadeRoute({required this.child, required this.settings})
      : super(
          settings: settings,
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) {
            return FadeTransition(
              opacity: ani1,
              child: child,
            );
          },
        );
}
