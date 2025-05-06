import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child:
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      TopNav(),
                      PlanItemView(),
                      PlanItemView(),
                      PlanItemView(),

                    ],
                  ),
                )

              ],
            )
        )

    );
  }
}