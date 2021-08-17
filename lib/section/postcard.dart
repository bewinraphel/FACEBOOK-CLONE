

import 'package:bewlinfirstappclone/section/headerSection.dart';
import 'package:bewlinfirstappclone/widgets/avatar.dart';
import 'package:bewlinfirstappclone/widgets/blueTick.dart';
import 'package:bewlinfirstappclone/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String published;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({required this.avatar
  , required this.name,
   required this.published, 
   required this.postTitle, 
   required this.postImage,
   this.showBlueTick=false,
   required this.likeCount,
   required this.shareCount,
   required this.commentCount,
   
   });

  get buttonText => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         postCardHeader(),
       titleSection(),
       imageSection(),
       footerSection(),
       Divider(
         color: Colors.grey[300],
       ),
       HeaderSection(
         buttonOne: headerButton(buttonText:" Like", 
         buttonIcon: Icons.thumb_up_alt_outlined,
           
          buttonAction: (){
            print("liked");
          }, buttonColor: Colors.grey,),
         buttonTwo: headerButton(buttonText: "Comments", 
         buttonIcon: Icons.message_outlined,
          buttonAction: (){
            print("comment on ");
          }, buttonColor: Colors.grey),
         buttonThree: headerButton( buttonText: "share", 
         buttonIcon: Icons.thumb_up_alt_outlined,
           buttonAction: (){
            print("liked");
          }, buttonColor: Colors.grey),
       ),
        ],
      ),
    );
  }








Widget imageSection(){
  return Container(
    padding: EdgeInsets.only(top: 5,bottom: 1),
    child: Image.asset(postImage,fit: BoxFit.fitWidth,),
    
  );
}

















     Widget  postCardHeader(){
         return    ListTile(
            leading: Avatar(displayImage: avatar, displayStatus: false),
            title: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 10),
                showBlueTick ? BlueTick() : SizedBox(),
              ],
            ),
            subtitle: Row(
              children: [
                // ignore: unnecessary_null_comparison
                Text(published == null ? " ": published),
                SizedBox(width: 15),
                Icon(Icons.public,color:Colors.grey[700] ,size: 15,)
              ],
            ),
            trailing: IconButton(onPressed: (){
              print("poepwdioej");
            }, icon: Icon(Icons.more_horiz),
          ),
          );
          }
          Widget titleSection(){
            // ignore: unnecessary_null_comparison
            return postTitle != null && postTitle !="" ? Container(
              // ignore: unnecessary_null_comparison
              child: Text(postTitle ==  null ?"" :postTitle,style: TextStyle(color: Colors.black,
              fontSize: 16,
              ),
              ),
            ) : SizedBox();
          }
Widget footerSection(){
  return Container(
    height: 50,
    padding: EdgeInsets.only(
      left: 10,
      right: 10
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
        child: Row(
          children: [
              Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle
          ),
          child:Icon(Icons.thumb_up,color: Colors.white,size: 10,) ,
        ),
        
displayText(label:likeCount ),
          ],
        ),
      ),
      Container(
        child: Row(
          children: [
           displayText(label: commentCount),
           SizedBox(width: 1),
           displayText(label:"comments" ),
           SizedBox(width: 9),
           displayText(label: shareCount),
           SizedBox(width: 1),
           displayText(label: "shares"),
           Avatar(displayImage: avatar,
            displayStatus: false,
            width: 20,
            height: 25,
            
            ),
               IconButton(  
              icon: Icon(Icons.arrow_drop_down,
              color: Colors.grey[700],), 
              onPressed: () {  },
            ),

          ],
        ),
      )
      ],
    ),
  );
}
Widget displayText({required String label}){
// ignore: unnecessary_null_comparison
return  Text(label == null ? "": label,style: TextStyle(color: Colors.grey[700]),);
}

}
