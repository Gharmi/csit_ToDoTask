import 'package:csit_workshop/models/task.dart';
import 'package:csit_workshop/widgets/dialogBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardBox extends StatefulWidget {
  final Task task;
  CardBox({this.task});

  @override
  _CardBoxState createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () => DialogBox.displayDialog(context),
      child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
          foregroundDecoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black38))),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(5),
          //     ),
          //color: Colors.white38),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // widget.task.description.length > 30
                    //     ? Text(
                    //         widget.task.description.substring(0, 30),
                    //         maxLines: 2,
                    //         style: TextStyle(fontSize: 20,decoration: widget.task.complete?TextDecoration.lineThrough:null),
                    //       )
                    //     : Text(widget.task.description),
                    //     //Flexible(child: Text("I want to break free form and we are not all same bruh ",maxLines: 4,),),
                    // widget.task.description.length > 3
                    //     ? Text( "....." ,
                    //         maxLines: 2,
                    //         style: TextStyle(
                    //             color: Colors.black, fontSize:20 ))
                    //     : null,
                    Flexible(
                        child: Text(widget.task.description,
                            maxLines: 4,
                            style: TextStyle(
                                fontSize: 18,
                                decoration: widget.task.complete
                                    ? TextDecoration.lineThrough
                                    : null))),
                    SizedBox(width: 5.0),
                  ],
                ),
                SizedBox(height: 7.0),
                Row(
                  children: [
                    Text(
                      "Deadline:  ",
                      style: TextStyle(fontSize: 8.0, color: Colors.blue[300]),
                    ),
                    Text(
                      DateFormat.yMMMd().format(DateTime.now()),
                      style: TextStyle(fontSize: 10.0),
                    ),
                    SizedBox(width: 175),
                    Checkbox(
                        value: widget.task.complete,
                        onChanged: (bool check) {
                          setState(() {
                            widget.task.complete = check;
                          });
                        }),
                  ],
                )
                //Text(t1.complete.toString())
              ])),
    ));
  }
}
