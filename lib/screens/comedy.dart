import 'package:flutter/material.dart';

import '../widgets/specificcategorypagecontainer.dart';

class MyComedyPage extends StatefulWidget {
  const MyComedyPage({super.key});

  @override
  State<MyComedyPage> createState() => _MyComedyPageState();
}

class _MyComedyPageState extends State<MyComedyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Comedy'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$36+',
                      img: 'images/comedy1.jpg',
                      mtext: 'Ali Wong',
                      stext: 'Mon - 2 PM'),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$23+',
                      img: 'images/seatgeeks-comedy.webp',
                      mtext: 'Kevin Hart',
                      stext: 'Fri, March 5, Time TBD'),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$24+',
                      img: 'images/sports1.jpg',
                      mtext: 'Tracy Morgan',
                      stext: 'Thu, May 25, 7 PM')
                ],
              ),
            ),
          )),
    ));
  }
}
