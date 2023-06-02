import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  void createNote() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        elevation: 0,
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Padding(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 20),
            child: Text(
              "Notes",
              style: TextStyle(fontFamily: 'Lato Bold', fontSize: 35),
            ),
          ),

          //list note
          Expanded(
            child: SingleChildScrollView(
              child: CupertinoListSection.insetGrouped(
                children: List.generate(20,
                    (index) => CupertinoListTile(title: Text('Notes $index'))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
