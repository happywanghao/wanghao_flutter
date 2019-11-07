import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, //不显示debug
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),//主题颜色
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length:3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigration",
            onPressed: ()=>debugPrint('navigration button is pressed'),
          ),
          title: Text("WANGHAO"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: ()=>debugPrint('Search button is pressed'),
            ),
          ],
          elevation: 0.0, //阴影
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon:Icon(Icons.local_florist)),
              Tab(icon:Icon(Icons.change_history)),
              Tab(icon:Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist,size:128.0,color:Colors.black12),
            Icon(Icons.change_history,size:128.0,color:Colors.black12),
            Icon(Icons.directions_bike,size:128.0,color:Colors.black12),
          ],
        )
      ),
    );
  }
}

