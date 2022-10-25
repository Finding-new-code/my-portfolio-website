

import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/response.dart';
import 'package:google_fonts/google_fonts.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("       HEY",style: TextStyle(
          fontSize: context.responsive(25,sm: 20,md: 25,lg: 30,xl: 35),
          color: headercolor,
        fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
        ),
        
         Row(
           children: [
             Padding(
              padding:  EdgeInsets.symmetric(
                vertical: 30,
                horizontal: context.responsive(20,sm: 40,md: 50,lg: 60,xl: 70)),
              child: Text("Im Satya Prakash Nayak\nA student who want embress\nthe knowledge of\nToday's world of technology\nand want be part of it.",
              style:GoogleFonts.robotoFlex(
                fontSize:context.responsive(20,sm: 20,md: 25,lg: 30,xl: 35),
                color: textcolor,
                
              ),),
              ),
              SizedBox(width: context.responsive(100,sm: 200,md: 400,xl: 700,lg: 500),
                child: AnimatedContainer(
                  duration:animate,
                  
                  child: Image.asset("assets/my.png",width: 300,height: 300,
                  alignment: Alignment.topRight,
                  fit: BoxFit.contain,),
                ),
              )
           ],
         ),
          
        
      ],
     ) ,
     
    );
  }
}