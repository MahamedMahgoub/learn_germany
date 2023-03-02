import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learn_germany/model/items.dart';

class ListItems extends StatelessWidget {
  const ListItems(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Items number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: color,
        height: 71,
        child: Row(
          children: [
            Container(
              color: Colors.orange[100],
              child: Image.asset(
                number.image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.geName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  print('Mohamed');
                  AudioCache player =
                      new AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PharsesItems extends StatelessWidget {
  const PharsesItems(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Items number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: color,
        height: 71,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.geName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  AudioCache player =
                      new AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
