
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// falta: mostrar conversas de forma dinamicas com database

class WidgetChat extends StatefulWidget {
  const WidgetChat({ Key? key }) : super(key: key);

  @override
  _WidgetChatState createState() => _WidgetChatState();
}

class _WidgetChatState extends State<WidgetChat> {
  @override
  Widget build(BuildContext context) { 
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ),
      ), 
      child: SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,          
          child: Column(
            children: <Widget>[
             SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Container(
                  child: Text(
                    'Usuario 1 (Teste): bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...',
                    textAlign: TextAlign.left,      
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Container(
                  child: Text(
                    'Usuario 2 (Teste): bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...',
                    textAlign: TextAlign.left,      
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Container(
                  child: Text(
                    'Usuario 1 (Teste): bla, bla...bla, bla...bla, bla...bla, bla...',
                    textAlign: TextAlign.left,      
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Container(
                  child: Text(
                    'Usuario 2 (Teste): bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla, bla...bla...',
                    textAlign: TextAlign.left,      
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}