import 'package:flutter/material.dart';
import 'package:seatgeeks/screens/comedy.dart';
import 'package:seatgeeks/screens/sports.dart';
import 'package:seatgeeks/widgets/categorycontainer.dart';
import 'package:seatgeeks/widgets/subcategorycontainer.dart';

import 'concert.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: const Text('VrGeeks'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Browse by category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {}, child: const Text('View All'))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CategoryContainer(
                            title: 'Sports', img: 'images/seatgeeks-nfl.webp'),
                        SizedBox(
                          width: 20,
                        ),
                        CategoryContainer(
                          title: 'Concerts',
                          img: 'images/seatgeeks-concert.webp',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CategoryContainer(
                            title: 'Comedy',
                            img: 'images/seatgeeks-comedy.webp'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      const Text(
                        'Sports',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MySportsPage(),
                                ));
                          },
                          child: const Text('View All'))
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        SubCategoryContainer(
                            title: '\$36+',
                            img: 'images/sports1.jpg',
                            mtext: 'Mavericks at Hawks',
                            stext: 'Today - 6 PM'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$53+',
                            img: 'images/sports2.jpg',
                            mtext: 'Jazz at Nets',
                            stext: 'Sat, Nov 25, Time TBD'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$24+',
                            img: 'images/sports3.jpg',
                            mtext: 'Texas A&M Aggies at Auburn',
                            stext: 'Sat, Apr 8, Time TBD')
                      ]))
                ])),
            const Divider(
              thickness: 1,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      const Text(
                        'Concerts',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyConcertPage(),
                                ));
                          },
                          child: const Text('View All'))
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        SubCategoryContainer(
                            title: '\$386+',
                            img: 'images/concerts1.jpg',
                            mtext: 'Shaky Knees Music',
                            stext: 'Tommorrow - 8 PM'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$123+',
                            img: 'images/concerts2.webp',
                            mtext: '21 Savage with Crewella',
                            stext: 'Fri, March 5, Time TBD'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$24+',
                            img: 'images/concerts3.jpg',
                            mtext: 'Paramore',
                            stext: 'Thu, May 25, 7 PM')
                      ]))
                ])),
            const Divider(
              thickness: 1,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      const Text(
                        'Comedy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyComedyPage(),
                                ));
                          },
                          child: const Text('View All'))
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        SubCategoryContainer(
                            title: '\$36+',
                            img: 'images/comedy1.jpg',
                            mtext: 'Ali Wong',
                            stext: 'Mon - 2 PM'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$23+',
                            img: 'images/seatgeeks-comedy.webp',
                            mtext: 'Kevin Hart',
                            stext: 'Fri, March 5, Time TBD'),
                        const SizedBox(
                          width: 20,
                        ),
                        SubCategoryContainer(
                            title: '\$24+',
                            img: 'images/sports1.jpg',
                            mtext: 'Tracy Morgan',
                            stext: 'Thu, May 25, 7 PM')
                      ]))
                ])),
          ],
        ),
      ),
    ));
  }
}
