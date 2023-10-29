import 'package:flutter/material.dart';
import 'package:my_app/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => CartScreen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Cart Page'),
        bottomNavigationBar: CustomNavBar());
  }
}
