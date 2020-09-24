class Task {
  String description;
  DateTime date;
  bool complete;

  Task({this.description, this.date, this.complete});



}
  
List<Task> getTask(){
 return ([Task(
      description: "I need to complete this app by today",
      complete: false,
      date: DateTime.fromMicrosecondsSinceEpoch(65)),
       Task(
      description: "I need to complete this app by today and i will finish it su",
      complete: true,
      date: DateTime.fromMicrosecondsSinceEpoch(65))
  ]);
}

