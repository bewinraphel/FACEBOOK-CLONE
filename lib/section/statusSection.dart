import 'package:bewlinfirstappclone/assets.dart';
import 'package:bewlinfirstappclone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dhanush,displayStatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintText:"whats on ur mind",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
           ),
      ),
    );
  }
}
