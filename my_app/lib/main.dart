import 'package:flutter/material.dart';
import 'package:my_app/config/app_router.dart';
import 'package:my_app/config/theme.dart';
import 'screens/screens.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: HomeScreen(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
