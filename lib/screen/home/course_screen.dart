import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/select_tab_button.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/home/home_screen.dart';
import 'package:meditation/screen/main_tab/main_tab_screen.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  int selectTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroll) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              expandedHeight: context.width * 0.6,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: InkWell(
                  onTap: () {
                    context.push(MainTabScreen());
                  },
                  child: Image.asset(
                    'assets/img/back_white.png',
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
              actionsPadding: EdgeInsets.only(top: 20),
              actions: [
                SizedBox(height: 15),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/img/fav_button.png',
                    width: 45,
                    height: 45,
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/img/download_button.png',
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/img/detail_top.png',
                    width: context.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Happy Morning",
                      style: TextStyle(
                        color: MyColor.primaryText,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "COURSE",
                      style: TextStyle(
                        color: MyColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Ease the mind into a restful night’s sleep  with these deep, amblent tones.",
                      style: TextStyle(
                        color: MyColor.secondaryText,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/fav.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "24.234 Favorits",
                            style: TextStyle(
                              color: MyColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/img/headphone.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "34.234 Lestening",
                            style: TextStyle(
                              color: MyColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Pick a Narrator",
                      style: TextStyle(
                        color: MyColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    SelectTabButton(
                      title: "MALE VOICE",
                      isSelect: selectTab == 0,
                      onPressed: () {
                        setState(() {
                          selectTab = 0;
                        });
                      },
                    ),
                    SelectTabButton(
                      title: "FEMALE VOICE",
                      isSelect: selectTab == 1,
                      onPressed: () {
                        setState(() {
                          selectTab = 1;
                        });
                      },
                    ),
                  ],
                ),
                const Divider(height: 2),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            index == 0
                                ? "assets/img/play_color.png"
                                : "assets/img/play_border.png",
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Focue Attention",
                                  style: TextStyle(
                                    color: MyColor.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                const SizedBox(height: 4),
                                Text(
                                  "10 MIN",
                                  style: TextStyle(
                                    color: MyColor.secondaryText,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemCount: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
