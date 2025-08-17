import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation/config/my_color.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation/screen/home/reminder_screen.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({Key? key}) : super(key: key);

  @override
  _MeditateScreenState createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int selectIndex = 0;
  List catArr = [
    {"icon": "assets/img/all.png", "title": "All"},
    {"icon": "assets/img/fav_m.png", "title": "My"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/fav_m.png", "title": "My"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/kids.png", "title": "Kids"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
  ];
  List dataArr = [
    {"image": "assets/img/m1.png", "title": "7 Days of Calm"},
    {"image": "assets/img/m2.png", "title": "Anxiet Release"},
    {"image": "assets/img/m4.png", "title": "Reduce Anxiety"},
    {"image": "assets/img/m3.png", "title": "Happiness"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    "Meditate",
                    style: TextStyle(
                      color: MyColor.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MyColor.secondaryText,
                      fontSize: 16,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            SizedBox(
              height: 120,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var cObj = catArr[index];
                  return InkWell(
                    onTap: () {
                      selectIndex = index;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: selectIndex == index
                                ? MyColor.primary
                                : const Color(0xffA0A3B1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            cObj["icon"],
                            width: 25,
                            height: 25,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          cObj["title"],
                          style: TextStyle(
                            color: selectIndex == index
                                ? MyColor.primary
                                : MyColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: catArr.length,
              ),
            ),
            const SizedBox(height: 35),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xffF1DDCF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/img/dailyCalm.png",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 30,
                      vertical: 25,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daily Calm",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "MEDITATION . 3-10 MIN",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/img/play.png",
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: MasonryGridView.count(
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: dataArr.length,
                itemBuilder: (context, index) {
                  var height = index % 4 == 0 || index % 4 == 2
                      ? context.width * 0.55
                      : context.width * 0.45;
                  var dataObj = dataArr[index] as Map ?? {};

                  return InkWell(
                    onTap: () {
                      context.push(const ReminderScreen());
                    },
                    child: Container(
                      height: height,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              dataObj["image"],
                              width: double.maxFinite,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10,
                                    sigmaY: 10,
                                  ),
                                  child: Container(
                                    width: double.maxFinite,
                                    color: Colors.black12,
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      dataObj["title"],
                                      maxLines: 2,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
