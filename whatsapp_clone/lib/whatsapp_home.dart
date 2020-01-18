import 'package:flutter/material.dart';


class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4 , vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor:Colors.white,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera_alt),),
              new Tab(text: "CHATS",),
              new Tab(text: "STATUS",),
              new Tab(text: "CALLS",)
            ],
        ),
      ),
      body: new Container(

      ),
    );
  }
}
