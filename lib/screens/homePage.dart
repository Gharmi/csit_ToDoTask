//import 'package:csit_workshop/models/task.dart';
import 'package:csit_workshop/models/task.dart';
import 'package:csit_workshop/widgets/addItem.dart';
import 'package:csit_workshop/widgets/cardview.dart';
import 'package:csit_workshop/widgets/dialogBox.dart';
import 'package:csit_workshop/widgets/eachItem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditingController taskController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.movie_filter),
          title: Text("To do List"),
        ),
        //backgroundColor: Colors.blueAccent,
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => DialogBox.displayDialog(context)),

        // body: ListView.builder(
        //   itemCount: 1,
        //   itemBuilder: (context, index){
        //     return DoList();
        //   }
        //   )
        body: SingleChildScrollView(child: Column(children: [_buildBanner(), toDO(context)])));
  }

  Widget _buildBanner() {
    return Container(
      height: 120,
      //width: MediaQuery.of(context).size.width,
      color: Colors.lightBlue[900],
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Overall Task",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
              ),
            )
          ]),
    );
  }

 
}
