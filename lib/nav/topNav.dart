import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class TopNav extends StatefulWidget {
  final void Function(int) onTabTapped;
  const TopNav({super.key,  required this.onTabTapped});
  @override
  _TopNavState createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  int _selectedIndex = 1;
  final List<String> _tabs = [
    '推荐', '热门', '科技', '体育', '娱乐',
    '财经', '时尚', '美食', '旅游', '健康'
  ];

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Text("1")
    //   ],
    // );
    return
      Container(
        child:Column(

          children: [
            // StepListView(),
            // BackShaderText(text: "步骤"),
            SizedBox(height: 20,),
            Container(
              height: 30,
              alignment: Alignment.center,
              child:
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _tabs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          widget.onTabTapped(index);
                        });
                      },
                      child: TabText(isSelected: _selectedIndex == index, text: _tabs[index]),
                    ),
                  );
                },
              ),
            ),

            // HorizontalPage1View(),
            // 内容区域

          ],
        )
      );


  }
}