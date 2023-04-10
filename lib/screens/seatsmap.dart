import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seatgeeks/providers/seatstitleprovider.dart';
import 'package:seatgeeks/widgets/seatscontainer.dart';

class MySeats extends StatefulWidget {
  // Map<String,dynamic> myMap={

  // }
  @override
  State<MySeats> createState() => _MySeatsState();
}

class _MySeatsState extends State<MySeats> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double deviceHeight = size.height;
    final double deviceWidth = size.width;
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          title: Consumer<SeatsProvider>(
            builder: (context, value, child) {
              return Text(
                value.selectedItems,
                style: const TextStyle(color: Colors.black),
              );
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: deviceHeight / 2,
              width: deviceWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 251, 220, 220),
                  image: const DecorationImage(
                      image: AssetImage("images/download.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '1733 Listings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth / 28),
                      ),
                      const Spacer(),
                      const Image(
                        image: AssetImage('images/updownarrow.png'),
                        height: 15,
                        width: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sort by Price',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth / 28),
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Image.asset(
                        'images/ticket.png',
                        height: deviceHeight / 10,
                        width: deviceWidth / 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Returnable until 2:30pm on Apr 12',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: deviceWidth / 28),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline_rounded),
                        iconSize: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: deviceWidth,
                    height: deviceHeight / 2,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SeatsContainer(),
                            const SizedBox(
                              child: const Divider(
                                thickness: 1,
                              ),
                              height: 20,
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
