import 'package:c_star/Utils/styles.dart';
import 'package:c_star/VIEW/Conference/conference_page.dart';
import 'package:c_star/VIEW/Home/home_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> imgList = [
    {"image": "assets/cover_image1.png", "title": "WORLD WOMEN FORUM 2023"},
    {
      "image": "assets/cover_image2.png",
      "title": "GLOBAL MENTAL HEALTH SUMMIT"
    },
    {"image": "assets/cover_image3.png", "title": "STARTECH SUMMIT"},
    {"image": "assets/cover_imae4.png", "title": "INTERNATIONAL MENTAL HEALTH"},
    {"image": "assets/cover_image5.jpeg", "title": "WORLD SOFTWARE"}
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("IT ALL STARTS HERE"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications))
            ],
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: ("CONFERENCES"),
                ),
                Tab(
                  text: ("JOURNALS"),
                ),
                Tab(
                  text: ("VIRTUAL REALITY"),
                ),
                Tab(
                  text: ("MAGAZINES"),
                ),
                Tab(
                  text: ("HYBRID"),
                )
              ],
            ),
          ),
          drawer: const HomeDrawer(),
          body: TabBarView(children: [
            tabWidget(imgList: imgList),
            tabWidget(imgList: imgList),
            tabWidget(imgList: imgList),
            tabWidget(imgList: imgList),
            tabWidget(imgList: imgList),
          ])),
    );
  }
}

class tabWidget extends StatelessWidget {
  final List<Map> imgList;

  const tabWidget({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          child: Carousel(
            images: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(item['image'],
                              fit: BoxFit.cover, width: 1000)),
                    ))
                .toList(),
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.lightGreenAccent,
            indicatorBgPadding: 5.0,
            dotBgColor: styles.bcolor,
            borderRadius: false,
          )),
      const SizedBox(
        height: 30,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              shrinkWrap: false,
              scrollDirection: Axis.vertical,
              itemCount: imgList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 3),
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ConferencePage(
                                  selectedConference: imgList[index],
                                  allConference: imgList,
                                ))));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imgList[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Expanded(
                            flex: 4,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              color: Colors.black54,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      imgList[index]['title'],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: styles.textStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                );
              }),
        ),
      )
    ]);
  }
}
