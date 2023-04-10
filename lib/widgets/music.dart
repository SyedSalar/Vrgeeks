import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seatgeeks/providers/favouriteprovider.dart';
import 'package:seatgeeks/providers/seatstitleprovider.dart';

class MyMusic extends StatefulWidget {
  MyMusic({super.key});

  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {
  String isChecked = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Row(
      children: [
        Divider(),
        IconButton(
            onPressed: () {
              if (isChecked == '') {
                isChecked = 'true';
              } else {
                isChecked = '';
              }
              print(isChecked);
              setState(() {});
            },
            icon: isChecked == '' ? Icon(Icons.play_arrow) : Icon(Icons.pause)),
        Divider(),
      ],
    ));
  }
}
