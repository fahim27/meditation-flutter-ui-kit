import 'package:flutter/material.dart';
import 'package:meditation/common_widget/tab_button.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/home/home_screen.dart';
import 'package:meditation/screen/meditate/meditate_screen.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({Key? key}) : super(key: key);

  @override
  _MainTabScreenState createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          HomeScreen(),
          Container(width: 200, height: 200, color: Colors.yellow),
          MeditateScreen(),
          Container(width: 200, height: 200, color: Colors.red),
          Container(width: 200, height: 200, color: Colors.blue),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 8),
        decoration: BoxDecoration(
          color: selectTab == 3 || selectTab == 1
              ? MyColor.sleep
              : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                icon: "assets/img/home_tab.png",
                title: "Home",
                isSelect: selectTab == 0,
                onPressed: () {
                  changeTab(0);
                },
              ),
              TabButton(
                icon: "assets/img/sleep_tab.png",
                title: "Sleep",
                isSelect: selectTab == 1,
                onPressed: () {
                  changeTab(1);
                },
              ),

              TabButton(
                icon: "assets/img/meditate_tab.png",
                title: "Meditate",
                isSelect: selectTab == 2,
                onPressed: () {
                  changeTab(2);
                },
              ),

              TabButton(
                icon: "assets/img/music_tab.png",
                title: "Music",
                isSelect: selectTab == 3,
                onPressed: () {
                  changeTab(3);
                },
              ),

              TabButton(
                icon: "assets/img/profile_tab.png",
                title: "Afsar",
                isSelect: selectTab == 4,
                onPressed: () {
                  changeTab(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeTab(int index) {
    selectTab = index;
    controller?.animateTo(index);
    setState(() {});
  }
}
