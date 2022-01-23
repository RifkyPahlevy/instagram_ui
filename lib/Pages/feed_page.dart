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
          'VGRAMAI',
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: 200,
                    height: 350,
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
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://picsum.photos/id/${index + 240}/200/300')),
                                    borderRadius:
                                        BorderRadius.circular(50 / 2)),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Username',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert_rounded,
                                        color: Colors.black,
                                      )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.network(
                            'https://picsum.photos/id/${index + 238}/200/300',
                            fit: BoxFit.fitWidth,
                            width: 450,
                            height: 180,
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.houseboat_rounded,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.houseboat_rounded,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.houseboat_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ));
            },
          ))
        ],
      ),
    );
  }
}
