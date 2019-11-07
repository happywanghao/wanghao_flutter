import 'package:flutter/material.dart';
class bottomNavigationBarDemo extends StatefulWidget {
  @override
  _bottomNavigationBarDemoState createState() => _bottomNavigationBarDemoState();
}

class _bottomNavigationBarDemoState extends State<bottomNavigationBarDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  int _currentIndex = 0;
  void _onTapHandler (int index){
    setState(() {
      _currentIndex = index;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(vsync: this);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: _currentIndex,  //激活的索引
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,  //达到四个bar的话会变成白色因为类型会变化，需要指定类型
          fixedColor: Colors.black,  //激活状态变成黑色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),

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
        );
  }
}