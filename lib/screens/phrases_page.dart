import 'package:flutter/material.dart';
import 'package:learn_germany/components/list_itema.dart';
import 'package:learn_germany/model/items.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Items> phrases = const [
    Items(
      geName: 'WWie heißt du?',
      enName: 'what is your name?',
      sound: 'what is your name.mp3',
    ),
    Items(
      geName: 'Wie alt bist du?',
      enName: 'How old are you?',
      sound: 'How old are you.mp3',
    ),
    Items(
      geName: 'Wie teuer ist das?',
      enName: 'How much does it cost?',
      sound: 'How much does it cost.mp3',
    ),
    Items(
      geName: 'Wo befindet sich das Hotel?',
      enName: 'Where is the hotel?',
      sound: 'Where is the hotel.mp3',
    ),
    Items(
      geName: 'WWas bedeutet das?',
      enName: 'What does this mean?',
      sound: 'What does this mean.mp3',
    ),
    Items(
      geName: 'Ich bin verloren',
      enName: 'I am lost ',
      sound: 'I am lost.mp3',
    ),
    Items(
      geName: 'WWo kann ich ein Auto mieten?',
      enName: 'Where can i hire a car?',
      sound: 'Where can i hire a car.mp3',
    ),
    Items(
      geName: 'Wie nennt man das?',
      enName: 'What do you call this?',
      sound: 'What do you call this.mp3',
    ),
    Items(
      geName: 'Ich möchte essen',
      enName: 'I want to eat',
      sound: 'I want to eat.mp3',
    ),
    Items(
      geName: 'Ich bin durstig.',
      enName: 'I\'m thirsty.',
      sound: 'I am thirsty..mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade300,
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PharsesItems(
            number: phrases[index],
            color: Colors.blue.shade300,
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
