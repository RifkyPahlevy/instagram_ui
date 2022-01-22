import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.teks,
  }) : super(key: key);
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(80 / 2)),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://picsum.photos/200/300')),
                    border: Border.all(width: 5, color: Colors.white),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(77 / 2)),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(teks)
        ],
      ),
    );
  }
}
