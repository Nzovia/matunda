import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;

  CustomizedAppBar(this.leftIcon, this.rightIcon,
      {super.key, this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onDoubleTap:leftCallback != null? () => leftCallback!(): null,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
              child: Icon(leftIcon),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
            ),
            child: Icon(rightIcon),
          )

        ],
      ),
    );
  }
}
