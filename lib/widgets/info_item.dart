import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  InfoProfile({
    required this.teks,
    required this.angka,
  });
  final String angka;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          angka,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          teks,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
