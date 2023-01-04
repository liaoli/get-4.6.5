import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    update();
  }
}

class Counter extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(context) {
    // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
    final Controller c = Get.put(Controller());

    return Scaffold(
        // 使用Obx(()=>每当改变计数时，就更新Text()。
        appBar: AppBar(title: Obx(() => Text("Clicks: ${count}"))),

        // 用一个简单的Get.to()即可代替Navigator.push那8行，无需上下文！
        body: Center(
          child: Column(
            children: [
              GetBuilder<Controller>(
                init: c,
                builder: (s) => Text('${s.count}'),
              ),
              ElevatedButton(
                  child: Text("add "), onPressed: c.increment),
              ElevatedButton(
                  child: Text("Go to Other"), onPressed: () => Get.to(()=>Other()))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              count.value++;
            }));
  }
}

class Other extends StatelessWidget {
  // 你可以让Get找到一个正在被其他页面使用的Controller，并将它返回给你。
  // final Controller c = Get.find();

  @override
  Widget build(context) {
    // 访问更新后的计数变量
    return Scaffold(body: Center(child: Text("test")));
  }
}
