import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});


  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;

    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1,
      shrinkWrap: true,
      children: [
        Container(
          child: Center(child: Text("Red 1")),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          child: Center(child: Text("Blue 2")),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 73, 128),
            borderRadius: BorderRadius.circular(10),
          ),
          
        ),
        Container(
          child: Center(child: Text("Green 3")),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          child: Center(child: Text("Yellow 4")),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}