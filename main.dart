//Using Floating buttons and snackbar

import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
          title: "My List View",
          home: Scaffold(
            appBar: AppBar(title: Text("The big List")),
            body: myBigList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("Add new item");
              },
              child: Icon(Icons.add),
              tooltip: "add new item",

            ),
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
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla ......"),
          onTap: (){
            debugPrint("items num# ${items[i]}");
          },
        );
      }
  );
  return listView;
}
void showBar(BuildContext context, String msg){
  var bar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(label: "UNDO", onPressed: (){
        onClick(context);

      }
      ),
  );
  Scaffold.of(context).showSnackBar(bar);
}
void onClick(BuildContext context){
  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("Undo the operation"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
  );
}
