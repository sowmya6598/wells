import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQ createState() => _FAQ();
}

class _FAQ extends State<FAQ> {
  bool isFAQOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 1,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  height: 50,
                  child: Column(
                    children: [
                      Row(children: [
                        Text('$isFAQOpen'.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: isFAQOpen
                                    ? Color(0xff0746BF)
                                    : Colors.grey)),
                        ElevatedButton(
                            child: Image.asset('assets/twitter.png'),
                            onPressed: () {
                              setState(() {
                                isFAQOpen = !isFAQOpen;
                              });
                            }),
                      ]),
                      isFAQOpen
                          ? Container(child: Text('HELLO'))
                          : Container(height: 0)
                    ],
                  ));
            }));
  }
}
