import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/configuration /app_colors.dart';
import 'package:vegetarian_recipes/configuration /app_text.dart';
import 'package:vegetarian_recipes/views/appBar/appBar.dart';
import 'package:vegetarian_recipes/views/collect/CollectSeleteItem.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';

class Collect extends StatefulWidget {
  const Collect({super.key});

  @override
  _CollectState createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  final List<String> items = List.generate(12, (index) => "Item $index");
  final Set<int> selectedIndexes = {};
  bool isEditing = false;
  final TextEditingController _controller = TextEditingController();
  String _searchQuery = "";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _searchQuery = _controller.text.trim();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int _selectedIndex = 1;

    return Scaffold(
      appBar:isEditing ? CustomAppBar(left:SizedBox(),title: AppText.appDiscoverEventAction,
          action:
          InkWell(
            onTap: (){
              setState(() {
                selectedIndexes.clear();
                isEditing = false;

              });
            },
            child:
            Container(
              child: Text(
                AppText.actionCancel,
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )

      ) : null,
      body: SafeArea(
        child: Column(
          children: [
            // 顶部搜索框 + 编辑按钮
            if (!isEditing)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10),
              child: Row(
                children: [
                  Expanded(child: SearchInput(controller: _controller)),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEditing = !isEditing;
                        if (!isEditing) selectedIndexes.clear();
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: AppColors.greyF3,
                        borderRadius: BorderRadius.circular(7.h),
                      ),
                      child: Image.asset("assets/slices/编辑.png", width: 15.h),
                    ),
                  ),
                ],
              ),
            ),

            // 编辑模式下显示全选/删除
            if (isEditing)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndexes.length == items.length) {
                            selectedIndexes.clear();
                          }
                          else {
                            selectedIndexes.addAll(
                              List.generate(items.length, (i) => i),
                            );
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.greyF7,
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                        child: Text(
                          selectedIndexes.length == items.length
                              ? AppText.actionCancelSelectAll
                              : AppText.actionSelectAll,
                          style: TextStyle(
                            fontSize: 11.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          final newItems = items
                              .asMap()
                              .entries
                              .where((entry) => !selectedIndexes.contains(entry.key))
                              .map((e) => e.value)
                              .toList();
                          items
                            ..clear()
                            ..addAll(newItems);
                          selectedIndexes.clear();
                          isEditing = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.greyF7,
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                        child: Text(
                          AppText.actionDelete,
                          style: TextStyle(
                            fontSize: 11.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (!isEditing)
            // Tab栏
            TopNav(
              onTabTapped: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),

            // 内容区
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Wrap(
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children: List.generate(items.length, (index) {
                    final isSelected = selectedIndexes.contains(index);
                    return GestureDetector(
                      onTap: () {
                        if (isEditing) {
                          setState(() {
                            if (isSelected) {
                              selectedIndexes.remove(index);
                            } else {
                              selectedIndexes.add(index);
                            }
                          });
                        } else {
                          // 非编辑模式下的跳转逻辑（可留空或导航）
                        }
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                            width: (screenWidth - 60.w) / 3,
                            child: CollectSeleteItem(), // 自定义卡片组件
                          ),
                          if (isEditing)
                            Positioned(
                              bottom: 35.h,
                              right: 10.h,
                              child: Image.asset(
                                "assets/slices/菜谱编辑_${isSelected ? "" : "未"}选中.png",
                                width: 20.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
