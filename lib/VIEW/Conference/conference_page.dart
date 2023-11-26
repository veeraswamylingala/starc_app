import 'package:c_star/Utils/styles.dart';
import 'package:flutter/material.dart';

class ConferencePage extends StatefulWidget {
  final Map selectedConference;
  final List<Map> allConference;
  const ConferencePage(
      {super.key,
      required this.selectedConference,
      required this.allConference});

  @override
  State<ConferencePage> createState() => _ConferencePageState();
}

class _ConferencePageState extends State<ConferencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("CONFERENCE"),
      ),
      bottomSheet: GestureDetector(
        onTap: (() {}),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: styles.bcolor,
          child: Center(
            child: Text(
              "REGISTER NOW",
              style: styles.headerStyle,
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  widget.selectedConference['image'],
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: styles.bcolor,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ON 8th Dec",
                              style: styles.textStyle,
                            ),
                            OutlinedButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        const BorderSide(
                                            color: Colors.white,
                                            width: 1.0,
                                            style: BorderStyle.solid))),
                                onPressed: () {},
                                child: Text(
                                  "I AM INTERESTED",
                                  style: styles.textStyle,
                                ))
                          ],
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "CONTENT",
                    style: styles.textStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Text(
                      "STAR CONFERENCES IS EXTREMELY PASSIONATE IN 3C'S, CREATING, CONNECTIONS AND CONVERSIONS AMONG RESEARCH SCIENTISTS AND RESEARCHERS AS LEADING EXPERTS TO INTEGRATE B2B BUSINESSES AMONG INDI- VIDUALS, AND COMPANIES TO CONNECT, COMMUNICATE CULTIVATE AND CONVERT RESEARCH IDEAS ELEGANTLY AND EFFICIENTLY FOR HUMAN MANKIND.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "SPEAKERS",
                    style: styles.textStyle,
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/speaker1.jpeg'),
                                ),
                              ),
                              Text(
                                "SPEAKER",
                                style: styles.textStyle,
                              )
                            ],
                          ),
                        );
                      })),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "YOU MIGHT ALSO LIKE",
                    style: styles.textStyle,
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.allConference.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      widget.allConference[index]['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 100,
                              child: Column(
                                children: [
                                  const Expanded(
                                    flex: 5,
                                    child: SizedBox(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      width: double.infinity,
                                      color: Colors.black54,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            widget.allConference[index]
                                                ['title'],
                                            style: styles.textStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
