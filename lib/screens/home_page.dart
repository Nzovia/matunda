import 'package:flutter/material.dart';
import 'package:matunda/constants/colors.dart';

import '../widgets/custom_appbar_bart.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:  [
            CustomizedAppBar(
              Icons.arrow_back_ios,
              Icons.search_outlined
            ),

            ],
          )
        ],
      ),
    );
  }
}
