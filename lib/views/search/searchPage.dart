import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/views/home/HomeItem.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';
class SearchPageRoute extends PageRouteBuilder {
  SearchPageRoute()
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => SearchPage(),
    transitionDuration: Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> history = ["麻婆豆腐", "红烧茄子", "素炒豆芽", "凉拌黄瓜"];
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

  // 示例搜索结果
  List<String> get _searchResults {
    if (_searchQuery.isEmpty) return [];
    return ["$_searchQuery 结果1", "$_searchQuery 结果2", "$_searchQuery 结果3"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            // 搜索栏
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: SearchInput(controller: _controller,),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(AppText.actionCancel,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          fontSize: 13.h,
                        )),
                  ),
                ],
              ),
            ),

            // 搜索结果 or 历史记录
            Expanded(
              child: _searchQuery.isEmpty
                  ? _buildHistoryView()
                  : _buildSearchResultView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppText.searchHistoryTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyBD,
                      fontSize: 13.h,
                    )),
                TextButton(
                  onPressed: () {
                    setState(() {
                      history.clear();
                    });
                  },
                  child: Text(AppText.actionClearHistory,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyBD,
                        fontSize: 13.h,
                      )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            alignment: Alignment.topLeft,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: history.map((item) {
                return GestureDetector(
                  onTap: () {
                    _controller.text = item;
                    _controller.selection = TextSelection.fromPosition(
                      TextPosition(offset: item.length),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.h),
                    decoration: BoxDecoration(
                      color: AppColors.greyF7,
                      borderRadius: BorderRadius.circular(20.h),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.h,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResultView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: GridView.builder(
        itemCount: _searchResults.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 两列
          crossAxisSpacing: 10.h,
          mainAxisSpacing: 10.h,
        ),
        itemBuilder: (context, index) {
          return HomeItem(); // 每个搜索结果组件
        },
      ),
    );
  }

}
