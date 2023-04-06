import 'package:flutter/material.dart';
class myreview extends StatefulWidget {
  const myreview({super.key});

  @override
  State<myreview> createState() => _myreviewState();
}

class _myreviewState extends State<myreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Send feedback')),
    );
  }
}