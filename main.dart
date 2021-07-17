//Using BigList in the Project

import 'package:flutter/material.dart';
import 'layout/home_screen.dart';

// //void main() => runApp(MyNewProject());
//
//
// class MyNewProject extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return HomeScreen();
//   }


  void main() {

    runApp(
      MaterialApp(
        title: "My List View",
        home: Scaffold(
          appBar: AppBar(title: Text("The big List")),
          body: myBigList(),
      )
      )
    );
  }


Widget myListView(){
    var list = ListView(
      children: <Widget>[

        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("My alarm"),
          subtitle: Text("the body of the alarm"),
          trailing: Icon(Icons.accessibility),
          onTap: (){
            debugPrint("Works");
          },
        ),
        ListTile(
          leading: Icon(Icons.adb),
          title: Text("My android"),
          subtitle: Text("the body of the alarm"),
          trailing: Icon(Icons.image),
        )
      ]
    );
    return list;
}

List<String> getDataSource(){
    var items = List<String>.generate(1000, (i) => "item ${i + 1} ");
    return items;
}

Widget myBigList(){
    var items = getDataSource();

    var listView = ListView.builder(
        itemBuilder: (context, i) {

          return ListTile(
            title: Text(items[i]),
          );
    }
    );
    return listView;
}
