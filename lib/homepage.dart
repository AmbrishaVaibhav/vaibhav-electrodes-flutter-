// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cart.dart';
import 'header_drawer.dart';
import 'dash.dart';
import 'about.dart';
import 'contact.dart';
import 'setting.dart';
import 'product.dart';
import 'privacy.dart';
import 'review.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  var currentpage = drawersections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentpage == drawersections.dashboard) {
      container = mydashboard();
    } else if (currentpage == drawersections.products) {
      container = myprod();
    } else if (currentpage == drawersections.contacts) {
      container = mycontacts();
    } else if (currentpage == drawersections.about) {
      container = myabout();
    } else if (currentpage == drawersections.settings) {
      container = mysettings();
    } else if (currentpage == drawersections.privacy_policy) {
      container = myprivacy();
    } else if (currentpage == drawersections.send_feedback) {
      container = myreview();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Vaibhav Electrodes"),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 27,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cart()));
              },
            )
          ],
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              headerdrawer(),
              drawerlist(),
            ],
          ),
        )),
      ),
    );
  }

  Widget drawerlist() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          menuitem(1, "Dashboard", Icons.dashboard_outlined,
              currentpage == drawersections.dashboard ? true : false),
          menuitem(2, "Products", Icons.shopping_basket_outlined,
              currentpage == drawersections.products ? true : false),
          menuitem(3, "Contacts", Icons.people_alt_outlined,
              currentpage == drawersections.contacts ? true : false),
          menuitem(4, "About us", Icons.notes_outlined,
              currentpage == drawersections.about ? true : false),
          Divider(),
          menuitem(5, "Settings", Icons.settings_outlined,
              currentpage == drawersections.settings ? true : false),
          menuitem(6, "Privacy policy", Icons.privacy_tip_outlined,
              currentpage == drawersections.products ? true : false),
          menuitem(7, "Send feedback", Icons.feedback_outlined,
              currentpage == drawersections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuitem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentpage = drawersections.dashboard;
            } else if (id == 2) {
              currentpage = drawersections.products;
            } else if (id == 3) {
              currentpage = drawersections.contacts;
            } else if (id == 4) {
              currentpage = drawersections.about;
            } else if (id == 5) {
              currentpage = drawersections.settings;
            } else if (id == 6) {
              currentpage = drawersections.privacy_policy;
            } else if (id == 7) {
              currentpage = drawersections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum drawersections {
  dashboard,
  products,
  contacts,
  about,
  settings,
  privacy_policy,
  send_feedback,
}
