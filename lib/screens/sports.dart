import 'package:flutter/material.dart';

import '../widgets/specificcategorypagecontainer.dart';
import '../widgets/subcategorycontainer.dart';

class MySportsPage extends StatefulWidget {
  const MySportsPage({super.key});

  @override
  State<MySportsPage> createState() => _MySportsPageState();
}

class _MySportsPageState extends State<MySportsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Sports'),
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
                      img: 'images/sports1.jpg',
                      mtext: 'Mavericks at Hawks',
                      stext: 'Today - 6 PM'),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$53+',
                      img: 'images/sports2.jpg',
                      mtext: 'Jazz at Nets',
                      stext: 'Sat, Nov 25, Time TBD'),
                  const SizedBox(
                    height: 20,
                  ),
                  SubCategoryPageContainer(
                      title: '\$24+',
                      img: 'images/sports3.jpg',
                      mtext: 'Texas A&M Aggies at Auburn',
                      stext: 'Sat, Apr 8, Time TBD')
                ],
              ),
            ),
          )),
    ));
  }
}
