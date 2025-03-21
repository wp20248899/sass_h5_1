import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_controller.dart';

class MyView extends GetView<MyController> {
  const MyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
