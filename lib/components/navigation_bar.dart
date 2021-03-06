import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: redColor,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(flex: 1),
          Padding(
              padding: EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Text('RENWARD ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w100)),
                    Text('WELLS',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0))
                  ]),
                  Text('BAMBOO TOWN',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                      ))
                ],
              )),
          Spacer(flex: 1),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 50.0,
                height: 30.0,
                child: GestureDetector(
                  onTap: _launchURL(
                      'https://www.facebook.com/RenwardWells.MP.BambooTown'),
                  child: Image.asset('assets/facebook.png'),
                ),
              ),
              SizedBox(
                width: 50.0,
                height: 30.0,
                child: GestureDetector(
                  onTap: _launchURL('https://twitter.com/RenwardWells'),
                  child: Image.asset('assets/twitter.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

_launchURL(url) {}
