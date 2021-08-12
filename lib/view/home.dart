import 'package:app_chat_firebase/controller/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Color(0xFFAA00FF),
      body: Stack(children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, bottom: 10),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Name',
                    // 'Name' + user.displayName,
                    style: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 81,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 19, bottom: 10),
                    width: 70,
                    height: 70,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 40,
                        height: 40,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.exit_to_app,
                            size: 35,
                            color: Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.logout();
        },
        child: IconButton(
          icon: const Icon(Icons.add_rounded),
          color: Colors.blue[900],
          iconSize: 40,
          onPressed: () {},
        ),
      ),
    );
  }
}

_buildSearch() {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search someone',
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        suffixIcon: Icon(
          Icons.search,
          color: Color(0xFF3101B9),
        ),
        labelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF3101B9),
            fontFamily: "Tahoma"),
      ),
    ),
  );
}
