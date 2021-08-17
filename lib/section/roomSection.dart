import 'package:bewlinfirstappclone/assets.dart';
import 'package:bewlinfirstappclone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage:dhanush2,displayStatus: true),
          Avatar(displayImage:kunjako,displayStatus: true),
          Avatar(displayImage:mohanlal,displayStatus: true),
          Avatar(displayImage:nivinpoly,displayStatus: true),
            Avatar(displayImage:dhanush2,displayStatus: true),
          Avatar(displayImage:kunjako,displayStatus: true),
          Avatar(displayImage:mohanlal,displayStatus: true),
          Avatar(displayImage:nivinpoly,displayStatus: true),
           
        ],
      ),
    );
    
  }
   Widget createRoomButton(){
      return Container(
        padding: EdgeInsets.only(left: 5,right: 5),
      child:   OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              
              shape: StadiumBorder(),
                side:BorderSide(color: Colors.blue,
                width: 2),
               ),
              icon: Icon(Icons.video_call, color: Colors.purple),
              label: Text(
                "create \nroom",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                print("create \n room");
              },
            
              ),
      );
      
                
}
}