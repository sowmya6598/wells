import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQ createState() => _FAQ();
}

class _FAQ extends State<FAQ> {
  int selectedFAQ = -1;

  @override
  Widget build(BuildContext context) {
    final List<Map> faq = [
      {"question": 'Question 1', "answer": 'Answer 1'},
      {"question": 'Question 2', "answer": 'Answer 2'},
      {"question": 'Question 3', "answer": 'Answer 3'},
      {"question": 'Question 4', "answer": 'Answer 4'}
    ];

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 200),
        height: 600,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: faq.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    border: Border.all(width: 2, color: greyColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(faq[index]["question"].toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: selectedFAQ == index
                                        ? blueColor
                                        : greyColor)),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                child: selectedFAQ == index
                                    ? Image.asset('assets/blue_arrow.png')
                                    : Image.asset('assets/grey_arrow.png'),
                                onPressed: () {
                                  setState(() {
                                    if (selectedFAQ == index) {
                                      selectedFAQ = -1;
                                    } else {
                                      selectedFAQ = index;
                                    }
                                  });
                                }),
                          ]),
                      selectedFAQ == index
                          ? Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(faq[index]["answer"]))
                          : Container(height: 0)
                    ],
                  ));
            }));
  }
}
