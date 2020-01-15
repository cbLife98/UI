import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final List<String> items = List<String>.generate(30,(i)=> "Items ${i+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Swipe To Dismiss"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context,int index){
          return new Dismissible(
              key: new Key(items[index]),
              onDismissed: (direction){
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(new SnackBar(
                    content: new Text("Item Dismissed")
                ));
              },
              background: new Container(
                color: Colors.red,
              ),
              child:new ListTile(
          title: new Text("${items[index]}")
          )
          );
        },
        itemCount: items.length,
      ),
    );
  }
}


