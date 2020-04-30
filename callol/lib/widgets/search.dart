import 'package:flutter/material.dart';

class LoddsSearchBar extends StatefulWidget {

  final context;
  final controller;

  LoddsSearchBar({
    @required this.context,
    @required this.controller,
  });

  @override
  _LoddsSearchBarState createState() => _LoddsSearchBarState();
}

class _LoddsSearchBarState extends State<LoddsSearchBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(0, 10),
            blurRadius: 30
          )
        ]
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left:10, right:12,),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              border:InputBorder.none,
              hintText:"Buscar",
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(fontSize: 20)
            )
          )
        )
      )
    );
  }
}
