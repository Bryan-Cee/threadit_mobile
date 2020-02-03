import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostCard({ this.title, this.time, this.likes, this.comments, this.post });

  final title;
  final time;
  final likes;
  final comments;
  final post;

  @override
  Widget build(BuildContext context) {
    double iconSize = 20.0;

    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(left: 0.0),
                materialTapTargetSize: MaterialTapTargetSize.padded,
                onPressed: () => print("Profile"),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          maxRadius: 12.0,
                          backgroundImage: NetworkImage(
                              "https://media-exp1.licdn.com/dms/image/C5603AQFGTeLLg8X7Mw/profile-displayphoto-shrink_200_200/0?e=1586390400&v=beta&t=8o76VcpW0gghJ2sKyZJfMCfMwMUyTjIvbp0Avc_D1D8")),
                    ),
                    Text(
                      "$title . ${time}h",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 20.0),
              child: Text(
                "$post",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () => print("Like"),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.thumb_up,
                          size: iconSize,
                        ),
                      ),
                      Text(
                        "$likes",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () => print("Comment"),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.insert_comment,
                          size: iconSize,
                        ),
                      ),
                      Text(
                        "$comments",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () => print("Share"),
                  child: Icon(
                    Icons.share,
                    size: iconSize,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
