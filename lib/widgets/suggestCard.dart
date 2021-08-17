import 'package:bewlinfirstappclone/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
                child:  Image.asset(
                vikram,
                height: 250,
                fit: BoxFit.cover,
              ),
              ),
              ),
        ],
      ),
    );
  }
}
