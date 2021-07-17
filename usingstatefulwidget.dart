void main(){

  runApp(
    MaterialApp(
      title: "the Stateful Widgets",
      home: StudentsNames(),
    )
  );
}
class StudentsNames extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentsNames();
  }

}
class _StudentsNames extends State<StudentsNames>{

  String student;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Stateful projecr"),),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  student = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30),
                child: Text("The Student is: $student"),
            )
          ],
        )
      ),
    );
  }
}
