import 'package:flutter/material.dart';
import 'package:g_drive/router/router.dart';
import 'package:g_drive/router/routes.dart';
import 'package:g_drive/screens/Home/home.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final List<NavigatorObserver> observers = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      navigatorObservers: [
        ...observers,
        NavigationHistoryObserver(),
      ],
      initialRoute: AppRoutes.home,
      builder: (context, child) {
        return child!;
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      routes: appRoutes,
    );
  }
}
