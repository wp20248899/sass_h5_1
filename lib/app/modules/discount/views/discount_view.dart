import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/discount_controller.dart';

class DiscountView extends GetView<DiscountController> {
  const DiscountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DiscountView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DiscountView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
