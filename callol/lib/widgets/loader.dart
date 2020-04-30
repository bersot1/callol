import 'package:flutter/material.dart';

class LoddsLoader extends StatelessWidget {
  
  final object;
  final Function callback;
  final Function zeroLength;

  LoddsLoader({
    @required this.object,
    @required this.callback,
    this.zeroLength,
  });

  @override
  Widget build(BuildContext context) {
    
    if (object == null) 
      return Center(child: CircularProgressIndicator());

    if (object.length == 0) 
      return zeroLength();

    return callback();
  }
}
