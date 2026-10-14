import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: widthScreen / heightScreen,

        children: [
          Container(
            child: Center(child: Text("1")),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("2")),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("3")),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("4")),
          ),
        ],
      ),
    );
  }
}