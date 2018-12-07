import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Calculator",
      home: new Interface(),
    )
  );
}

class Interface extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new interfaceState();
  }
}

class interfaceState extends State<Interface>{
  final Cont1 = TextEditingController();
  final Cont2 = TextEditingController();
  double val = 0;

  void sum(){
    setState(() {
      val = double.parse(Cont1.text) + double.parse(Cont2.text);
      Cont1.text = "";
      Cont2.text = "";
    });
  }
  void sub(){
    setState(() {
      val = double.parse(Cont1.text) - double.parse(Cont2.text);
      Cont1.text = "";
      Cont2.text = "";
    });
  }
  void mul(){
    setState(() {
      val = double.parse(Cont1.text) * double.parse(Cont2.text);
      Cont1.text = "";
      Cont2.text = "";
    });
  }
  void div(){
    setState(() {
      val = double.parse(Cont1.text) / double.parse(Cont2.text);
      Cont1.text = "";
      Cont2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number,
                controller: Cont1,
              ),
              new TextField(
                decoration: new InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number,
                controller: Cont2,
              ),
              new Row(
                children: <Widget>[
                  new RaisedButton(onPressed: ()=>sum(),
                    color: Theme.of(context).accentColor,
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                     child:new Text("+",style: new TextStyle(color: Colors.white),),
                  ),
                  new RaisedButton(onPressed: ()=>sub(),
                    color: Theme.of(context).accentColor,
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child:new Text("-",style: new TextStyle(color: Colors.white),),
                  ),
                  new RaisedButton(onPressed: ()=>mul(),
                    color: Theme.of(context).accentColor,
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child:new Text("x",style: new TextStyle(color: Colors.white),),
                  ),
                  new RaisedButton(onPressed: ()=>div(),
                    color: Theme.of(context).accentColor,
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child:new Text("/",style: new TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              new Expanded(
                child: new Text(
                "Value : $val",
                style: new TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
               ),
              ),
            ],
          )),
    );
  }

}
