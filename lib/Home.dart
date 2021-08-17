import 'package:bewlinfirstappclone/assets.dart';
import 'package:bewlinfirstappclone/section/headerSection.dart';
import 'package:bewlinfirstappclone/section/postcard.dart';
import 'package:bewlinfirstappclone/section/roomSection.dart';
import 'package:bewlinfirstappclone/section/statusSection.dart';
import 'package:bewlinfirstappclone/section/storySection.dart';
import 'package:bewlinfirstappclone/section/suggestionSection.dart';
import 'package:bewlinfirstappclone/widgets/BarButton.dart';
import 'package:bewlinfirstappclone/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
     Widget thinDivider = Divider(
              thickness: 1,
              color: Colors.grey[300],
            );
     Widget thickDivider = Divider(
              thickness: 10,
              color: Colors.grey[300],
            );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
           CirCularButton(buttonIcon: Icons.search, 
           buttonAction: (){
             print("belwin");
           }),
            CirCularButton(buttonIcon: Icons.chat, 
           buttonAction: (){
             print("belwin");
           })
          ],
        ),
        body:ListView(  
          children: [
            StatusSection(),
            Divider(
              thickness: 3,
              color: Colors.grey[300],
            ),
            HeaderSection(
              buttonOne: headerButton(buttonText: "live",
               buttonIcon: Icons.video_call, 
               buttonColor: Colors.red,
                buttonAction: (){print("go live");}
              ),
               buttonTwo: headerButton(buttonText: "take photo",
               buttonIcon: Icons.photo_album, 
               buttonColor: Colors.green,
                buttonAction: (){print("go amn");}
                ),
                 buttonThree: headerButton(buttonText: "Rooms",
               buttonIcon: Icons.video_call, 
               buttonColor: Colors.purple,
                buttonAction: (){print("go live");}
                ),
            ),
           thinDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            name:"mohanlal",
            avatar: mohanlal,
            published: "5 h",
            postImage: mohanlal,
            postTitle: "happy Diwaly",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
           PostCard(
            name:"vikram",
            avatar: vikram,
            published: "5 h",
            postImage: vikram,
            postTitle: "",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
           PostCard(
            name:"nivin",
            avatar: nivinpoly,
            published: "5 h",
            postImage: nivinpoly,
            postTitle: "",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
          SuggestionSection(),
          thickDivider,
           PostCard(
            name:"Ragnar",
            avatar: travisfimmel,
            published: "5 h",
            postImage: travisfimmel,
            postTitle: "",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
           PostCard(
            name:"prithviraj",
            avatar: prithiviraj,
            published: "5 h",
            postImage: prithiviraj,
            postTitle: "happy",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
            PostCard(
            name:"vineeth",
            avatar: vineeth,
            published: "5 h",
            postImage: vineeth,
            postTitle: "happy",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
            PostCard(
            name:"kunjako",
            avatar: kunjako,
            published: "5 h",
            postImage: kunjako,
            postTitle: "happy",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,


          ],
        ) ,
      ),
    );
  }
}
