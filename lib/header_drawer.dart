// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class headerdrawer extends StatefulWidget {
  const headerdrawer({super.key});

  @override
  State<headerdrawer> createState() => _headerdrawerState();
}

class _headerdrawerState extends State<headerdrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[800],
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(top: 110),
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Icon(
            Icons.account_circle_rounded,
            size: 120
            ),
            SizedBox(
              height: 8,
            ),       
           Text('User Name',
           style:TextStyle(
            fontSize: 20,
           
            color: Colors.white,
           ),), 
           SizedBox(
            height: 5,
           ), 
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('email_id@gmail.com',
                     style:TextStyle(
              fontSize: 16,
                     
              color: Colors.white,
                     )),
            )        
        ],),
      ),

    );
  }
}