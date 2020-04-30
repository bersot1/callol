
import 'package:callol/theme/styles.dart';
import 'package:callol/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'listLeague.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  siginWithFacebook() {
    Navigator.of(context).push(
      // context,
      MaterialPageRoute(builder: (context) => ListLeaguesPage() ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bem vindo ao ",
                style: TextStyle(fontSize: 26.0, color: accentColor, fontWeight: FontWeight.bold),
              ),
              Text(
                "Lodds",
                style: TextStyle(fontSize: 26.0, color: primaryColor, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            "Aproveite suas apostas",
            style: TextStyle(color: primaryColor.withOpacity(0.5), fontSize: 18.0),
          ),
          SizedBox(height: 30.0),
          Image(
            image: AssetImage("assets/images/profile-picture.png"),
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width - 45,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white, 
              boxShadow: [
              BoxShadow(
                  color: Color(0xFF9DA3B4).withOpacity(0.2),
                  blurRadius: 65.0,
                  offset: Offset(0.0, 15.0))
            ]),
            child: Center(
              child: LoddsButton(
                labelButton: "Entrar com Facebook", 
                icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,), 
                function: () => siginWithFacebook() 
              ),
            ),
          ),
        ],
      ),
    );
  }
}