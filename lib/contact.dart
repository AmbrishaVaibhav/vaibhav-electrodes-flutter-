// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class mycontacts extends StatelessWidget {
  
  const mycontacts({super.key});
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
           body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                
                  children: [
                    Container(
                     padding: EdgeInsets.all(10.0),
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.white),
                     ),
                     child: ExpansionTile(
                     
                       title: Text('Contact us', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                       selectionColor: Colors.purple),
                       children: <Widget>[
                         ListTile(
                           title: Column(
                           
                            children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size:20,
                                    ),
                                    SizedBox(width: 10),
                                    Text(' : 8292587366',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                     Icon(
                                      Icons.email,
                                      size:20,
                                    ),
                                    SizedBox(width: 10),
                                    Text(' : naresh_kumar@google.com',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                ],)
                           

                         )
                       ],
                       
                     ),),
                  
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      
                     padding: EdgeInsets.all(10.0),
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.white),
                     ),
                     child: ExpansionTile(
                       
                       title: Text('Locate us', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, )),
                       children: <Widget>[
                         ListTile(
                           title: 
                           
                            
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      size:20,
                                    ),
                                    SizedBox(width: 30),
                                    Center(
                                      child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Near Panchayat Office', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                          Text('Jarmunai , Daludih',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                          Text('Rajganj,Dhanbad-828113',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                          Text('Jharkhand, India',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                               

                              
                           

                         )
                       ],
                     ),),
                  
                  ],
                ),
              ),
            ),
           ),
    );
  }
}
