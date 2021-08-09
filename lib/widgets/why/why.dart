import 'package:flutter/material.dart';

class Why extends StatelessWidget {
  final List<Map> reasons = [
    {"title": 'TITLE 1', "detail": 'DETAIL 1'},
    {"title": 'TITLE 2', "detail": 'DETAIL 2'},
    {"title": 'TITLE 3', "detail": 'DETAIL 3'},
    {"title": 'TITLE 4', "detail": 'DETAIL 4'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        height: 900,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: reasons.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(width: 4, color: Color(0xff0746BF)),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(reasons[index]["title"].toUpperCase(),
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900)),
                      SizedBox(height: 10),
                      Text(reasons[index]["detail"],
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500))
                    ],
                  ));
            }));
  }
}
