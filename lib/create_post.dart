import 'package:flutter/material.dart';
import 'package:project/post_page.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:project/post_page.dart';

class CreatePost extends StatelessWidget {
   const CreatePost({Key? key, WebSocketChannel? channel, List? listPost}) : super(key: key);

  //final User user;
  //const PostPage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Page'),
        backgroundColor: Color.fromRGBO(49, 39, 79, 1),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text(
              'Create Post',
              style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              Container(
                      height: 90,
                      padding: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add title',
                    ),
                      ),),
                      Container(
                      height: 90,
                      padding: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add description',
                    ),
                      ),),
                      Container(
                      height: 90,
                      padding: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add image URL',
                    ),
                      ),),
                      Container(
            height: 100,
            child: Row(
              children : <Widget>[
              Expanded(
                  child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xffd4d4d4),
                          child: Text("Cancel", style: TextStyle(color: Colors.white),)
                        )
                      ),
              Expanded(
                  child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xff0000ff),
                          child: Text("Post"),
                        )
                      ),
              ])
          )
                        ],
          ),
        ),
      ),
    );
  }
}
