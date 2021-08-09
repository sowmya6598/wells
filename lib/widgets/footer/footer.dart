import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffDE0000),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 1),
                Text('RENWARD ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w100)),
                Text('WELLS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0)),
                Spacer(flex: 1)
              ]),
          SizedBox(height: 5),
          Text('Mackey Street #21, PO Box 1432',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white,
              )),
          SizedBox(height: 10),
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
          ),
          SizedBox(height: 20),
          Text('Developed by Sowmya Thottambeti',
              style: TextStyle(color: Colors.white, fontSize: 12)),
          Text('Copyright 2021. All rights reserved',
              style: TextStyle(color: Colors.white, fontSize: 9))
        ],
      ),
    );
  }
}

_launchURL(url) {}
