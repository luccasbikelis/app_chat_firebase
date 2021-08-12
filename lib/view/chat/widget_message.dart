
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// falta: enviar mensagem digitada ao usuario com database

class WidgetMessage extends StatefulWidget {
  const WidgetMessage({Key? key}) : super(key: key);

  @override
  _WidgetMessageState createState() => _WidgetMessageState();
}

class _WidgetMessageState extends State<WidgetMessage> {
  final _formKey = GlobalKey<FormState>();
  final _digitaMensagem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white70,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                ),
              ),
              suffixIcon: Icon(
                Icons.message_outlined,
                color: Colors.black54,
              ),
              hintText: 'Digita e envia uma mensagem...',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: 17,
              ),
            ),
            autofocus: true,
            cursorColor: Colors.black,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            controller: _digitaMensagem,
            validator: (value) {
              if (value!.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                    ),
                    content: Text(
                      'Não digitou nada!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )));
              }
              return null;
            },
            onSaved: (value) {
              _digitaMensagem.text = value!;
            }),
      ),
    );
  }
}
