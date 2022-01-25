import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_ui/models/allusers.dart';

class FeedPage extends StatelessWidget {
  List<UsersModel> userAll = [];

  Future getAllUser() async {
    try {
      var respone =
          await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
      List data = (json.decode(respone.body) as Map<String, dynamic>)['data'];

      data.forEach((element) {
        userAll.add(UsersModel.fromJson(element));
        print(userAll);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'VGram',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.messenger_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            return ListView(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: userAll.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.red, Colors.amber])),
                          ),
                          Container(
                            height: 77,
                            width: 77,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(77 / 2),
                                image: DecorationImage(
                                    image: NetworkImage(userAll[index].avatar)),
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.white, width: 3)),
                          )
                        ])
                      ],
                    );
                  },
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  itemCount: userAll.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.grey[300],
                                    backgroundImage:
                                        NetworkImage(userAll[index].avatar),
                                  ),
                                  title: Text(userAll[index].firstName),
                                  subtitle: Text(userAll[index].email),
                                  trailing: Icon(Icons.more_vert_rounded),
                                ),
                                Image.network(
                                  'https://picsum.photos/id/${index + 238}/200/300',
                                  height: 300,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite_border)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.chat)),
                                      SizedBox(
                                        width: 300,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.bookmark_border)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            height: 430.0,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )),
            ]);
          },
        ));
  }
}
