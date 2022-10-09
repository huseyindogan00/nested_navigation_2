import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_2/controller/controller_page.dart';
import 'package:nested_navigation_2/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ControllerPage());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AutoTabsScaffold(
        drawer: Drawer(),
        appBarBuilder: (context, tabsRouter) => AppBar(
          backgroundColor: Colors.indigo,
          title: Obx(() => Text(controller.appTitle)),
          centerTitle: true,
          leading: const AutoLeadingButton(),
        ),
        backgroundColor: Colors.indigo,
        routes: const [
          PostsRouter(),
          UsersRouter(),
          SettingsRouter(),
          ShareRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
              controller.appTitle = tabsRouter.current.name;
            },
            items: [
              SalomonBottomBarItem(
                  selectedColor: Colors.amberAccent,
                  icon: const Icon(Icons.post_add, size: 25),
                  title: const Text('Posts')),
              SalomonBottomBarItem(
                selectedColor: Colors.blue[200],
                icon: const Icon(Icons.person, size: 25),
                title: const Text('Users'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.pinkAccent[100],
                icon: const Icon(Icons.settings, size: 25),
                title: const Text('Settings'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.amber[100],
                icon: const Icon(Icons.share, size: 25),
                title: const Text('Share'),
              ),
            ],
          );
        },
      ),
    );
  }
}
