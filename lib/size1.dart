import 'package:flutter/material.dart';

class sizeone extends StatefulWidget {
  const sizeone({super.key});

  @override
  State<sizeone> createState() => _sizeoneState();
}

class _sizeoneState extends State<sizeone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Row(
          children: const [
            TextField(
              decoration: InputDecoration(
                                    border: InputBorder.none, hintText: 'Search'),
              
            ),
          ],
        ),
      ),
    );
  }
}