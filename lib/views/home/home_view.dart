import 'package:flutter/material.dart';
import 'package:fnm_wells/widgets/navigationBar/navigation_bar.dart';
import 'package:fnm_wells/widgets/join/join.dart';
import 'package:fnm_wells/widgets/meet/meet.dart';
import 'package:fnm_wells/widgets/why/why.dart';
import 'package:fnm_wells/widgets/faq/faq.dart';
import 'package:fnm_wells/widgets/footer/footer.dart';

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
                        color: Color(0xffDE0000),
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
