import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/model/model.dart';
import 'package:my_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => HomeScreen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Homepage'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'RECOMMENDED',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 28),
                )),
          )
        ],
      ),
    );
  }
}
