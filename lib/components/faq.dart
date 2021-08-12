import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';
import 'package:fnm_wells/responsive.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQ createState() => _FAQ();
}

class _FAQ extends State<FAQ> {
  int selectedFAQ = -1;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    var _size = MediaQuery.of(context).size;

    final List<Map> faq = [
      {
        "question": 'Question 1 is a lot of text and a lot of text',
        "answer": 'Answer 1'
      },
      {"question": 'Question 2 is a lot of text', "answer": 'Answer 2'},
      {"question": 'Question 3 is a lot of text', "answer": 'Answer 3'},
      {"question": 'Question 4 is a lot of text', "answer": 'Answer 4'}
    ];

    return Container(
        margin: EdgeInsets.symmetric(horizontal: _width * 0.2),
        height: _height,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: faq.length,
            itemBuilder: (BuildContext ctx, index) {
              return Flexible(
                  child: Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Text(
                                          faq[index]["question"].toUpperCase(),
                                          style: TextStyle(
                                              fontSize:
                                                  isDesktop(context) ? 16 : 12,
                                              fontWeight: FontWeight.w800,
                                              color: selectedFAQ == index
                                                  ? blueColor
                                                  : greyColor))),
                                  TextButton(
                                      style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.white),
                                      ),
                                      child: selectedFAQ == index
                                          ? Image.asset('assets/blue_arrow.png')
                                          : Image.asset(
                                              'assets/grey_arrow.png'),
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
                          ])));
            }));
  }
}
