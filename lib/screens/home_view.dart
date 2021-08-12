import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';
import 'package:fnm_wells/components/navigation_bar.dart';
import 'package:fnm_wells/components/join.dart';
import 'package:fnm_wells/components//meet.dart';
import 'package:fnm_wells/components/why.dart';
import 'package:fnm_wells/components/faq.dart';
import 'package:fnm_wells/components/footer.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          NavigationBar(),
          Join(),
          Meet(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Why Am I Running',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: blackColor)),
            TextSpan(
                text: ' ?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: redColor)),
          ])),
          Why(),
          SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('FAQ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 30),
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
