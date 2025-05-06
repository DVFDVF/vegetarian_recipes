import 'package:flutter/material.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/views/collect/collect.dart';
import 'package:vegetarian_recipes/views/home/home.dart';
import 'package:vegetarian_recipes/views/message/message.dart';
import 'package:vegetarian_recipes/views/my/my.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // 页面内容
  final List<Widget> _pages = [
    Home(),
    Message(),
    Collect(),
    My(),
    // Center(child: Text('个人中心', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed, // 超过3个item需要设置为fixed
          selectedItemColor: Colors.red, // 选中项颜色
          unselectedItemColor: Colors.blue, // 未选中项颜色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '搜索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '收藏',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '我的',
            ),
          ],
        ),
      ) ,);

  }
}