import 'package:flutter/material.dart';
import 'package:my_app/widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => CatalogScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Ecommerce App'),
        bottomNavigationBar: CustomNavBar());
  }
}
