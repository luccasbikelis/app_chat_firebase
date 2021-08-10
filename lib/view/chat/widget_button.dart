
import 'package:app_chat_firebase/view/chat/widget_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// falta: access value do message para validar e botao enviar mensagem / enviar mensagem digitada ao usuario com database

class WidgetButton extends StatelessWidget {
  const WidgetButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          'Enviar',
          style: TextStyle(            
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color(0xDDFFFFFF)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
        ),
        onPressed: () {
          _enviar(context); 
        },
      ),
    );
  }

  void _enviar(BuildContext context) {
    // if (_formKey.currentState!.validate()) {
    //   _formKey.currentState!.save();
    // }
    // if (_digitaMensagem.text != '' &&) {
    //   print("FORMULARIO OK!);
  }
}