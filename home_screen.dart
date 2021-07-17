import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     home:Center(
        child: Container(
            padding: EdgeInsets.only(top:40,bottom:20 ,left:10 ,right:10 ),
            alignment: Alignment.center,
            color: Colors.yellow,
           // width:200 ,
           // height: 200,
           // margin: EdgeInsets.only(left: 100, top: 40,bottom: 40),
           // padding: EdgeInsets.all(30),
            child: Column(
        children: <Widget>[
          Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Expanded(
                        child:Text(
                          "hi Saleh",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.lightBlue,
                              fontSize: 30,
                              fontFamily: "ZenLoop"

                          ),
                        )
                    ),
                    Expanded(
                        child: Text(
                            "I am a Sineor Software",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.deepOrange,
                                fontSize: 20,
                                fontFamily: "ZenLoop"
                            )
                        )
                        )
                    ]
                   ),
          Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Expanded(
                    child:Text(
                      "hi Nassir",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.lightBlue,
                          fontSize: 30,
                          fontFamily: "ZenLoop"

                      ),
                    )
                ),
                Expanded(
                    child: Text(
                        "I am a Sineor Graphical desiner",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.deepOrange,
                            fontSize: 20,
                            fontFamily: "ZenLoop"
                        )
                    )
                )
              ]
          ),
          MyImage(),
          MyButton()
                  ]
              )
        )
     )
    );
  }
}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('image/me.jpeg');
    Image MyImg = new Image(image: image, width: 200, height: 100,);
    return Container(child: MyImg,);
  }
}
class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    RaisedButton button = new RaisedButton(
      onPressed: () {
        onClick(context);
      },
      color: Colors.deepOrangeAccent,
      child: Text(
        "Click Me",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "ZenLoop",
          fontSize: 20,
        ),
      ),
    );
    return Container(
      child: button,
      margin: EdgeInsets.only(top: 20),
      );
  }
  void onClick(BuildContext context){
    AlertDialog alertDialog = AlertDialog(
      title: Text("Hello Saleh"),
      content: Text("Have fun with it"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
    );
  }
}