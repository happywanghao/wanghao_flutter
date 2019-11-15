import 'package:flutter/material.dart';
import 'package:wanghao_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('dsds');
  }
}


class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color:Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style:TextStyle(fontSize: 18.0,color:Colors.grey)
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100)
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,  //项目数量
      itemBuilder: _gridItemBuilder,  //构建视图的方法
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(   //控制视图的显示
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 16.0,
      //   mainAxisSpacing: 16.0,
      // ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(   //控制视图的显示
        maxCrossAxisExtent: 100.0,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){  //自动生成组件的方法很实用
      return Container(
        color: Colors.grey[300],
        child: Text(
          'item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,  //副轴的数量
      crossAxisSpacing: 16.0, //副轴间距
      mainAxisSpacing: 16.0, //主轴间距
      // scrollDirection: Axis.horizontal, //切换水平和垂直滚动
      children: _buildTiles(100)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack( //可以把小部件叠加到一块显示的小部件
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,  //列表的数量
      itemBuilder: _pageItemBuilder, //列表
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(  //页面视图
      // pageSnapping: false, //页面不自动翻
      // reverse: true,  //最后一个页面会变成第一个页面
      scrollDirection: Axis.vertical,  //切换页面垂直滚动和水平滚动
      // onPageChanged: (currentPage){print('Page:$currentPage');}, //页面滚动的回调
      controller: PageController(
        initialPage: 1,  //第一页显示的视图默认的索引
        keepPage: false,  //是否记住显示的页面
        viewportFraction: 0.85,  //占用屏幕滚动方向的比例。
      ),  //控制器
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style:TextStyle(fontSize: 32.0,color: Colors.white)
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style:TextStyle(fontSize: 32.0,color: Colors.white)
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style:TextStyle(fontSize: 32.0,color: Colors.white)
          ),
        )
      ],
    );
  }
}