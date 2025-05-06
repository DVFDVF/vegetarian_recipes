import 'dart:async';

import 'package:flutter/material.dart';

class GlobalState extends ChangeNotifier {
  // 该定时器用来控制下一次发送验证码的剩余秒数
  int _leftSeconds = 0;

  int get leftSeconds => _leftSeconds;

  void startCountingDown() {
    if (_leftSeconds == 0) return;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (leftSeconds == 0) {
        timer.cancel();
      }
      _leftSeconds--;
      notifyListeners();
    });
  }

  void resetLeftSeconds(int seconds) {
    _leftSeconds = seconds;
    notifyListeners();
  }
}
