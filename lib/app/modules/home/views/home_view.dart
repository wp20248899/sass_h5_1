import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sass_h5_1/app/components/cdImage/cdImage.dart';
import 'package:sass_h5_1/app/components/cdImage/cdImageCopy.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'home',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: CdImage(src: '1.jpg', width: 100, height: 100)),
          Center(
            child: CdPublicImage(
              src: '1.jpg',
              width: 150,
              height: 150,
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }
}
