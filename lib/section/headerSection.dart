import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final Widget  buttonOne;
  final Widget buttonTwo;
  final Widget  buttonThree;
  HeaderSection({
    required this.buttonOne,
    required this.buttonThree,
    required this.buttonTwo,
  });

  

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
