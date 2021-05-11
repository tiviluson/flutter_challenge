// import 'package:flutter/material.dart';
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       physics: AlwaysScrollableScrollPhysics(),
//       children: [
//         Container(
//           width: 428.0,
//           height: 535.0,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: const AssetImage('assets/pic_1.jpg'),
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//         Center(
//           child: Text(
//             'color palette',
//             style: TextStyle(
//               fontFamily: 'Helvetica Neue',
//               fontSize: 40,
//               color: const Color(0xff707070),
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xff313036),
//             //   ),
//             // ),
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xff1b304b),
//             //   ),
//             // ),
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xff344869),
//             //   ),
//             // ),
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xffb1b8c0),
//             //   ),
//             // ),
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xffd5d5d5),
//             //   ),
//             // ),
//             // Container(
//             //   width: 51.0,
//             //   height: 183.0,
//             //   decoration: BoxDecoration(
//             //     color: const Color(0xfff1f1ef),
//             //   ),
//             // ),
//             colorContainer(context, 0x313036),
//             colorContainer(context, 0x1B304B),
//             colorContainer(context, 0x344869),
//             colorContainer(context, 0xB1B8C0),
//             colorContainer(context, 0xD5D5D5),
//             colorContainer(context, 0xF1F1EF),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget colorContainer(BuildContext context, int color) {
//     return Container(
//         decoration: BoxDecoration(color: Color(0xFF000000 | color)),
//         width: (MediaQuery.of(context).size.width - 10 * 7) / 6,
//         height: (MediaQuery.of(context).size.width - 10 * 7) / 6 * 2.5
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_2/Screen2.dart';
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Screen2()
              ),
            );
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/pic_1.jpg',
              width: double.infinity,
              height: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
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
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          colorContainer(context, 0xFF313036),
                          colorContainer(context, 0xFF1B304B),
                          colorContainer(context, 0xFF344869),
                          colorContainer(context, 0xFFB1B8C0),
                          colorContainer(context, 0xFFD5D5D5),
                          colorContainer(context, 0XFFF1F1EF)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
    );
  }

  Widget colorContainer(BuildContext context, int color) {
    return Container(
        decoration: BoxDecoration(color: Color(color)),
        width: (MediaQuery.of(context).size.width - 10 * 7) / 6,
        height: (MediaQuery.of(context).size.width - 10 * 7) / 6 * 2.5
    );
  }
}