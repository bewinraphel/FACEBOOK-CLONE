import 'package:bewlinfirstappclone/assets.dart';
import 'package:bewlinfirstappclone/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StorySection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
          scrollDirection:Axis.horizontal,
        children: [
      StoryCard(
        labelText:"Addd to story" ,
        avatar: dhanush,
        story: dhanush2,
      
      ),
      StoryCard(
        labelText:"kunchako" ,
        avatar: kunjako,
        story: two,
        displayBorder: true,
   
      ),
  StoryCard(
        labelText:"mohanlal" ,
        avatar: mohanlal,
        story: three,
        displayBorder: true,
     
      ),
      StoryCard(
        labelText:"vikkram" ,
        avatar: vikram,
        story: four,
      
      ),
      StoryCard(
        labelText:"ragnar" ,
        avatar: travisfimmel,
        story: travisfimmel,
      
      ),
        StoryCard(
        labelText:"ragnar" ,
        avatar: travisfimmel,
        story: prithiviraj,
      
      ),
    StoryCard(
        labelText:"ragnar" ,
        avatar: vikram,
        story: vineeth,
      
      ),
    StoryCard(
        labelText:"ragnar" ,
        avatar: vineeth,
        story: four,
      
      ),
    StoryCard(
        labelText:"ragnar" ,
        avatar: prithiviraj,
        story: vikram,
      
      ),
    StoryCard(
        labelText:"ragnar" ,
        avatar: travisfimmel,
        story: mohanlal,
      
      ),
  
  
  
  
      ],),
    );
  }
}