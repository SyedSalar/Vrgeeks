import 'package:flutter/material.dart';

import '../widgets/music.dart';
import '../widgets/specificcategorypagecontainer.dart';
import '../widgets/subcategorycontainer.dart';

class MyConcertPage extends StatefulWidget {
  const MyConcertPage({super.key});

  @override
  State<MyConcertPage> createState() => _MyConcertPageState();
}

class _MyConcertPageState extends State<MyConcertPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Concerts'),
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
                      title: '\$386+',
                      img: 'images/concerts1.jpg',
                      mtext: 'Shaky Knees Music',
                      stext: 'Tommorrow - 8 PM'),
                  MyMusic(),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$123+',
                      img: 'images/concerts2.webp',
                      mtext: '21 Savage with Crewella',
                      stext: 'Fri, March 5, Time TBD'),
                  MyMusic(),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$24+',
                      img: 'images/concerts3.jpg',
                      mtext: 'Paramore',
                      stext: 'Thu, May 25, 7 PM'),
                  MyMusic(),
                ],
              ),
            ),
          )),
    ));
  }
}
