import 'dart:ui';
import 'package:flutter/material.dart';

class NovaSala extends StatefulWidget {
  @override
  _NovaSalaState createState() => _NovaSalaState();
}

class _NovaSalaState extends State<NovaSala> {
  // final database = FirebaseDatabase.instance.reference();
  final _formKey = GlobalKey<FormState>();
  final _nomeDaSala = TextEditingController();

  // void nomeDaSala() async {
  //   final _nomeDaSala = database.child('Nome Da Sala');
  //   setState(() {
  //     _nomeDaSala;
  //   });
  //   await _nomeDaSala.push().set({'valor': _nomeDaSala}).catchError(
  //     (error) => print(error),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      appBar: AppBar(
        title: Text(
          'Criar sala',
          style: TextStyle(fontStyle: FontStyle.normal, color: Colors.black),
        ),
        backgroundColor: Colors.purple[50],
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.all(20),
            width: double.maxFinite,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nomeDaSala,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo obrigatório';
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18, color: Colors.black),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: ('Nome da sala'),
                      filled: true,
                      fillColor: Colors.purple[50],
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Image.asset('assets/logo.png'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(40),
                    child: Text(
                      'Lovepeople',
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[50],
                ),
                margin: EdgeInsets.all(20),
                width: 260,
                height: 50,
                child: Center(
                  child: Text(
                    'Criar',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
