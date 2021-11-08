import 'package:flutter/material.dart';
import 'package:project/post_page.dart';
//import 'package:dart:ui';
import 'package:project/user/user_data.dart';
//import 'package:project/bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final channel = WebSocketChannel.connect(
    Uri.parse('ws://besquare-demo.herokuapp.com'),
  );

  final _textBloc = TextBloc();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: const Text('User page'),
      //   ),
        body: SafeArea(
          child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -40,
                          height: 300,
                            width: width,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/bg.png'),
                                fit: BoxFit.fill)
                            ),
                          ),
                        ),
                          Positioned(
                            height: 300,
                            width: width + 20,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/background-2.png'),
                                fit: BoxFit.fill)
                            ),
                          ),),
                      ],
                    ),
                  ), 
                  StreamBuilder(
                      stream: _textBloc.textStream,
                      builder: (context, AsyncSnapshot<String> snapshot) {
                        return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Container(
                               padding: EdgeInsets.all(20),
                               child: TextField(
                                 onChanged: (String text) => _textBloc.updateText(text),
                                 decoration: const InputDecoration(
                                   border: OutlineInputBorder(),
                                   labelText: 'Enter your username',
                    ),
                      ),)
                          ],
                        ),);
                      }),
                  // creating the signup button
                   const SizedBox(height: 20),
                  // ignore: avoid_unnecessary_containers
                  Container(
                        height:60,
                        padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(49, 39, 79, 1),
                        ), 
                        child: MaterialButton(
                          child: const Text('Sign in to next page'),
                          textColor: Colors.white,
                        // When the user presses the button, show an alert dialog containing
                        // the text that the user has entered into the text field.
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PostPage(channel: channel,)),
                          );
                        },
                        //tooltip: 'Enter username',
                        //child: const Icon(Icons.text_fields),
                      ),
                      )
                ],
              )
         ),
    );
  }
}
