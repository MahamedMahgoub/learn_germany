import 'package:flutter/material.dart';
import 'package:learn_germany/components/list_itema.dart';
import 'package:learn_germany/model/items.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Items> numbers = const [
    Items(
      image: 'assets/images/numbers/number_one.png',
      geName: 'Eins',
      enName: 'one',
      sound: 'one.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_two.png',
      geName: 'Zwei',
      enName: 'two',
      sound: 'two.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_three.png',
      geName: 'Drei',
      enName: 'three',
      sound: 'three.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_four.png',
      geName: 'Vier',
      enName: 'four',
      sound: 'four.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_five.png',
      geName: 'Fünf',
      enName: 'five',
      sound: 'five.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_six.png',
      geName: 'sxi',
      enName: 'six',
      sound: 'six.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_seven.png',
      geName: 'Sieben',
      enName: 'seven',
      sound: 'seven.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_eight.png',
      geName: 'Acht',
      enName: 'eight',
      sound: 'eight.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_nine.png',
      geName: 'Neun',
      enName: 'nine',
      sound: 'nine.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_ten.png',
      geName: 'Zehn',
      enName: 'ten',
      sound: 'ten.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade300,
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItems(
            number: numbers[index],
            color: Colors.green.shade300,
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}
/* important
دا لو انا مكنتش استخدمت الليست فيو بيلدر كنت هحتاج اللوب دى 
علشان امر على القيم واضيفها ف الليست بتاعتى واعرضها على الاسكرين 
List<NumItems> getList(List<Numbers> numbers) {
  List<NumItems> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(NumItems(number: numbers[i]));
  }
  return itemList;
}
*/
