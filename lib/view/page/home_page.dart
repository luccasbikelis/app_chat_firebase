import 'package:app_chat_firebase/controller/google_sign_in.dart';
import 'package:app_chat_firebase/view/home.dart';
import 'package:app_chat_firebase/view/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return Home();
              } else {
                return Login();
              }
            },
          ),
        ),
      );

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );
}
