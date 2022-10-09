import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_2/routes/router.gr.dart';
import 'package:nested_navigation_2/share/like_page.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(22),
        child: Wrap(
          spacing: 20,
          children: [
            TextButton(
              onPressed: () => Get.to(() => LikePage(), transition: Transition.cupertino),
              child: Container(
                width: 200,
                height: 300,
                child: Image.network('https://picsum.photos/200/300'),
              ),
            ),
            Container(
              width: 200,
              height: 300,
              child: Image.network('https://picsum.photos/200/300'),
            ),
            Container(
              width: 200,
              height: 300,
              child: Image.network('https://picsum.photos/200/300'),
            ),
          ],
        ),
      ),
    );
  }
}
