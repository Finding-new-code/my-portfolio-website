import 'package:web/response.dart';
import 'package:web/page1.dart';
import 'package:flutter/material.dart';
import 'package:web/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       useMaterial3: true,
       backgroundColor:bgcolor,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: bgcolor
      ),
      
      
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        //bottom: PreferredSize(
       //   preferredSize:  Size.fromHeight(context.responsive(30,sm: 30,md: 35,lg: 43,xl: 46)),
        //  child: AppBar(),
        //),
        backgroundColor: appBarcolor,
        title: Text("My portfolio website",
        
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:context.responsive(15,sm: 15,md: 17,lg: 19),
          color: headercolor
          ),) ,
      ),
     body: const Page1(),
     
    );
  }
}