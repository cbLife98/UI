import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final _scaffoldKey = new GlobalKey<ScaffoldState>();
VoidCallback _showPersBottomSheetCallBack;

@override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showBottomSheet;
  }


  void _showBottomSheet(){
  setState(() {
    _showPersBottomSheetCallBack = null;
  });
  _scaffoldKey.currentState.showBottomSheet((context)  {
    return new Container(
      height: 300.0,
      color: Colors.greenAccent,
      child: new Center(
        child: new Text("Hi bottom sheet"),
      ),
  );
  }).closed.whenComplete((){
    if(mounted){
      setState(() {
        _showPersBottomSheetCallBack = _showBottomSheet;

      });
    }
  });
  }


  void _showModalSheet(){
  showModalBottomSheet(context: context, builder: (builder){
    return Container(
      color: Colors.greenAccent,
      child: new Center(
        child: new Text("Hi modal bottom sheet"),
      ),
    );

  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Flutter Bottom Sheet"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                  onPressed: _showPersBottomSheetCallBack,
                child: new Text("Persistant"),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 10.0),
              ),
              new RaisedButton(
                onPressed: _showModalSheet,
                child: new Text("Modal"),
              )
            ],
          )
        ),
      ),
    );
  }
}
