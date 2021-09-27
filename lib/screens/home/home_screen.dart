import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/animations/custom_animations.dart';
import 'package:flutter_application_1/screens/home/widgets/category_widget.dart';

import 'widgets/searchBar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: CustomAnimation(
        home: Column(
          children: [
            Categories(),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
