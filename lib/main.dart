import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recycler_view_flexible_divider/recycler_view_flexible_divider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flexible Divider Demo',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Recycler View Flexible Divider",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),

      body: FlexibleDividerListView(
        itemCount: 20,

        divider: const FlexibleDivider(
          thickness: 2,
          color: Colors.teal,
          startIndent: 16,
          endIndent: 16,
          topSpacing: 8,
          bottomSpacing: 8,
          showFirstDivider: true,
          showLastDivider: true,
        ),

        itemBuilder: (context, index) {

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text("${index + 1}",style: TextStyle(color: Colors.white),),
            ),
            title: Text("User $index"),
            subtitle: const Text("Flutter Developer"),
          );
        },
      ),
    );
  }
}
