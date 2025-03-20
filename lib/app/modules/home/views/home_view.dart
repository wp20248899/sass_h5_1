import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('首页'), centerTitle: true),
      body: const Center(
        child: Text('home_view is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
