import 'package:flutter/material.dart';
class Evaluate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child:
          Container(
            child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12), // 圆角半径
                          child:   Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",width: 30,),
                        ),
                        Text("啊是成功i啊就卡v")
                      ],
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12), // 圆角半径
                          child:   Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",width: 30,),
                        ),
                        Text("111")
                      ],
                    ),


                  ],

                ),
                Row(

                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12), // 圆角半径
                          child:   Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",width: 120,height: 150,fit: BoxFit.fill,),
                        ),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("啊是成功i啊就卡v"),
                        Text("111")
                      ],
                    ),


                  ],

                )
              ],
            ),
          )
      );


  }
}