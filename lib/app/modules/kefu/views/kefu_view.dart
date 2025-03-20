import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kefu_controller.dart';

class KefuView extends GetView<KefuController> {
  const KefuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KefuView'), centerTitle: true),
      body: const Center(
        child: Text('KefuView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
