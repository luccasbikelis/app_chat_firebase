import 'package:app_chat_firebase/view/chat/widget_button.dart';
import 'package:app_chat_firebase/view/chat/widget_chat.dart';
import 'package:app_chat_firebase/view/chat/widget_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

// falta: mostrar pic,name e status de forma dinamica com database

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFA901F7),
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        actions: <Widget>[
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(10),
            child: Image.asset('assets/logo_lovepeople.png'),
          ),
          Container(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(1),
                    child: Text('Juan Pablo Oviedo')),
                Container(margin: EdgeInsets.all(10), child: Text('Offline')),
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        ),
                        content: Text(
                          'Saiu do Chat!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )));
                    _voltarParaHome(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: LayoutBuilder(builder: (_, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: constraints.maxWidth / 1.1,
                          height: constraints.maxHeight / 1.0,
                          child: WidgetChat(),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              Container(
                height: 55,
                width: 327,
                child: WidgetMessage(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 150,
                child: WidgetButton(),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _voltarParaHome(context) {
    Navigator.of(context).popAndPushNamed('home');
  }
}
