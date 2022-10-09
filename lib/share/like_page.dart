import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_2/routes/router.gr.dart';
import 'package:nested_navigation_2/share/share_page.dart';

class LikePage extends StatefulWidget {
  LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> with SingleTickerProviderStateMixin {
  //AnimationController animationController = AnimationController(vsync: this,duration:  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Like Page'),
      ),
      body: Container(
        color: Colors.pink,
        child: TextButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return Material(
                    child: Container(
                      height: 400,
                      child: Text('data'),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide.none,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          child: Text('Menüü'),
        ),
      ),
    );

    /* BottomSheet(
      onClosing: () => context.router.pop(),
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 300,
          color: Colors.amber,
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  child: Text('Hüseyin'),
                );
              },
            ),
            child: Text('Bottom Sheet'),
          ),
        );
      },
    ); */
  }
}
