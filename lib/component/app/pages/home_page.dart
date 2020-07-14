// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// This app is a stateful, it tracks the user's current choice.
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('首页'),
        ),
        drawer: this.showDrawer(),
      ),
    );
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        //ListView padding 不为空的时候，Drawer顶部的状态栏就不会有灰色背景
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            //头像
            currentAccountPicture: GestureDetector(
              //圆形头像
              child: ClipOval(
                child: Image.network(
                    'https://avatar.csdnimg.cn/C/0/1/1_yechaoa.jpg'),
              ),
              onTap: () {},
            ),
            //其他头像
            otherAccountsPictures: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.stars,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
            accountName: Text(
              '哎呀我操',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            accountEmail: Text('你猜这是多少'),
          ),

          ///功能列表
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text("我的收藏"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("切换主题"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("我要分享"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("关于项目"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              //先关闭再跳转
            },
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.block),
            title: Text("退出"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              //关闭drawer
            },
          ),
        ],
      ),
    );
  }
}
