import 'package:flutter/material.dart';
import 'package:threadit_mobile/post.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RawMaterialButton(
              onPressed: () => print("Going home"),
              child: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Color(0xFFE4A445),
                foregroundColor: Colors.white,
              ),
            ),
          ),
          title: Text("Threadit"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            Column(
              children: List<PostCard>.generate(3, (int index) => 
              PostCard(
                comments: (23 * index / 2),
                likes: (4 * index / 2),
                post: "A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.",
                time: index + 1,
                title: "Channel/Name",
                )),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF2699FB),
          unselectedItemColor: Colors.blueGrey,
          currentIndex: 2,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alternate_email),
              title: Text('Trends'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              title: Text('Post'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              title: Text('Notifications'),
            ),
          ],
        ),
      ),
    ));
