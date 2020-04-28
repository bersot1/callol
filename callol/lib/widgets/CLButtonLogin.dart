import 'package:flutter/material.dart';

class CLButtonLogin extends StatelessWidget {
  String labelButton;
  Icon icon;
  Function func;

  CLButtonLogin({
    @required this.labelButton,
    @required this.icon,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            SizedBox(
              width: 50,
            ),
            Text(labelButton)
          ],
        ),
        onPressed: func,
      ),
    );
  }
}
