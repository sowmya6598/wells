import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';
import 'package:fnm_wells/responsive.dart';

class Meet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    var _size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 150, horizontal: _width / 6),
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
                        color: redColor,
                        thickness: 3.0,
                      )),
                ],
              )),
          SizedBox(height: 20),
          if (isDesktop(context) || isTablet(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: !isMobile(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: !isMobile(context)
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.center,
                    children: [
                      Text(
                        'LOREN IPSUM DOLOR SIT',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'ET REPELLET OFFICIS',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ]),
                SizedBox(width: 20),
                Flexible(
                    child: Text(
                        'Lorem ipsum dolor sit amet. Et repellat officiis sit expedita recusandae eos consequatur maiores quo consequatur odit et quia animi? Non dolores asperiores sit mollitia ipsa et molestiae minima eum dolore soluta id dolor beatae! Hic asperiores exercitationem ex tenetur labore in voluptatem ratione?'))
              ],
            ),
          if (isMobile(context))
            Column(
              children: [
                SizedBox(height: 20),
                Text('"LOREN IPSUM DOLOR SIT AMET. ET REPELLET OFFICIS"',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                SizedBox(height: 50),
                Text(
                    'Lorem ipsum dolor sit amet. Et repellat officiis sit expedita recusandae eos consequatur maiores quo consequatur odit et quia animi? Non dolores asperiores sit mollitia ipsa et molestiae minima eum dolore soluta id dolor beatae! Hic asperiores exercitationem ex tenetur labore in voluptatem ratione?'),
              ],
            )
        ],
      ),
    );
  }
}
