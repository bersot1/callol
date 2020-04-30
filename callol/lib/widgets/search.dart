import 'package:flutter/material.dart';

class LoddsSearchBar extends StatefulWidget {

  final String text;
  final context;
  List itensForSearch;

  LoddsSearchBar({
    @required this.text,
    @required this.context,
    @required this.itensForSearch
  });

  @override
  _LoddsSearchBarState createState() => _LoddsSearchBarState();
}

class _LoddsSearchBarState extends State<LoddsSearchBar> {

  List itens = [];
  List filteredItens = [];
  bool isSearching = false;

  @override
  void initState() {
    setState(() {
      itens = filteredItens = widget.itensForSearch;
    });
    super.initState();
  } 

  void _filterItens(value) {
    setState(() {
      filteredItens = itens.where((country) {
        return country['name'].toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }

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
            onChanged: (value) => _filterItens(value),
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
