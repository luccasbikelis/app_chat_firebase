
// import 'package:app_chat_firebase/view/home.dart';
// import 'package:app_chat_firebase/view/login.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:app_chat_firebase/view/register.dart';
// import 'package:firebase_analytics/observer.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final FirebaseApp app = await Firebase.initializeApp();
//   runApp(MyApp());
// }


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   FirebaseAnalytics analytics = FirebaseAnalytics();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       navigatorObservers: [
//         FirebaseAnalyticsObserver(analytics: analytics),
//       ],
//       home: Login(),
//     );
//   }
// }

// abaixo, somente para uso de teste da tela chat, depois comentar ou eliminar //

import 'package:app_chat_firebase/view/chat/chat_page.dart';
import 'package:app_chat_firebase/view/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "chatPage",
      routes: {
          "chatPage": (context) => ChatPage(),
          "home": (context) => Home(),
      },
      title: '', 
      home: ChatPage(),
      debugShowCheckedModeBanner: false,      
    );
  }
}