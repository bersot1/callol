import 'package:callol/theme/styles.dart';
import 'package:flutter/material.dart';

class LoddsButton extends StatelessWidget {
  
  String labelButton;
  Function function;
  final icon;

  LoddsButton({
    @required this.labelButton,
    @required this.function,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onHighlightChanged: (press) {},
      hoverColor: primaryColor,
      hoverElevation: 3,
      highlightColor: primaryColor.withOpacity(0.5),
      highlightElevation: 3,
      elevation: 3,
      color: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      onPressed: function,
      child: Container(
        width: MediaQuery.of(context).size.width - 90,
        height: 50.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(alignment: Alignment.centerLeft, child: icon),
            Text(labelButton, textAlign: TextAlign.right, style: TextStyle(color: Colors.white))
          ],
        )
      ),
    );
    
    // Expanded(
    //   child: Container(
    //     alignment: Alignment.center,
    //     height: 56,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(40),
    //       color: primaryColor,
    //     ),
    //     child: FlatButton(
    //       onPressed: function,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           icon,
    //           Text("Logar com facebook", style: TextStyle(
    //             fontSize: 18, 
    //             color: Colors.white, 
    //             fontWeight: FontWeight.bold
    //           ))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
