import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
 final bool displayStatus;
  final String displayImage;
final bool diasplayBorder;
 final double width;
  final double height;
  Avatar({
required this.displayImage,
required    this.displayStatus,
  this.diasplayBorder= false,
 this.width=50,
 this.height=50,
  });
  
  @override
  Widget build(BuildContext context) {
    Widget statusIndiacator;
    if(displayStatus==true){
  statusIndiacator= Positioned(
        bottom: 0,
        right:1.0,
        child:Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          shape: BoxShape.circle,
          border: Border.all(
           color: Colors.white,
           width: 3, 
          )
        ),
      )
         );
         }
    else{
      statusIndiacator=SizedBox();
    }
         
    
    return Stack(
      children:[
        Container(
          decoration: BoxDecoration(
            shape:BoxShape.circle,
             border :diasplayBorder? Border.all(
              color: Colors.blueAccent,
              width: 3,
            ):Border()
          ),
          padding: EdgeInsets.only(left: 4,right: 4),
          child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          displayImage,
          width: width,
          height: height,
          
        ),
      ),
        ),
     statusIndiacator,
      ]
    );
}
}