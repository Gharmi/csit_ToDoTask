import 'package:flutter/material.dart';

class DialogBox{
  
  //var context;

  static  void displayDialog(context){
     TextEditingController taskController=new TextEditingController();
                  showDialog<String>(
                context: context,
                builder: (_) => AlertDialog(
                  title:Text("Add your Task"),
                  content: TextField(
                    controller: taskController,
                  ),
                  actions: <Widget>[
                    FlatButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    FlatButton(
                        child: Text('OK'),
                        onPressed: () {
                          print(taskController.text.toString()+" is added");
                          Navigator
                              .pop(context);
                        })
                  ],
                ),
              );
  }

}