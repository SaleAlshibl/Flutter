//The Main Class
import 'package:flutter/material.dart';
import 'package:studentd_list/screen/student_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Student List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: StudentsList(),
    );
  }
}
//---------------------------------------------------------------------------------
//The Student_List Class
import 'package:flutter/material.dart';

class StudentsList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StudentsState();
  }
}
class StudentsState extends State<StudentsList>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Student"),
      ),
      body: getStudentsList(),
    );
  }
  ListView getStudentsList(){
    return ListView.builder(
        itemCount: count,
        itemBuilder:(BuildContext context, int position){
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.check),
              ),
              title: Text("The First Student"),
              subtitle: Text("Data from this student"),
              trailing: Icon(Icons.delete, color: Colors.grey,),
              onTap: (){
                debugPrint("Student Tabed");
              },
            ),
          );
        }
    );
  }
}
