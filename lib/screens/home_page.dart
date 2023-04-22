import 'package:flutter/material.dart';

const _backgroundColor = Color(0XFFF6F5F2);

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: _backgroundColor,
            child: Row(
              children: const [
                BackButton(
                  color: Colors.black,
                ),
                SizedBox(width: 10,),
                Expanded(child: Text(
                  "Vegetables and Fruits",
                  style: TextStyle(
                    color: Colors.black
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
