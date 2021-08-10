import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';
import 'package:fnm_wells/navigation_bar.dart';
import 'package:fnm_wells/join.dart';
import 'package:fnm_wells/meet.dart';
import 'package:fnm_wells/why.dart';
import 'package:fnm_wells/faq.dart';
import 'package:fnm_wells/footer.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          NavigationBar(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Join(),
            Container(height: 300, child: Image.asset('assets/face.png'))
          ]),
          Meet(),
          Text('Why Am I Running?',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
          Why(),
          SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('FAQ',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Divider(
                        color: redColor,
                        thickness: 3.0,
                      )),
                ],
              )),
          FAQ(),
          Footer()
        ],
      )),
    );
  }
}
