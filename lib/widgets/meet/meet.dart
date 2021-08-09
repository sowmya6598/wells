import 'package:flutter/material.dart';

class Meet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          Text('MEET'),
          Text('Renward'),
          Divider(color: Color(0xffDE0000)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('LOREN IPSUM DOLOR SIT AMET. ET REPELLET OFFICIS'),
              Text(
                  'Lorem ipsum dolor sit amet. Et repellat officiis sit expedita recusandae eos consequatur maiores quo consequatur odit et quia animi? Non dolores asperiores sit mollitia ipsa et molestiae minima eum dolore soluta id dolor beatae! Hic asperiores exercitationem ex tenetur labore in voluptatem ratione?')
            ],
          )
        ],
      ),
    );
  }
}
