import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: 16,
              ),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildSearch(),
            Container(
              margin: EdgeInsets.all(16),
              height: 24,
              width: 80,
              child: Text(
                "Recents",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 102,
                  width: 439,
                  decoration: BoxDecoration(
                    color: Color(0xFFA901F7),
                  ),
                  padding: EdgeInsets.only(
                    top: 211,
                    left: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Container(
                    height: 532,
                    width: 382,
                    padding: EdgeInsets.only(top: 351),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(6),
                        right: Radius.circular(6),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          child: Icon(
                            Icons.home,
                            size: 35,
                            color: Colors.grey,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.message,
                            color: Colors.pink,
                            size: 30.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.call,
                            color: Colors.green,
                            size: 30.0,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                          onTap: () {},
                        ),
                      ],
                    )),
              ),
            ),
          ],
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
