import 'package:flutter/material.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        height: 300,
        child: Column(
          children: [
            const Text('Join The Movement',
                style: TextStyle(
                    color: Color(0xff0746BF),
                    fontSize: 25,
                    fontWeight: FontWeight.w900)),
            const SizedBox(height: 30),
            const SizedBox(
                width: 300,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Name'),
                )),
            const SizedBox(height: 10),
            const SizedBox(
                width: 300,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Email Address'),
                )),
            const SizedBox(height: 10),
            SizedBox(
                width: 300,
                height: 50,
                child: TextButton(
                    onPressed: _sendEmail(),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff0746BF)),
                    ),
                    child: Text('GET INVOLVED',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.w900)))),
          ],
        ));
  }
}

_sendEmail() {}
