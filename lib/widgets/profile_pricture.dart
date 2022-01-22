import 'package:flutter/material.dart';

class ProfilePictures extends StatelessWidget {
  const ProfilePictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.amber]),
            borderRadius: BorderRadius.circular(100 / 2)),
      ),
      Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://picsum.photos/200/300')),
            color: Colors.blue,
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(90)),
      ),
    ]);
  }
}
