import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_2/Screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen3()),
            );
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "color palette",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Nimbus',
                        fontSize: 40,
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          renderContainer(context, 0xFFACA9BE),
                          renderContainer(context, 0xFFE1D1DE),
                          renderContainer(context, 0xFFEEE3EB),
                          renderContainer(context, 0xFFF6F0F4),
                          renderContainer(context, 0xFF354035),
                          renderContainer(context, 0xFF3C483A),
                          renderContainer(context, 0xFFA9AAC0),
                          renderContainer(context, 0xFFBAB2C7),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/pic_2.jpg',
              height: MediaQuery.of(context).size.width,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
          ],
        ));
  }

  Widget renderContainer(BuildContext context, int color) {
    return Container(
        decoration: new BoxDecoration(
            color: Color(color), borderRadius: BorderRadius.circular(50)),
        width: (MediaQuery.of(context).size.width - 20 * 4) / 4,
        height: (MediaQuery.of(context).size.width - 20 * 4) / 4);
  }
}