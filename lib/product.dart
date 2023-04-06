// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/screen_3.dart';
import 'size1.dart';
import 'size2.dart';
import 'size3.dart';

class myprod extends StatefulWidget {
  const myprod({super.key});

  @override
  State<myprod> createState() => _myprodState();
}

class _myprodState extends State<myprod> {
 
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Select your desired size',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 23,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                list(1, "3.13 X 350 mm"
                   ),
                list(2, "3.15 X 450 mm"),
                list(3, "4 X 450 mm"),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget list(int id, String title) {
    return Material(
      
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey.withOpacity(0.2),
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

enum size { size1, size2, size3 }
