import 'package:flutter/material.dart';

Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required Color buttonColor,
    required void Function() buttonAction,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }