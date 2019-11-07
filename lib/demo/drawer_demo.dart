import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            //展示用户信息的drawerHeader
            accountName:
                Text('wanghao', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('wanghao@wanghao.net'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text("Message", textAlign: TextAlign.right), //标题
            trailing:
                Icon(Icons.message, color: Colors.black12, size: 12.0), //图标
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text("Favorite", textAlign: TextAlign.right), //标题
            trailing:
                Icon(Icons.favorite, color: Colors.black12, size: 12.0), //图标
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text("Settings", textAlign: TextAlign.right), //标题
            trailing:
                Icon(Icons.settings, color: Colors.black12, size: 12.0), //图标
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
