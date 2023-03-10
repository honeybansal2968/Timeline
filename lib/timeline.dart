import 'package:flutter/material.dart';
import 'package:online_mic_task2/color_utils.dart';
import 'package:online_mic_task2/timeLineCard.dart';

class TimeLine extends StatefulWidget {
  TimeLine({super.key});

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  late List<TimelineCard> timeline;

  @override
  void initState() {
    timeline = _getCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contest Schedule"),
        backgroundColor: Color.fromARGB(255, 1, 60, 252),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: timeline.length,
            itemBuilder: (context, index) {
              return Container(
                  child: (timeline[index].date2 != null)
                      ? Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  height: 122,
                                  child: Column(children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 1,
                                          height: 12,
                                          color: hexStringToColor("C4C4C4"),
                                        ),
                                        Text(
                                          timeline[index].date1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Text(
                                          timeline[index].month1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 1,
                                      height: 25,
                                      color: hexStringToColor("C4C4C4"),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          timeline[index].date2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Text(
                                          timeline[index].month2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 1,
                                      height: 12,
                                      color: hexStringToColor("C4C4C4"),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border(
                                    top: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    bottom: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    left: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    right: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF"))),
                              ),
                              height: 95,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      timeline[index].title,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: hexStringToColor("#224FA7"),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      timeline[index].description,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 14,
                                        color: hexStringToColor("#797D86"),
                                      ),
                                    )
                                  ]),
                            ))
                          ],
                        )
                      : Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  height: 60,
                                  child: Column(children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 1,
                                          height: 12,
                                          color: hexStringToColor("C4C4C4"),
                                        ),
                                        Text(
                                          timeline[index].date1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Text(
                                          timeline[index].month1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: hexStringToColor("#224FA7"),
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 1,
                                      height: 12,
                                      color: hexStringToColor("C4C4C4"),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border(
                                    top: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    bottom: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    left: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF")),
                                    right: BorderSide(
                                        width: 0.5,
                                        color: hexStringToColor("E0DFDF"))),
                              ),
                              height: 65,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      timeline[index].title,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: hexStringToColor("#224FA7"),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      timeline[index].description,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 14,
                                        color: hexStringToColor("#797D86"),
                                      ),
                                    )
                                  ]),
                            ))
                          ],
                        ));
            }),
      ),
    );
  }

  List<TimelineCard> _getCards() {
    List<TimelineCard> timelineCard = [];
    timelineCard.add(TimelineCard("Round 1", "Submission will start at 4:00 PM",
        "6", "SEPT", "9", "SEPT"));
    timelineCard.add(TimelineCard("Result Round 1",
        "Result will declare at 12 noon", "10", "SEPT", null, null));
    timelineCard.add(TimelineCard("Round 2", "Submission will start at 4:00 PM",
        "11", "SEPT", "13", "SEPT"));
    timelineCard.add(TimelineCard("Result Round 2",
        "Result will declare at 12 noon", "14", "SEPT", null, null));
    timelineCard.add(TimelineCard("Round 3", "Submission will start at 4:00 PM",
        "15", "SEPT", "17", "SEPT"));
    timelineCard.add(TimelineCard("Result Round 3",
        "Result will declare at 12 noon", "18", "SEPT", null, null));
    return timelineCard;
  }
}
