import 'package:flutter/material.dart';

class SeatsContainer extends StatefulWidget {
  @override
  State<SeatsContainer> createState() => _SeatsContainerState();
}

class _SeatsContainerState extends State<SeatsContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double deviceHeight = size.height;
    final double deviceWidth = size.width;
    // TODO: implement build
    return (InkWell(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: deviceHeight / 5,
              width: deviceWidth / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(179, 247, 199, 199),
                  image: const DecorationImage(
                      image: AssetImage('images/download.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('\$23',
                          style: TextStyle(
                            fontSize: deviceHeight / 35,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text('View in VR')),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '9.0',
                        style: TextStyle(
                            fontSize: deviceHeight / 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            backgroundColor:
                                const Color.fromARGB(255, 2, 145, 7)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Amazing deal',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 2, 145, 7),
                          fontSize: deviceHeight / 40,
                        ),
                      )
                    ],
                  ),
                  const Text('2 Tickets',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 131, 128, 128))),
                  const Text('Section 222, Row 54',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 131, 128, 128)))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
