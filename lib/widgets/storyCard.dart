
import 'package:bewlinfirstappclone/widgets/BarButton.dart';
import 'package:bewlinfirstappclone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
final String story;
final String avatar;
final bool createStoryStatus;
final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story, 
    required this.avatar,
     this.createStoryStatus =false,
  this.displayBorder=false, 
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
         
             child: createStoryStatus ? CirCularButton(
              buttonIcon: Icons.add,
              buttonAction: () {
                print("click");
              },
              iconColor: Colors.blue,
            ): Avatar(displayImage:avatar, displayStatus: false,diasplayBorder:displayBorder ,
            width: 35,
            height:35,
            ),
         
          ),
          Positioned(
            bottom: 5,
            left: 10,
            // ignore: unnecessary_null_comparison
            child: Text(labelText != null? labelText:"N/A",style: TextStyle(color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
