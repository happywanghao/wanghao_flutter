import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox( //给子部件添加一些限制，比如最小高度最大高度s
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio( //设置子部件的宽高比
            aspectRatio: 1.0/1.0,    //宽高比
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
          
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Stack( //一摞小部件 摞在一起了
            alignment: Alignment.topLeft, //其他小部件的对齐方式
            children: <Widget>[
              SizedBox(  //第一个最大的小部件是底板 其他小部件的位置可以根据底板设置
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(0.0, -0.9), //子部件在父部件内的位置
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
              ),
              SizedBox(height: 32.0,),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0)
                    shape: BoxShape.circle,  //形状
                    gradient: RadialGradient(  //渐变色
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ]
                    )
                  ),
                  child: Icon(Icons.brightness_2,color:Colors.white,size:32.0),
                ),
              ),
              Positioned(
                right: 20.0, //相对位置是最大的部件的位置
                top: 20.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),
              Positioned(
                right: 20.0, //相对位置是最大的部件的位置
                top: 120.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),
              Positioned(
                right: 70.0, //相对位置是最大的部件的位置
                top: 180.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),
              Positioned(
                right: 2030.0, //相对位置是最大的部件的位置
                top: 230.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),
              Positioned(
                right: 90.0, //相对位置是最大的部件的位置
                top: 20.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),
              Positioned(
                right: 4.0, //相对位置是最大的部件的位置
                bottom: -4.0,
                child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
              ),

            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{
    this.size = 32.0
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Icon(icon,size:size,color:Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 225, 1.0),
    );
  }
}