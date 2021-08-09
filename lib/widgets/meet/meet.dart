import 'package:flutter/material.dart';

class Meet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 300),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MEET',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                  Text('Renward',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        color: Color(0xffDE0000),
                        thickness: 3.0,
                      )),
                ],
              )),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Text('LOREN IPSUM DOLOR SIT AMET. ET REPELLET OFFICIS',
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w700))),
              SizedBox(width: 20),
              Flexible(
                  child: Text(
                      'Lorem ipsum dolor sit amet. Et repellat officiis sit expedita recusandae eos consequatur maiores quo consequatur odit et quia animi? Non dolores asperiores sit mollitia ipsa et molestiae minima eum dolore soluta id dolor beatae! Hic asperiores exercitationem ex tenetur labore in voluptatem ratione?'))
            ],
          )
        ],
      ),
    );
  }
}
