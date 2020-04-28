import 'package:callol/models/league.model.dart';
import 'package:flutter/material.dart';

class CardLeagueWidget extends StatelessWidget {
  final LeagueModel league;

  CardLeagueWidget({@required this.league});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            image: DecorationImage(
              image: NetworkImage(league.image),
            ),
          ),
        ),
        Text(
          league.name,
          style: TextStyle(color: Colors.black),
        ),
        FlatButton(
          child: Icon(
            Icons.forward,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
