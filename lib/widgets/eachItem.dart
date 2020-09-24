


import 'package:csit_workshop/models/task.dart';
import 'package:csit_workshop/widgets/cardview.dart';
import 'package:flutter/material.dart';

Widget toDO(BuildContext context){
var listItem=getTask();
    return Container(
      color: Colors.lightBlue[900],
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
        ),
        child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 50.0),
            itemCount: listItem.length,
            itemBuilder: (context, index) {
              return CardBox(
                task: listItem[index],
              );
            }),
      ),
      
      // child: CardBox(task: listItem[0]),
    );
  }