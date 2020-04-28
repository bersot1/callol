import 'package:callol/widgets/CLButtonLogin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // siginWithGoogle() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: CLButtonLogin(
              labelButton: "Entrar com Googlse",
              icon: Icon(Icons.signal_cellular_null),
              func: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: CLButtonLogin(
              labelButton: "Entrar com Facebook",
              icon: Icon(Icons.location_searching),
              func: () {},
            ),
          ),
        ],
      ),
    );
  }
}
