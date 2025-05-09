import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
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
              print(_currentIndex);
            });
          },
          type: BottomNavigationBarType.fixed, // 超过3个item需要设置为fixed
          selectedItemColor: Colors.red, // 选中项颜色
          unselectedItemColor: Colors.blue, // 未选中项颜色
          showSelectedLabels: false,           // 始终显示选中项文字
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/slices/首页_${_currentIndex == 0 ? "" : "未"}选中.png",width: 20.h,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/slices/减脂_${_currentIndex == 1 ? "" : "未"}选中.png",width: 20.h,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/slices/收藏_${_currentIndex == 2 ? "" : "未"}选中.png",width: 20.h,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/slices/我的_${_currentIndex == 3 ? "" : "未"}选中.png",width: 20.h,),
              label: '',
            ),
          ],
        ),
      ) ,);

  }
}