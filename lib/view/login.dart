import 'package:app_chat_firebase/controller/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/logo_lovepeople.png'),
                    ),
                    Text(
                      'LovePeople',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Montserrat-SemiBold"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    )),
                child: Column(
                  children: [
                    Text(
                      'LoveChat',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        height: 2,
                        color: Color(0xFF3101B9),
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.login();
                        },
                        child: Text(
                          "Login com Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Montserrat-SemiBold"),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF3101B9)),
                            shape: MaterialStateProperty.all(StadiumBorder(
                                side: BorderSide(
                                    color: Color(0xFF3101B9), width: 1)))),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/coruja_cadastro.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
