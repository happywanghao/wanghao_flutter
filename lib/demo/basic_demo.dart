import 'package:flutter/material.dart';



//一行文字多种样式
class BasicDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(  //背景图
          image:NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter, //背景图定位
          // repeat: ImageRepeat.repeatY  //背景图重复
          fit: BoxFit.cover,  //背景图覆盖
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5), //滤镜的颜色
            BlendMode.hardLight    //滤镜的混合模式
          )

        )

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //主轴居中对齐
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size:32.0,color: Colors.white,),
            // padding: EdgeInsets.only(left: 24.0,right: 8.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   )
              // )
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0)
              // ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0,16.0), //偏移量
                  color: Color.fromRGBO(16, 20, 188, 1.0), //阴影颜色
                  blurRadius: 25.0, //模糊程度越大越明显
                  spreadRadius: -9.0, //阴影的扩散程度 可正可负数

                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(  //径向渐变
              //   colors:[
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ]
              // )
              gradient: LinearGradient(  //线性渐变
                colors:[
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter, //开始位置
                end: Alignment.bottomCenter, //结束位置
              )
            ),
          )
        ],
      ),
    );
  }
}



class TextDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》—— $_author。君不见黄河之水天上来，奔流到海不复还。君不见高堂明月悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散去还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,  
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}


//一行文字多种样式
class RichTextDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:TextSpan(
        text: 'wanghao',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,

        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ]
      )
    );
  }
}