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
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //按钮按下去的高亮颜色
        splashColor: Colors.white70, //按钮按下去的水波纹的颜色
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
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "Navigration",
          //   onPressed: ()=>debugPrint('navigration button is pressed'),
          // ),
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
            unselectedLabelColor: Colors.black38, //未选中的颜色
            indicatorColor: Colors.black54, //下划线的颜色
            indicatorSize: TabBarIndicatorSize.label, //下划线的长度
            indicatorWeight: 1.0,
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
        ),
        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              ListTile(
                title: Text("Message",textAlign:TextAlign.right),//标题
                trailing: Icon(Icons.message,color:Colors.black12,size:12.0),//图标
                onTap: ()=>Navigator.pop(context),
              ),
              ListTile(
                title: Text("Favorite",textAlign:TextAlign.right),//标题
                trailing: Icon(Icons.favorite,color:Colors.black12,size:12.0),//图标
                onTap: ()=>Navigator.pop(context),
              ),
              ListTile(
                title: Text("Settings",textAlign:TextAlign.right),//标题
                trailing: Icon(Icons.settings,color:Colors.black12,size:12.0),//图标
                onTap: ()=>Navigator.pop(context),
              ),
            ],
          ),
        ),  //抽屉
      ),
    );
  }
}

