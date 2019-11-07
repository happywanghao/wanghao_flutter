import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
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
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,  //达到四个bar的话会变成白色因为类型会变化，需要指定类型
          fixedColor: Colors.black,  //激活状态变成黑色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My')
            )
          ],
        ),  //抽屉
      ),
    );
  }
}

