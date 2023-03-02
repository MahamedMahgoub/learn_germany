import 'package:flutter/foundation.dart';

class Items {
  final String? image;
  final String geName;
  final String enName;
  final String sound;
  const Items({
    required this.sound,
    @required this.image,
    required this.geName,
    required this.enName,
  });
}
