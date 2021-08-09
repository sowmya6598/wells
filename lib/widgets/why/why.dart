import 'package:flutter/material.dart';

class Why extends StatelessWidget {
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
                    border: Border.all(width: 4, color: Color(0xff0746BF)),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text('Text 1'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900)),
                      Text('Text 2',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500))
                    ],
                  ));
            }));
  }
}
