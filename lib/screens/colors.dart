import 'package:flutter/material.dart';
import 'package:learn_germany/components/list_itema.dart';
import 'package:learn_germany/model/items.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({Key? key}) : super(key: key);
  final List<Items> colors = const [
    Items(
      image: 'assets/images/colors/color_black.png',
      geName: 'Eins',
      enName: 'Black',
      sound: 'black.mp3',
    ),
    Items(
      image: 'assets/images/colors/color_brown.png',
      geName: 'Zwei',
      enName: 'Brown',
      sound: 'brown.mp3',
    ),
    Items(
      image: 'assets/images/colors/color_gray.png',
      geName: 'Drei',
      enName: 'Gray',
      sound: 'gray.mp3',
    ),
    Items(
      image: 'assets/images/colors/color_green.png',
      geName: 'Vier',
      enName: 'Green',
      sound: 'green.mp3',
    ),
    Items(
      image: 'assets/images/colors/color_red.png',
      geName: 'Fünf',
      enName: 'Red',
      sound: 'red.mp3',
    ),
    Items(
      image: 'assets/images/colors/color_white.png',
      geName: 'sxi',
      enName: 'White',
      sound: 'white.mp3',
    ),
    Items(
      image: 'assets/images/colors/yellow.png',
      geName: 'Sieben',
      enName: 'Yellow',
      sound: 'yellow.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red.shade300,
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItems(
            number: colors[index],
            color: Colors.red.shade300,
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
