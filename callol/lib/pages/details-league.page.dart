import 'package:flutter/material.dart';

class DetailsLeaguePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CBLOL"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[Icon(Icons.person)],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.picsum.photos/id/355/100/100.jpg"),
                        )),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
