import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/home/reminder_screen.dart';

class ChoseTopic extends StatefulWidget {
  const ChoseTopic({super.key});

  @override
  State<ChoseTopic> createState() => _ChoseTopicState();
}

class _ChoseTopicState extends State<ChoseTopic> {
  List dataArr = [
    {
      "image": "assets/img/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Improve Performanee",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Improve Performanee",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 10,right: 20,bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What Brings you",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff3F414E),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "to Silent Moon?",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xffA1A4B2)
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "choose a topic to focuse on",
                    style: TextStyle(color: Color(0xffA1A4B2), fontSize: 20),
                  ),
                ],
              ),
            ),

            Expanded(
              child: MasonryGridView.count(
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: 10,
                itemBuilder: (context, index) {
                  var height = index % 4 == 0 || index % 4 == 2
                      ? context.width * 0.55
                      : context.width * 0.45;
                  var dataObj = dataArr[index] as Map ?? {};

                  return InkWell(
                    onTap: (){
                       context.push(const ReminderScreen());
                    },
                    child: Container(
                      height: height,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: HexColor.formHex(dataObj['color']),
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
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        dataObj["title"],
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: HexColor.formHex(
                                            dataObj["text_color"],
                                          ),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
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
