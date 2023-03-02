import 'package:flutter/material.dart';
import 'package:learn_germany/components/list_itema.dart';
import 'package:learn_germany/model/items.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({Key? key}) : super(key: key);
  final List<Items> familyMember = const [
    Items(
      image: 'assets/images/family_members/family_father.png',
      geName: 'Vater',
      enName: 'Father',
      sound: 'father.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_mother.png',
      geName: 'Mutter',
      enName: 'Mother',
      sound: 'mother.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_younger_brother.png',
      geName: 'Bruder',
      enName: 'Brother',
      sound: 'brother.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_daughter.png',
      geName: 'Schwester',
      enName: 'Sister',
      sound: 'sister.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_grandfather.png',
      geName: 'Großvater',
      enName: 'Grand Father',
      sound: 'grand father.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_grandmother.png',
      geName: 'Großmutter',
      enName: 'Grand Mother',
      sound: 'grand mother.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_older_brother.png',
      geName: 'Onkel',
      enName: 'Uncle',
      sound: 'uncle.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_older_sister.png',
      geName: 'Tante',
      enName: 'Aunt',
      sound: 'Aunt.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_son.png',
      geName: 'Sohn',
      enName: 'Son',
      sound: 'son.mp3',
    ),
    Items(
      image: 'assets/images/family_members/family_younger_sister.png',
      geName: 'Tochter',
      enName: 'Daughter',
      sound: 'daughter.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade400,
        title: Text('Family Member'),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context, index) {
          return ListItems(
            number: familyMember[index],
            color: Colors.orange.shade400,
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
