import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/post_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Setting extends StatelessWidget {
   const Setting({Key? key, WebSocketChannel? channel, List? listPost}) : super(key: key);

  //final User user;
  //const PostPage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
        backgroundColor: Color.fromRGBO(49, 39, 79, 1),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text(
              'Setting',
              style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              Container(
                child: Text("Explore this application without any worries. "),
              )
           ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
          // ignore: prefer_typing_uninitialized_variables
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()),
          );
        },
        child: const Icon(Icons.home),
        backgroundColor: const Color.fromRGBO(49, 39, 79, 1), 
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
