import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.movie_creation_sharp,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.amber, Colors.red],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(80 / 2)),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/${index + 237}/200/300')),
                        color: Colors.blue,
                        border: Border.all(width: 5, color: Colors.white),
                        borderRadius: BorderRadius.circular(70 / 2)),
                  ),
                ]);
              },
            ),
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(50 / 2)),
                            ),
                            Expanded(
                                child: Row(
                              children: [Text('Usernmae')],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
