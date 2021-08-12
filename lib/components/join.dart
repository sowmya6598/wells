import 'package:flutter/material.dart';
import 'package:fnm_wells/constants.dart';
import 'package:fnm_wells/responsive.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    var _size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (isMobile(context))
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 60),
                            child: Image.asset(
                              'assets/face.png',
                              height: _height * 0.5,
                            )),
                      const Text('Join The Movement',
                          style: TextStyle(
                              color: blueColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w900)),
                      const SizedBox(height: 30),
                      SizedBox(
                          width: _width / 2,
                          child: TextField(
                            cursorColor: greyColor,
                            decoration: InputDecoration(
                                labelStyle: TextStyle(color: greyColor),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: greyColor),
                                ),
                                border: OutlineInputBorder(),
                                labelText: 'Name'),
                          )),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: _width / 2,
                          child: TextField(
                            cursorColor: greyColor,
                            decoration: InputDecoration(
                                labelStyle: TextStyle(color: greyColor),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: greyColor),
                                ),
                                border: OutlineInputBorder(),
                                labelText: 'Email Address'),
                          )),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: _width / 2,
                          height: 50,
                          child: TextButton(
                              onPressed: _sendEmail(),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(blueColor),
                              ),
                              child: Text('GET INVOLVED',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 5.0,
                                      fontWeight: FontWeight.w900)))),
                    ],
                  )),
            ),
            if (isDesktop(context) || isTablet(context))
              Expanded(
                  child: Image.asset(
                'assets/face.png',
                height: _height * 0.7,
              ))
          ],
        ));
  }
}

_sendEmail() {}
