import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/feed_page.dart';
import '../widgets/profile_pricture.dart';
import '../widgets/info_item.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late int index = 0;

  List<Widget> pages = [ProfilePage(), FeedPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Rifky Pahlevy',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          Row(
            children: [
              ProfilePictures(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoProfile(teks: 'Post', angka: '200'),
                    InfoProfile(teks: 'Following', angka: '2000'),
                    InfoProfile(teks: 'Followers', angka: '2000'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Rifky Pahlevy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.ldksdksdlkskdfefecekkec',
                      children: [
                    TextSpan(text: 'njdskjnksdnjsdsdjkjkksjnfjnfnw '),
                    TextSpan(
                        text: '#KikiBelajar',
                        style: TextStyle(color: Colors.blue))
                  ]))),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Links Goes Here',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ))),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryItem(teks: 'Cerita -1'),
                    StoryItem(teks: 'Cerita -2'),
                    StoryItem(teks: 'Cerita -3'),
                    StoryItem(teks: 'Cerita -4'),
                    StoryItem(teks: 'Cerita -5'),
                    StoryItem(teks: 'Cerita -6'),
                    StoryItem(teks: 'Cerita -7'),
                    StoryItem(teks: 'Cerita -8'),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                TabItem(
                  ikon: Icons.grid_on_outlined,
                  active: true,
                ),
                TabItem(
                  ikon: Icons.person_pin_outlined,
                  active: false,
                )
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true, //ini untuk menangani scroll di dalam scroll
            physics: NeverScrollableScrollPhysics(), // ini juga
            itemCount: 200,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
            itemBuilder: (context, index) => Image.network(
              'https://picsum.photos/id/${index + 237}/200/300',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
