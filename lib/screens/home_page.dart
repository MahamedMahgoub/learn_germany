import 'package:flutter/material.dart';
import 'package:learn_germany/components/category_item.dart';
import 'package:learn_germany/screens/phrases_page.dart';

import 'colors.dart';
import 'family_member_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        title: Text(
          'Learn Germany',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        leading: Image(image: AssetImage('assets/images/germany.png')),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            'assets/images/germany.png',
            height: 100,
            width: double.infinity,
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Colors.green[400],
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
            text: 'Family Member',
            color: Colors.amber[400],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMemberPage();
                  },
                ),
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
            text: 'Colors',
            color: Colors.deepOrangeAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Colorspage();
                  },
                ),
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
            text: 'phrases',
            color: Colors.lightBlueAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
          Spacer(
            flex: 8,
          ),
        ],
      ),
    );
  }
}
