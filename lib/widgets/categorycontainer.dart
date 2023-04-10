import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String title, img;
  const CategoryContainer({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (InkWell(
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
              img,
            ))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
