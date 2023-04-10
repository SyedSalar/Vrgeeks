import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seatgeeks/providers/favouriteprovider.dart';
import 'package:seatgeeks/providers/seatstitleprovider.dart';
import 'package:seatgeeks/screens/seatsmap.dart';

class SubCategoryPageContainer extends StatefulWidget {
  final String title, img, mtext, stext;
  bool istrue = false;
  SubCategoryPageContainer(
      {super.key,
      required this.title,
      required this.img,
      required this.mtext,
      required this.stext});

  @override
  State<SubCategoryPageContainer> createState() =>
      _SubCategoryPageContainerState();
}

class _SubCategoryPageContainerState extends State<SubCategoryPageContainer> {
  @override
  Widget build(BuildContext context) {
    SeatsProvider seatsProvider = Provider.of<SeatsProvider>(context);
    final Size size = MediaQuery.of(context).size;
    final double deviceHeight = size.height;
    final double deviceWidth = size.width;
    print('build');
    // TODO: implement build
    return (Column(children: [
      InkWell(
        onTap: () {
          if (seatsProvider.selectedItems != widget.mtext) {
            seatsProvider.addItems(widget.mtext);
          } else {
            seatsProvider.removeItems(widget.mtext);
          }
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MySeats(),
              ));
        },
        child: Container(
          height: deviceHeight / 3,
          width: deviceWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.img,
                  ))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    child: Consumer<FavouriteProvider>(
                        builder: (context, value, child) {
                      return IconButton(
                          onPressed: () {
                            if (value.selectedItems.contains(widget.mtext)) {
                              value.removeItems(widget.mtext);
                            } else {
                              value.addItems(widget.mtext);
                            }
                          },
                          icon: value.selectedItems.contains(widget.mtext)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.red,
                                ));
                    })),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        backgroundColor: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              widget.mtext,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(widget.stext,
                style: const TextStyle(
                  color: Color.fromARGB(255, 116, 115, 115),
                )),
          ],
        ),
      )
    ]));
  }
}
