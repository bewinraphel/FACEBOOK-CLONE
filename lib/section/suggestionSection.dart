
import 'package:bewlinfirstappclone/widgets/suggestCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionSection extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("people you may know"),
            trailing: IconButton(onPressed: (){
                        print("more cliked");
            },
            icon: Icon(Icons.more_horiz,color:Colors.grey[700],),
            ),
          ),
          Container(
            height: 340,
            child: ListView(
               scrollDirection:Axis.horizontal,
              children: [
             SuggestionCard()
            ],),
          )
        ],
      ),
    );
  }
}