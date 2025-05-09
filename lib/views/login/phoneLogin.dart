import 'dart:async';
import 'package:flutter/material.dart';

class PhoneLoginPage extends StatefulWidget {
  const PhoneLoginPage({super.key});

  @override
  State<PhoneLoginPage> createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  int _seconds = 0;
  Timer? _timer;

  // 模拟验证码请求
  void _getCode() {
    final phone = _phoneController.text.trim();
    if (!_isValidPhone(phone)) {
      _showToast(context, "请输入正确的手机号");
      return;
    }

    // 触发倒计时
    setState(() {
      _seconds = 60;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds--;
        if (_seconds == 0) {
          _timer?.cancel();
        }
      });
    });

    debugPrint("请求验证码 for $phone");
  }

  bool _isValidPhone(String phone) {
    final reg = RegExp(r'^\d{11}$'); // 简单11位校验
    return reg.hasMatch(phone);
  }

  void _showToast(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), duration: const Duration(seconds: 2)),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("取消", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 40),
               Container(
                 alignment: Alignment.topLeft,
                child: Text(
                  "手机登录",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                children: [
                  const Text(
                    "+86",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "输入手机号码",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "输入短信验证码",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: _seconds == 0 ? _getCode : null,
                    child: Text(
                      _seconds == 0 ? "获取验证码" : "${_seconds}s",
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 60),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "登录",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
