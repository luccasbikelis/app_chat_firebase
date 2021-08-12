import 'package:app_chat_firebase/view/chat/chat_page.dart';
import 'package:app_chat_firebase/view/home.dart';
import 'package:app_chat_firebase/view/login.dart';
import 'package:app_chat_firebase/view/page/home_page.dart';
import 'package:app_chat_firebase/view/register.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'controller/google_sign_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final String title = 'Google SignIn';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: MyApp.title,
        theme: ThemeData(primarySwatch: Colors.pink),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
        home: HomePage(),
      );
}
